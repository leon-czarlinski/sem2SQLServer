-- PROCEDURE THAT CHECK IF THE BOOK IS CHECKOUT BEFORE LOAN

-- 1st step: Run the procedure
CREATE PROCEDURE [dbo].[InsertBookLoan]
    @ISBN varchar(15),
    @BranchID int,
    @CardNO int,
    @BorrowedDate datetime2,
    @Status char(1) = 'B'
AS
BEGIN
    -- Check if the book is available for loan
    IF EXISTS (
        SELECT 1
        FROM (
            SELECT *
            FROM BookCopies
            WHERE ISBN = @ISBN
        ) AS bc
        WHERE bc.Status = 'Checked Out'
    )
    BEGIN
        RAISERROR('Book cann not be loaned. It is already checked out', 16, 1)
        RETURN
    END
    
    -- Calculate the due date (15 days after the borrowed date)
    DECLARE @DueDate datetime2 = DATEADD(day, 15, @BorrowedDate)
    
    -- Insert the new row into the BookLoans table
    INSERT INTO BookLoans (ISBN, BranchID, CardNO, BorrowedDate, DueDate, Status)
    SELECT @ISBN, @BranchID, @CardNO, @BorrowedDate, @DueDate, @Status
    
    -- Print a message to indicate that the insert was successful
    PRINT 'Book loan added successfully'
END


-- 2nd step: execute loan that will raise an error
EXEC [dbo].[InsertBookLoan] '9780735211286', 8, 2, '2023-04-07', 'B'

-- 3rd step: execute loan that did not raise an error. 
EXEC [dbo].[InsertBookLoan] '9780802129965', 3, 5, '2023-04-07', 'B'

--Query to check Borrowed books:
SELECT bl.LoanID, b.ISBN, b.BookTitle, bl.BorrowedDate, bl.DueDate, CONCAT(bo.BorrowerFName, ' ', bo.BorrowerLName) AS 'Borrower', bc.NumOfCopies, bc.Status
FROM BookLoans bl JOIN Book b ON bl.ISBN = b.ISBN
				  JOIN Borrower bo ON bl.CardNo = bo.CardNo
				  JOIN BookCopies bc ON b.ISBN = bC.ISBN
			ORDER BY ISBN

--Query to Check how many books are available
SELECT bl.ISBN, b.BookTitle, bc.NumOfCopies 'Units Available', bc.Status
FROM BookLoans bl JOIN BookCopies bc ON bl.ISBN = bc.ISBN
				  JOIN Book b ON bl.ISBN = b.ISBN
GROUP BY bl.ISBN, bc.NumOfCopies, bc.Status, b.BookTitle;


SELECT *
from BookCopies

select *
from Borrower
