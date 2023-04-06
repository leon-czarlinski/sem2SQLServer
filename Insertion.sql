-- INSERT INTO PUBLISHER TABLE

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Penguin Random House', 'John Smith', '123 Main St', 'New York', 'NY', '10001', '555-1234');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('HarperCollins Publishers', 'Jane Doe', '456 Oak St', 'Chicago', 'IL', '60601', '555-5678');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Hachette Book Group', 'Bill Johnson', '789 Elm St', 'Los Angeles', 'CA', '90001', '555-9012');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Simon & Schuster', 'Susan Lee', '321 Pine St', 'San Francisco', 'CA', '94101', '555-3456');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Macmillan Publishers', 'David Lee', '654 Maple St', 'Seattle', 'WA', '98101', '555-7890');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Scholastic Corporation', 'Amy Chen', '987 Cedar St', 'Boston', 'MA', '02101', '555-2345');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Houghton Mifflin Harcourt', 'Chris Lee', '246 Walnut St', 'Denver', 'CO', '80201', '555-6789');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Random House', 'Jennifer Kim', '753 Oak St', 'Atlanta', 'GA', '30301', '555-0123');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Bloomsbury Publishing', 'Mark Davis', '369 Elm St', 'Houston', 'TX', '77001', '555-4567');

INSERT INTO [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])
VALUES ('Wiley', 'Sarah Brown', '951 Pine St', 'Miami', 'FL', '33101', '555-8901');


-- INSERTING TO THE BOOKS TABLE

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780802129965', 1, 1, 'The Overstory', 'A novel about trees and people', '2018-04-03');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780735211286', 2, 2, 'The Immortalists', 'A novel about four siblings and their fate', '2018-01-09');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780143109082', 3, 3, 'A Little Life', 'A novel about the lives of four friends', '2015-03-10');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780385543781', 4, 1, 'Circe', 'A novel about the Greek goddess Circe', '2018-04-10');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780525434194', 5, 4, 'The Power', 'A novel about a world where women have the power', '2016-10-27');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780525563542', 6, 2, 'Normal People', 'A novel about the relationship between two people', '2018-04-16');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780316463998', 7, 3, 'Red Rising', 'A science fiction novel about a future society', '2014-01-28');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780593299597', 8, 4, 'The Final Girl Support Group', 'A thriller about a support group for final girls', '2021-07-13');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780062896433', 9, 1, 'The Invisible Life of Addie LaRue', 'A novel about a woman who is cursed to be forgotten', '2020-10-06');

INSERT INTO [dbo].[Book] ([ISBN], [PubID], [CatID], [BookTitle], [BookDescription], [PubDate]) 
VALUES ('9780143108252', 10, 2, 'A Brief History of Seven Killings', 'A novel about Jamaica in the 1970s', '2014-10-02');



-- INSERT INTO CATEGORIES TABLE

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Fiction', 'A category for works of the imagination', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Non-Fiction', 'A category for works based on facts and real events', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Mystery', 'A category for works focused on solving a crime or puzzle', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Science Fiction', 'A category for works based on scientific or futuristic concepts', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Romance', 'A category for works centered around romantic relationships', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Horror', 'A category for works focused on creating fear and suspense', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Self-Help', 'A category for works focused on personal growth and improvement', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('History', 'A category for works focused on past events and people', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Biography', 'A category for works focused on the life of an individual', 'Genre');

INSERT INTO [dbo].[Categories] ([CategoryName], [CategoryDescription], [CategoryType])
VALUES ('Business', 'A category for works focused on business and economics', 'Genre');



-- INSERT INTO LIBRARY BRANCH TABLE


INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Central Library', '101 Main Street', 'Anytown', 'CA', '12345', 'West');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('North Branch', '555 1st Avenue', 'Smallville', 'NY', '67890', 'Northeast');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('South Branch', '123 2nd Street', 'Big City', 'TX', '45678', 'Southwest');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('West Branch', '456 3rd Avenue', 'Suburbia', 'IL', '78901', 'Midwest');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('East Branch', '789 4th Street', 'Metropolis', 'GA', '23456', 'Southeast');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Downtown Branch', '321 5th Avenue', 'Smalltown', 'OH', '56789', 'Great Lakes');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Northwest Branch', '999 6th Street', 'Cityville', 'WA', '34567', 'Pacific Northwest');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Northeast Branch', '888 7th Avenue', 'Village', 'MA', '45678', 'New England');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Southwest Branch', '777 8th Street', 'Hometown', 'AZ', '23456', 'Mountain');

