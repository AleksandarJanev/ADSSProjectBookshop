USE [master]
GO
/****** Object:  Database [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73]    Script Date: 10.1.2021 17:54:33 ******/
CREATE DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73', FILENAME = N'C:\Users\User\BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73_log', FILENAME = N'C:\Users\User\BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET  MULTI_USER 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET QUERY_STORE = OFF
GO
USE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationUser]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUser](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [nvarchar](max) NOT NULL,
	[BirthDate] [datetime2](7) NOT NULL,
	[ShortBio] [nvarchar](max) NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[BookTypeID] [int] NOT NULL,
	[PublishDate] [datetime2](7) NOT NULL,
	[Price] [real] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[AuthorID] [int] NOT NULL,
	[BookPerPage] [int] NOT NULL,
	[CurrentPage] [int] NOT NULL,
	[BookID1] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookType]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookType](
	[BookTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BookType] PRIMARY KEY CLUSTERED 
(
	[BookTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[BookID] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [real] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderPlaced] [datetime2](7) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressLine1] [nvarchar](100) NOT NULL,
	[AddressLine2] [nvarchar](max) NULL,
	[Country] [nvarchar](50) NOT NULL,
	[OrderTotal] [real] NOT NULL,
	[PhoneNumber] [nvarchar](25) NOT NULL,
	[ZipCode] [nvarchar](10) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 10.1.2021 17:54:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[ShoppingCartItemID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NULL,
	[Amount] [int] NOT NULL,
	[ShoppingCartID] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[ShoppingCartItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_AuthorID]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_Book_AuthorID] ON [dbo].[Book]
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_BookID1]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_Book_BookID1] ON [dbo].[Book]
(
	[BookID1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_BookTypeID]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_Book_BookTypeID] ON [dbo].[Book]
(
	[BookTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_BookID]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_BookID] ON [dbo].[OrderDetails]
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderID]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderID] ON [dbo].[OrderDetails]
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Orders_ApplicationUserId]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ApplicationUserId] ON [dbo].[Orders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCartItems_BookID]    Script Date: 10.1.2021 17:54:33 ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCartItems_BookID] ON [dbo].[ShoppingCartItems]
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [OrderPlaced]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [AddressLine1]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [Country]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [PhoneNumber]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (N'') FOR [ZipCode]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_AuthorID] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author_AuthorID]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Book_BookID1] FOREIGN KEY([BookID1])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Book_BookID1]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_BookType_BookTypeID] FOREIGN KEY([BookTypeID])
REFERENCES [dbo].[BookType] ([BookTypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_BookType_BookTypeID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Book_BookID] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Book_BookID]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ApplicationUser_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[ApplicationUser] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ApplicationUser_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Book_BookID] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Book_BookID]
GO
USE [master]
GO
ALTER DATABASE [BookshopDatabaseContext-9ff726d7-f6f2-4eeb-be4d-3dcf97ac6b73] SET  READ_WRITE 
GO
