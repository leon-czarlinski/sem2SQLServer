CREATE OR ALTER TRIGGER Returnbook
ON BookLoans
AFTER UPDATE
AS
	BEGIN
	IF EXISTS(
		SELECT 1
		FROM inserted where inserted.ReturnedDate IS NOT NULL)
		BEGIN
				UPDATE BookLoans
				SET Status = 'R'
				FROM inserted JOIN BookLoans ON BookLoans.LoanID = inserted.LoanID
				WHERE inserted.ReturnedDate IS NOT NULL
				AND BookLoans.ReturnedDate IS NULL

				UPDATE BookCopies
				SET NumOfCopies = NumOfCopies + 1, Status = 'Available'
				FROM inserted JOIN BookCopies ON BookCopies.ISBN = inserted.ISBN
				AND inserted.BranchID = BookCopies.BranchID
				WHERE inserted.ReturnedDate IS NULL

				DECLARE @CheckLate INT
				DECLARE @DueDate DateTime2
				SELECT @DueDate = DueDate FROM BookLoans WHERE LoanID = inserted.LoanID
				SET @CheckLate = DATEDIFF(day, @DueDate, GETDATE())

				SELECT 1 From BookLoans 

				UPDATE Fine
		END;
		BEGIN
			RAISERROR ('Book already returned', 16, 1)
			ROLLBACK TRANSACTION
			RETURN
		END
	END





-- change status to R
-- change data on BookCopies
-- Calculate fine and populate Fine if there is a fine

UPDATE BookLoans
SET ReturnedDate =  '2023-04-07'
WHERE loanID = 6


SELECT *
FROM BookCopies

	SELECT *
	FROM BookLoans

SELECT *
FROM Fine

SELECT COUNT(isbn)
FROM BookLoans
where isbn = '9780062896433'

9780525434194
9780593299597
9780735211286