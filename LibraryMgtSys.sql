USE master
GO

IF DB_ID('LibraryManagmentSystem') IS NOT NULL
    DROP DATABASE LibraryManagmentSystem

CREATE DATABASE LibraryManagmentSystem
GO

USE [LibraryManagmentSystem]
GO