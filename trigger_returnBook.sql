USE LibraryManagementSystem
GO

	CREATE OR ALTER TRIGGER Trigger_BookLoanReturn
	ON BookLoans
	AFTER UPDATE
	AS
	BEGIN
		IF UPDATE(ReturnedDate) 
		BEGIN
			IF EXISTS (SELECT 1 FROM inserted 
				WHERE inserted.ReturnedDate IS NOT NULL AND inserted.Status = 'R')
			BEGIN
				RAISERROR('Book is already returned!!',16,1);
				ROLLBACK TRANSACTION;
				RETURN;
			END

			IF EXISTS (SELECT 1 FROM inserted WHERE ReturnedDate < BorrowedDate)
			BEGIN
				RAISERROR('Returned date cannot be less than borrowed date!!',16,1);
				ROLLBACK TRANSACTION;
				RETURN;
			END

			IF EXISTS (SELECT 1 FROM inserted WHERE ReturnedDate > DueDate)
			BEGIN
				UPDATE BookLoans
				SET FineAmmount = DATEDIFF(day, bl.DueDate, bl.ReturnedDate)*1, FineStatus = 'Unpaid'
				FROM BookLoans bl INNER JOIN inserted
				ON bl.LoanID = inserted.LoanID
				WHERE inserted.ReturnedDate IS NOT NULL;
			END
			ELSE
			BEGIN
				UPDATE BookLoans
				SET FineAmmount = 0, FineStatus = 'Paid'
				FROM BookLoans INNER JOIN inserted
				ON BookLoans.LoanID = inserted.LoanID
				WHERE inserted.ReturnedDate IS NOT NULL;
			END

			UPDATE BookCopies
			SET NumOfCopies = NumOfCopies + 1,
			Status = 'Available'
			FROM BookCopies JOIN inserted
			ON BookCopies.BranchID = inserted.BranchID
			AND BookCopies.ISBN = inserted.ISBN
			WHERE inserted.Status = 'B' AND inserted.ReturnedDate IS NOT NULL;
		
			UPDATE BookLoans
			SET Status = 'R'
			FROM BookLoans INNER JOIN inserted
			ON BookLoans.LoanID = inserted.LoanID
			WHERE inserted.ReturnedDate IS NOT NULL;
		END
	END


	GO

UPDATE BookLoans
SET ReturnedDate = GETDATE()
WHERE loanID = 28


SELECT *
FROM BookCopies

SELECT *
FROM BookLoans

SELECT loanID, ISBN, BORROWEDDATE, DUEDATE, ReturnedDate, DATEDIFF(day, DueDate, getDate()) AS DaysOverdue, Status, FineAmmount, FineStatus
FROM BookLoans
ORDER BY LoanID;
