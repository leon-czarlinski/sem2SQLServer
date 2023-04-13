	
	USE LibraryManagementSystem
	GO

	SELECT SUM(FineAmmount)
	FROM BookLoans
	WHERE FineStatus = 'Unpaid';

	SELECT loanID, ISBN, BORROWEDDATE, DUEDATE, ReturnedDate, 
		   DATEDIFF(day, DueDate, getDate()) AS 'DaysOverdue', Status, 
		   FineAmmount, FineStatus
	FROM BookLoans
	WHERE Status = 'B'
	ORDER BY DaysOverdue

	SELECT BranchId, SUM(NumOfCopies)
	FROM BookCopies
	GROUP BY BranchId WITH ROLLUP

	SELECT bl.loanID, bo.BookTitle, 
			CONCAT(a.AuthorFirstName, ' ', a.AuthorLastName) AS 'Author', 
			CONCAT (b.BorrowerFName, ' ', b.BorrowerLName) AS 'UserName'
	FROM BookLoans bl JOIN Borrower b ON bl.CardNo = b.CardNo
					  JOIN Book bo ON bl.ISBN = bo.ISBN
					  JOIN BookAuthor ba ON bo.ISBN = ba.ISBN
					  JOIN Author a ON ba.AuthorID = a.AuthorID
	WHERE Status = 'B'

	SELECT COUNT(*)
	FROM Borrower

	SELECT COUNT (LoanID)
	FROM BookLoans
	WHERE Status = 'B'
	

