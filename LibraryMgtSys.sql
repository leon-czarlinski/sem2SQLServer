USE master
GO

IF DB_ID('LibraryManagmentSystem') IS NOT NULL
    DROP DATABASE LibraryManagmentSystem

CREATE DATABASE LibraryManagmentSystem
GO

USE [LibraryManagmentSystem]
/****** Object:  Table [dbo].[Publisher]    Script Date: 03/04/2023 ******/
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

INSERT [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone]) 
                 VALUES ('PRINTING IS US','TOMMIE SEYMOUR','1201 ORANGE AVE', 'SEATTLE', 'WA', '98114', '000-714-8321');
INSERT [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone]) 
                 VALUES ('PUBLISH OUR WAY','JANE TOMLIN','114 EAST SAVANNAH', 'ATLANTA', 'GA', '30314', '010-410-0010'); 
INSERT [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone]) 
                 VALUES ('AMERICAN PUBLISHING', 'DAVID DAVIDSON','58 TILA CIRCLE', 'CHICAGO', 'IL', '60605', '800-555-1211');
INSERT [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone])  
                 VALUES ('READING MATERIALS INC.','RENEE SMITH','958 MAGNOLIA LANE', 'EASTPOINT', 'FL', '32328', '800-555-9743');
INSERT [dbo].[Publisher] ([PubName], [PubContact], [PubAddress], [PubCity], [PubState], [PubZIP], [PubPhone]) 
                 VALUES ('REED-N-RITE','SEBASTIAN JONES','561 ROUNDABOUT WAY', 'TRENTON', 'NJ', '08601','800-555-8284');

