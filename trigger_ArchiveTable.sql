	
	CREATE OR ALTER TRIGGER BookLoansDelete
	ON BookLoans
	AFTER DELETE
	AS
		BEGIN
			IF EXISTS(
				SELECT 1
				FROM deleted
				WHERE deleted.Status = 'B')
			BEGIN
				RAISERROR ('Borrowed books can not be deleted', 16, 1)
				ROLLBACK TRANSACTION 
				RETURN
			END
			INSERT INTO ArchiveTable(LoanID, ISBN, BranchID, CardNo, 
						BorrowedDate, DueDate, ReturnedDate,
						FineAmmount, FineStatus)
 			SELECT d.LoanID, d.ISBN, d.BranchID, d.CardNo, 
				  d.BorrowedDate, d.DueDate, GETDATE(), 
				  d.FineAmmount, d.FineStatus
 			FROM deleted d
		END

	DELETE FROM BookLoans
	WHERE LoanID = 26;

	SELECT * FROM  BookLoans;

	SELECT * FROM ArchiveTable



