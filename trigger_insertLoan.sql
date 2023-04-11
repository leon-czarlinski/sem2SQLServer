	
	CREATE OR ALTER TRIGGER Trigger_BookBorrowed
	ON BookLoans
	AFTER INSERT
	AS
	BEGIN
		IF EXISTS (
			SELECT 1 
			FROM BookCopies JOIN inserted
			ON inserted.ISBN = BookCopies.ISBN AND inserted.BranchID = BookCopies.BranchID
			WHERE BookCopies.Status = 'Checked Out' OR BookCopies.NumOfCopies <= 0)
		BEGIN
			RAISERROR('Book is not available to borrow!!',16,1);
			ROLLBACK TRANSACTION;
			RETURN;
		END

		IF NOT EXISTS (
			SELECT 1 
			FROM BookCopies JOIN inserted
			ON inserted.ISBN = BookCopies.ISBN AND inserted.BranchID = BookCopies.BranchID
			WHERE BookCopies.ISBN = inserted.ISBN AND BookCopies.BranchID = inserted.BranchID ) 
		BEGIN
			RAISERROR('Book is not available to in this branch!!',16,1);
			ROLLBACK TRANSACTION;
			RETURN;
		END

		UPDATE BookLoans
		SET DueDate = CASE
			WHEN DueDate IS NULL THEN DATEADD(DAY, 15, BookLoans.BorrowedDate)
			ELSE DueDate
			END
		WHERE LoanID IN (SELECT LoanID FROM inserted)

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
	SELECT '9780525563542', 6, [CardNo], '2023-03-17', '2023-04-01', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Jin';

	INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
	SELECT '9780735211286', 2, [CardNo], '2023-04-10', '2023-05-08', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Maria';

SELECT * FROM  BookLoans;

SELECT * FROM BookCopies ORDER BY BranchID;

INSERT INTO BookCopies (ISBN, BranchID, NumOfCopies, Status) VALUES ('9780525434194', 8, 0, 'Checked Out')

UPDATE BookLoans
SET DueDate = DATEADD(DAY, 15, BorrowedDate)
WHERE LoanID = 14


--9780802129965	1	6	Available
--9780735211286	2	1	Available
--9780143109082	3	3	Available
--9780385543781	4	7	Available
--9780525434194	5	1	Available
--9780525563542	6	4	Available
--9780316463998	7	7	Available
--9780593299597	8	0	Checked Out
--9780525434194	8	0	Checked Out
--9780062896433	9	3	Available
--9780143108252	10	2	Available