/****** Object:  Table [dbo].[Book]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Book] (
    [ISBN] [varchar](10) NOT NULL,
    [PubID] [int] NOT NULL,
    [CatID] [int] NOT NULL,
    [BookTitle] [varchar] (20) NOT NULL,
    [BookDescription] [varchar](50) NULL,
    [PubDate] [date] NULL,
    CONSTRAINT [PK_Book] PRIMARY KEY ([ISBN]),
    CONSTRAINT [FK_Publisher] FOREIGN KEY ([PubID]) REFERENCES [dbo].[Publisher]([PubID]),
    CONSTRAINT [FK_Category] FOREIGN KEY ([CatID]) REFERENCES [dbo].[Category]([CatID]),
)
GO

/****** Object:  Table [dbo].[Author]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Author] (
    [AuthorID] [varchar] (4) NOT NULL,
    [AuthorLastName] [varchar](50) NULL,
    [AuthorFirstName] [varchar](50) NULL,
    CONSTRAINT [PK_Author] PRIMARY KEY ([AuthorID]),
)
GO

/****** Object:  Table [dbo].[BookAuthor]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookAuthor] (
    [AuthorID] [varchar] (4) NOT NULL,
    [ISBN] [varchar](10) NOT NULL,
    CONSTRAINT [PK_BookAuthor] PRIMARY KEY ([AuthorID], [ISBN]),
    CONSTRAINT [FK_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
    CONSTRAINT [FK_Author] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Author]([AuthorID])
)
GO

/****** Object:  Table [dbo].[Category]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Category] (
    [CatID] [int] IDENTITY(1,1) NOT NULL,
    [CatName] [varchar](50) NULL,
    [CatDescription] [varchar](50) NULL,
    [CatType] [varchar](50)  NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY ([CatID]),
)
GO

/****** Object:  Table [dbo].[BookLoans]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookLoans] (
    [LoanID] [int] IDENTITY(1,1) NOT NULL,
    [ISBN] [varchar](10) NOT NULL,
    [BranchID] [int] NOT NULL,
    [CardNO] [int] NOT NULL,
    [BorrowedDate] [datetime2] NOT NULL,
    [DueDate] [datetime2] NOT NULL,
    [ReturnedDate] [datetime2] NULL,
    [Status] [char](1) NULL,
    CONSTRAINT [PK_BookLoans] PRIMARY KEY ([LoanID]),
    CONSTRAINT [FK_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
    CONSTRAINT [FK_LibraryBranch] FOREIGN KEY ([BranchID]) REFERENCES [dbo].[LibraryBranch]([BranchID]),
    CONSTRAINT [FK_Borrower] FOREIGN KEY ([CardNo]) REFERENCES [dbo].[Borrower]([CardNo]),
)
GO

/****** Object:  Table [dbo].[LibraryBranch]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[LibraryBranch] (
    [BranchID] [int] IDENTITY(1,1) NOT NULL,
    [BrachName] [varchar](50) NULL,
    [BranchAddress] [varchar](50)  NULL,
    [BranchCity] [varchar](50) NULL,
    [BranchState] [char](2) NULL,
    [BranchZIP] [varchar](20) NULL,
    CONSTRAINT [PK_LibraryBranch] PRIMARY KEY ([BranchID])
)
GO

/****** Object:  Table [dbo].[Borrower]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Borrower](
    [CardNO] [int] IDENTITY(1,1) NOT NULL,
    [BorrowerLName] [varchar](50) NULL,
    [BorrowerFName] [varchar](50) NULL,
    [BorrowerAddress] [varchar](50)  NULL,
    [BorrowerCity] [varchar](50) NULL,
    [BorrowerState] [char](2) NULL,
    [BorrowerZIP] [varchar](20) NULL,
    [BorrowerPhone] [varchar](50) NULL,
    CONSTRAINT [PK_Borrower] PRIMARY KEY ([CardNO])
)
GO

/****** Object:  Table [dbo].[BookCopies]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[BookCopies](
    [ISBN] [varchar](10) NOT NULL,
    [BranchID] [int] NOT NULL,
    [NumOfCopies] [int] NOT NULL,
    [Status] [varchar](15)  NOT NULL,
    CONSTRAINT [PK_BookCopies] PRIMARY KEY ([ISBN], [BranchID]),
    CONSTRAINT [FK_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
    CONSTRAINT [FK_LibraryBranch] FOREIGN KEY ([BranchID]) REFERENCES [dbo].[LibraryBranch]([BranchID])
)
GO

/****** Object:  Table [dbo].[Fine]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[Fine] (
    [FineID] [int] IDENTITY(1,1) NOT NULL,
    [LoanID] [int] NOT NULL,
    [FineAmmount] [money] NOT NULL,
    CONSTRAINT [PK_Fine] PRIMARY KEY ([FineID]),
    CONSTRAINT [FK_BookLoans] FOREIGN KEY ([LoanID]) REFERENCES [dbo].[BookLoans]([LoanID])
)
GO

/****** Object:  Table [dbo].[ArchiveTable]    Script Date: 03/04/2023 ******/
CREATE TABLE [dbo].[ArchiveTable] (
    [ArchiveID] [int] IDENTITY(1,1) NOT NULL,
    [ISBN] [varchar](10) NOT NULL,
    [BranchID] [int] NOT NULL,
    [CardNO] [int] NOT NULL,
    [BorrowedDate] [date2] NOT NULL,
    [DueDate] [date2] NOT NULL,
    [ReturnedDate] [date2] NOT NULL,
    [FineID] [int] NOT NULL, 
    [FineAmmount] [money] NOT NULL,
    CONSTRAINT [PK_ArchiveTable] PRIMARY KEY ([ArchiveID]),
    CONSTRAINT [FK_Archive_Book] FOREIGN KEY ([ISBN]) REFERENCES [dbo].[Book]([ISBN]),
    CONSTRAINT [FK_Archive_LibraryBranch] FOREIGN KEY ([BranchID]) REFERENCES [dbo].[LibraryBranch]([BranchID]),
    CONSTRAINT [FK_Archive_Borrower] FOREIGN KEY ([CardNO]) REFERENCES [dbo].[Borrower]([CardNO]),
    CONSTRAINT [FK_Archive_Fine] FOREIGN KEY ([FineID]) REFERENCES [dbo].[Fine]([FineID])
)
GO