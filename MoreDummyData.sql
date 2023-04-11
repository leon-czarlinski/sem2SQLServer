-- INSERTING TO THE BOOK TABLE
INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780062073488', 1, 5, 'The Fault in Our Stars', 'A heart-wrenching love story about two teenagers with cancer', '2012-01-10');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780735211292', 2, 5, 'The Woman in the Window', 'A psychological thriller about a woman who witnesses a crime', '2018-01-02');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780525535329', 3, 9, 'Becoming', 'An intimate memoir by former First Lady Michelle Obama', '2018-11-13');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780440237226', 4, 3, 'The Da Vinci Code', 'A thriller about a symbologist who uncovers a secret society', '2003-04-01');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780062992358', 5, 4, 'Project Hail Mary', 'A science fiction novel about an astronaut who wakes up with no memory', '2021-05-04');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9781982141468', 6, 5, 'The Silent Patient', 'A psychological thriller about a woman who refuses to speak after a traumatic event', '2019-02-05');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780735219175', 7, 1, 'The Last Thing He Told Me', 'A mystery about a woman who receives a note from her husband saying "Protect her."', '2021-05-04');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9781250272066', 8, 5, 'The Midnight Library', 'A novel about a woman who finds herself in a library between life and death', '2020-09-29');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780812993547', 9, 8, 'All the Light We Cannot See', 'A novel about a blind French girl and a German boy during World War II', '2014-05-06');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780525539044', 10, 5, 'The Dutch House', 'A novel about a brother and sister who are exiled from their childhood home', '2019-09-24');

-- INSERT INTO AUTHOR TABLE
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Winstanley', 'Nicola');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Mallory', 'Daniel');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Obama', 'Michelle');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Brown', 'Dan');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Weir', 'Andy');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Michaelides', 'Alex');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Dave', 'Laura');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Haig', 'Matt');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Doerr', 'Anthony');
INSERT INTO [dbo].[Author] ([AuthorLastName], [AuthorFirstName]) VALUES ('Patchet', 'Ann');

-- INSERT INTO BOOK AUTHOR TABLE
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (11, '9780062073488');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (12, '9780735211292');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (13, '9780525535329');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (14, '9780440237226');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (15, '9780062992358');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (16, '9781982141468');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (17, '9780735219175');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (18, '9781250272066');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (19, '9780812993547');
INSERT INTO [dbo].[BookAuthor] ([AuthorID], [ISBN]) VALUES (20, '9780525539044');

-- INSERT INTO BORROWER TABLE
INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Smith', 'Emily', '456 Oak Ave', 'Somewhere', 'NY', '67890', '555-5678');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Brown', 'William', '789 Elm St', 'Nowhere', 'TX', '13579', '555-2468');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Johnson', 'Jessica', '1010 Pine Rd', 'Anywhere', 'FL', '24680', '555-3690');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Garcia', 'David', '1111 Maple St', 'Nowhere', 'CA', '46801', '555-1357');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Jones', 'Ava', '1212 Cedar Ave', 'Anywhere', 'TX', '36901', '555-3579');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Davis', 'Ethan', '1313 Oak St', 'Nowhere', 'CA', '48016', '555-4680');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Martinez', 'Olivia', '1414 Elm Ave', 'Anywhere', 'FL', '35790', '555-7913');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Wilson', 'Noah', '1515 Pine Rd', 'Nowhere', 'TX', '24680', '555-9135');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [BorrowerAddress], [BorrowerCity], [BorrowerState], [BorrowerZIP], [BorrowerPhone]) 
VALUES ('Anderson', 'Sophia', '1616 Maple St', 'Anywhere', 'TX', '24680', '555-9135');

-- INSERT INTO BOOK COPIES TABLE
INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780062073488', 1, 9, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780735211292', 2, 3, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780525535329', 3, 6, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780440237226', 4, 4, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780062992358', 5, 0, 'Checked Out');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9781982141468', 6, 2, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780735219175', 7, 1, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9781250272066', 8, 7, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780812993547', 9, 2, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780525539044', 10, 6, 'Available');

-- INSERT INTO BOOK LOANS TABLE
INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780062073488', 1, [CardNo], '2023-03-02', '2023-03-17', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Emily';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780735211292', 2, [CardNo], '2023-03-03', '2023-03-18', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'William';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780525535329', 3, [CardNo], '2023-03-04', '2023-03-19', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Jessica';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780440237226', 4, [CardNo], '2023-03-05', '2023-03-20', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'David';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9781982141468', 6, [CardNo], '2023-03-06', '2023-03-21', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Ava';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9781982141468', 6, [CardNo], '2023-03-07', '2023-03-22', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Ethan';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780735219175', 7, [CardNo], '2023-03-08', '2023-03-23', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Olivia';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9781250272066', 8, [CardNo], '2023-03-09', '2023-03-24', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Noah';

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780812993547', 9, [CardNo], '2023-03-09', '2023-03-24', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Noah'

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
SELECT '9780525539044', 10, [CardNo], '2023-03-09', '2023-03-24', 'B' FROM [dbo].[Borrower] WHERE [BorrowerFName] = 'Sophia';










