CREATE OR ALTER TRIGGER Trigger_BookBorrowed
ON BookLoans
AFTER INSERT
AS
BEGIN
	IF EXISTS (SELECT 1 FROM BookCopies JOIN inserted
		ON inserted.ISBN = BookCopies.ISBN AND inserted.BranchID = BookCopies.BranchID
		WHERE BookCopies.Status = 'Checked Out' OR BookCopies.NumOfCopies <= 0)
	BEGIN
		RAISERROR('Book is not available to borrow!!',16,1);
		ROLLBACK TRANSACTION;
		RETURN;
	END

	UPDATE BookLoans
	SET DueDate = DATEADD(DAY, 15, BookLoans.BorrowedDate)
	FROM BookLoans JOIN inserted
	ON BookLoans.LoanID = inserted.LoanID
	WHERE inserted.DueDate IS NULL;

	UPDATE BookCopies
	SET NumOfCopies = NumOfCopies - 1,
	Status = CASE
			WHEN NumOfCopies = 1 THEN 'Checked Out'
			ELSE 'Available'
		END
	FROM BookCopies JOIN inserted
	ON inserted.ISBN = BookCopies.ISBN AND inserted.BranchID = BookCopies.BranchID
	WHERE BookCopies.Status != 'Checked Out';
END
GO

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780525434194', 5, [CardNo], '2023-04-10', '2023-05-08', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Maria';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780735211286', 2, [CardNo], '2023-04-10', '2023-05-08', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Maria';

SELECT * FROM  BookLoans;

SELECT * FROM BookCopies;