INSERT INTO [dbo].[LibraryBranch] ([BranchName], [Address], [City], [State], [ZIP], [Region]) 
VALUES ('Southeast Branch', '666 9th Avenue', 'Hamlet', 'NC', '34567', 'Southeast');


-- INSERT INTO BORROWER TABLE

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Mike', 'John', '123 Main St', 'Anytown', 'CA', '12345', 'West', '555-1234');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Jones', 'Sara', '456 Oak Ave', 'Smallville', 'NY', '67890', 'Northeast', '555-5678');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Davis', 'Michael', '789 Maple St', 'Big City', 'TX', '45678', 'Southwest', '555-9876');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Lee', 'Jin', '321 6th St', 'Suburbia', 'IL', '78901', 'Midwest', '555-2345');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Garcia', 'Maria', '654 Elm St', 'Metropolis', 'GA', '23456', 'Southeast', '555-6789');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Chen', 'Wei', '987 Cedar Ave', 'Smalltown', 'OH', '56789', 'Great Lakes', '555-3456');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Kim', 'Soo-Jin', '159 Pine St', 'Cityville', 'WA', '34567', 'Pacific Northwest', '555-7890');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Wang', 'Ling', '753 Oak Ln', 'Village', 'MA', '45678', 'New England', '555-2341');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Gomez', 'Carlos', '951 Maple Ave', 'Hometown', 'AZ', '23456', 'Mountain', '555-8765');

INSERT INTO [dbo].[Borrower] ([BorrowerLName], [BorrowerFName], [Address], [City], [State], [ZIP], [Region], [Phone])
VALUES ('Davis', 'Emma', '456 Park Ave', 'Denver', 'CO', '80205', 'West', '303-555-6789');



-- INSERT INTO BOOK LOAN TABLE

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780802129965', 1, 111, '2023-04-10', '2023-05-08', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780735211286', 2, 101, '2023-04-10', '2023-04-24', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780143109082', 3, 202, '2023-04-10', '2023-05-08', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780385543781', 4, 303, '2023-04-10', '2023-04-24', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780525434194', 5, 404, '2023-04-10', '2023-05-08', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780525563542', 6, 505, '2023-04-10', '2023-04-24', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780316463998', 7, 606, '2023-04-10', '2023-05-08', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780593299597', 8, 707, '2023-04-10', '2023-04-24', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780062896433', 9, 808, '2023-04-10', '2023-05-08', 'B');

INSERT INTO [dbo].[BookLoans] ([ISBN], [BranchID], [CardNo], [BorrowedDate], [DueDate], [Status])
VALUES ('9780143108252', 10, 909, '2023-04-10', '2023-04-24', 'B');


-- INSERT INTO FINES TABLE

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (1, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (2, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (3, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (4, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (5, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (6, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (7, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (8, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (9, 0.00);

INSERT INTO [dbo].[Fines] ([LoansID], [FineAmount])
VALUES (10, 0.00);


-- INSERT INTO BOOK COPIES TABLE

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780802129965', 1, 5, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780735211286', 2, 3, 'Checked Out');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780143109082', 3, 2, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780385543781', 4, 6, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780525434194', 5, 1, 'Checked Out');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780525563542', 6, 4, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780316463998', 7, 7, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780593299597', 8, 2, 'Checked Out');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780062896433', 9, 3, 'Available');

INSERT INTO [dbo].[BookCopies] ([ISBN], [BranchID], [NumOfCopies], [Status])
VALUES ('9780143108252', 10, 1, 'Available');


-- INSERT INTO BOOK AUTHORS TABLE


INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (1, '9780802129965');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (2, '9780735211286');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (3, '9780143109082');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (4, '9780385543781');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (5, '9780525434194');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (6, '9780525563542');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (7, '9780316463998');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (8, '9780593299597');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (9, '9780062896433');
INSERT INTO [dbo].[BookAuthors] ([AuthorID], [ISBN]) VALUES (10, '9780143108252');

-- INSERT INTO AUTHORS TABLE

INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Smith', 'John');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Lee', 'Jessica');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Garcia', 'Manuel');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Nguyen', 'Thi');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Miller', 'David');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Wang', 'Hui');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Gupta', 'Raj');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Kim', 'Yun');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Patel', 'Priya');
INSERT INTO [dbo].[Authors] ([AuthorLName], [AuthorFName]) VALUES ('Chen', 'Wei');

