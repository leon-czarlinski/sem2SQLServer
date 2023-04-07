USE master
GO

IF DB_ID('LibraryManagementSystem') IS NOT NULL
DROP DATABASE LibraryManagementSystem

CREATE DATABASE LibraryManagementSystem
GO

USE [LibraryManagementSystem]
/****** Object: Table [dbo].[Publisher] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Publisher](
    [PubID] [int] IDENTITY(1,1) NOT NULL,
    [PubName] [varchar](50) NULL,
    [PubContact] [varchar](50) NULL,
    [PubAddress] [varchar](50)  NULL,
    [PubCity] [varchar](50) NULL,
    [PubState] [char](2) NULL,
    [PubZIP] [varchar](20) NULL,
    [PubPhone] [varchar](50) NULL,
    CONSTRAINT [PK_Publisher] PRIMARY KEY ([PubID])
)
GO

/****** Object: Table [dbo].[Category] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Category] (
[CatID] [int] IDENTITY(1,1) NOT NULL,
[CatName] varchar(50) NULL,
[CatDescription] varchar(max) NULL,
[CatType] [varchar](50)  NULL,
CONSTRAINT [PK_Category] PRIMARY KEY ([CatID]),
)
GO

/****** Object: Table [dbo].[Book] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Book] (
[ISBN] varchar(15) NOT NULL,
[PubID] [int] NOT NULL,
[CatID] [int] NOT NULL,
[BookTitle] varchar (50) NOT NULL,
[BookDescription] varchar(max) NULL,
[PubDate] [date] NULL,
CONSTRAINT [PK_Book] PRIMARY KEY ([ISBN]),
CONSTRAINT [FK_Publisher] FOREIGN KEY ([PubID]) REFERENCES [dbo].[Publisher]([PubID]),
CONSTRAINT [FK_Category] FOREIGN KEY ([CatID]) REFERENCES [dbo].[Category]([CatID]),
)
GO


/****** Object: Table [dbo].[Author] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Author] (
[AuthorID] [int] IDENTITY(1,1) NOT NULL,
[AuthorLastName] varchar(50) NULL,
[AuthorFirstName] varchar(50) NULL,
CONSTRAINT [PK_Author] PRIMARY KEY ([AuthorID]),
)
GO


/****** Object: Table [dbo].[BookAuthor] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookAuthor] (
[AuthorID] [int] NOT NULL,
[ISBN] varchar(15) NOT NULL,
CONSTRAINT [PK_BookAuthor] PRIMARY KEY ([AuthorID], [ISBN]),
CONSTRAINT [FK_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
CONSTRAINT [FK_Author] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Author]([AuthorID])
)
GO

/****** Object:  Table [dbo].[LibraryBranch]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[LibraryBranch] (
    [BranchID] [int] IDENTITY(1,1) NOT NULL,
    [BranchName] [varchar](50) NULL,
    [BranchAddress] [varchar](50)  NULL,
    [BranchCity] [varchar](50) NULL,
    [BranchState] [char](2) NULL,
    [BranchZIP] [varchar](20) NULL,
    CONSTRAINT [PK_LibraryBranch] PRIMARY KEY ([BranchID])
)
GO

/****** Object:  Table [dbo].[Borrower]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Borrower](
    [CardNo] [int] IDENTITY(1,1) NOT NULL,
    [BorrowerLName] [varchar](50) NULL,
    [BorrowerFName] [varchar](50) NULL,
    [BorrowerAddress] [varchar](50)  NULL,
    [BorrowerCity] [varchar](50) NULL,
    [BorrowerState] [char](2) NULL,
    [BorrowerZIP] [varchar](20) NULL,
    [BorrowerPhone] [varchar](50) NULL,
    CONSTRAINT [PK_Borrower] PRIMARY KEY ([CardNo])
)
GO

/****** Object: Table [dbo].[BookLoans] Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookLoans] (
[LoanID] [int] IDENTITY(1,1) NOT NULL,
[ISBN] varchar (15) NOT NULL,
[BranchID] [int] NOT NULL,
[CardNo] [int] NOT NULL,
[BorrowedDate] [datetime2] NOT NULL,
[DueDate] [datetime2] NOT NULL,
[ReturnedDate] [datetime2] NULL,
[Status] char (1) NULL,
[FineAmmount] money NULL,
[FineStatus] varchar(15) NULL,
CONSTRAINT [PK_BookLoans] PRIMARY KEY ([LoanID]),
CONSTRAINT [FK_BookLoans_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
CONSTRAINT [FK_BookLoans_LibraryBranch] FOREIGN KEY ([BranchID]) REFERENCES [dbo].[LibraryBranch]([BranchID]),
CONSTRAINT [FK_BookLoans_Borrower] FOREIGN KEY ([CardNo]) REFERENCES [dbo].[Borrower]([CardNo])
)
GO


/****** Object:  Table [dbo].[BookCopies]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookCopies](
    [ISBN] [varchar](15) NOT NULL,
    [BranchID] [int] NOT NULL,
    [NumOfCopies] [int] NOT NULL,
    [Status] [varchar](15)  NOT NULL,
    CONSTRAINT [PK_BookCopies] PRIMARY KEY ([ISBN], [BranchID]),
    CONSTRAINT [FK_BookCopies_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
    CONSTRAINT [FK_BookCopies_LibraryBranch] FOREIGN KEY ([BranchID]) REFERENCES [dbo].[LibraryBranch]([BranchID])
)
GO

/****** Object:  Table [dbo].[ArchiveTable]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[ArchiveTable] (
    [ArchiveID] [int] IDENTITY(1,1) NOT NULL,
	[LoanID] [int],
    [ISBN] [varchar](15) NULL,
    [BranchID] [int] NULL,
    [CardNO] [int] NULL,
    [BorrowedDate] [date] NULL,
    [DueDate] [date] NULL,
    [ReturnedDate] [date] NULL,
    [FineAmmount] [money] NULL,
	[FineStatus] [varchar](15) NULL,
    CONSTRAINT [PK_ArchiveTable] PRIMARY KEY ([ArchiveID]),
)
GO




