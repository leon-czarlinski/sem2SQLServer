SELECT b.ISBN, b.BookTitle, b.BookDescription, CONCAT(a.AuthorFirstName,' ' , A.AuthorLastName) AS 'Author', c.CatName AS 'Category'
FROM Book b JOIN BookAuthor ba ON b.ISBN = ba.ISBN
			JOIN Author a ON ba.AuthorID = a.AuthorID
			JOIN Category c ON b.CatID = c.CatID

select *
from BookLoans


-- CHECK IF THE NUMBER OF COPIES IS EQUAL TO THE NUMBER OF PEOPLE WITH BOOKS 
select b.ISBN, b.BookTitle,bc.NumOfCopies, bc.Status
from book b JOIN BookCopies bc ON b.ISBN = bC.ISBN
WHERE Status = 'Checked Out'

SELECT bl.LoanID, b.ISBN, bl.BorrowedDate, bl.DueDate, CONCAT(bo.BorrowerFName, ' ', bo.BorrowerLName) AS 'Borrower', bc.NumOfCopies, bc.Status
FROM BookLoans bl JOIN Book b ON bl.ISBN = b.ISBN
				  JOIN Borrower bo ON bl.CardNo = bo.CardNo
				  JOIN BookCopies bc ON b.ISBN = bC.ISBN
			ORDER BY ISBN

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780735211286', 2, [CardNo], '2023-04-01', '2023-04-16', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Carlos';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780735211286', 2, [CardNo], '2023-04-06', '2023-04-21', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Jin';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780593299597', 8, [CardNo], '2023-04-07', '2023-04-22', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Wei';


--updated the number of copies of book to status check
UPDATE BookCopies
SET NumOfCopies = 2
WHERE ISBN = 9780143108252;

--UPDATE BORROWEDDATE AND DUEDATE BASED RULE 15 DAYS
UPDATE BookLoans
SET BORROWEDDATE = '2023-02-28', DUEDATE = '2023-03-15'
WHERE loanID = 1;

UPDATE BookLoans
SET BORROWEDDATE = '2023-03-05', DUEDATE = '2023-03-20'
WHERE loanID = 2;

UPDATE BookLoans
SET BORROWEDDATE = '2023-03-17', DUEDATE = '2023-04-01'
WHERE loanID = 3;

UPDATE BookLoans
SET BORROWEDDATE = '2023-04-06', DUEDATE = '2023-04-21'
WHERE loanID = 4;

UPDATE BookLoans
SET BORROWEDDATE = '2023-03-21', DUEDATE = '2023-04-05'
WHERE loanID = 5;

UPDATE BookLoans
SET BORROWEDDATE = '2023-04-07', DUEDATE = '2023-04-22'
WHERE loanID = 6;

UPDATE BookLoans
SET BORROWEDDATE = '2023-03-27', DUEDATE = '2023-04-11'
WHERE loanID = 7;

UPDATE BookLoans
SET BORROWEDDATE = '2023-03-27', DUEDATE = '2023-04-11'
WHERE loanID = 8;

UPDATE BookLoans
SET BORROWEDDATE = '2023-04-01', DUEDATE = '2023-04-16'
WHERE loanID = 9;

UPDATE BookLoans
SET BORROWEDDATE =  '2023-03-31', DUEDATE = '2023-04-15'
WHERE loanID = 10;

UPDATE BookLoans
SET BORROWEDDATE =  '2023-04-01', DUEDATE = '2023-04-16'
WHERE loanID = 11;

UPDATE BookLoans
SET BORROWEDDATE =  '2023-04-06', DUEDATE = '2023-04-21'
WHERE loanID = 12;

UPDATE BookLoans
SET BORROWEDDATE =  '2023-04-07', DUEDATE = '2023-04-22'
WHERE loanID = 13;

-- CHECK IF THERE IS ANY INCONSISTENCY 
SELECT loanID, BORROWEDDATE, DUEDATE, DATEDIFF(day, DueDate, GETDATE()) AS DaysOverdue
FROM BookLoans
ORDER BY DueDate asc;

select *
from Fine

