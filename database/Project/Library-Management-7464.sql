USE [master]
GO
/****** Object:  Database [libsys]    Script Date: 7/26/2019 1:46:23 PM ******/
CREATE DATABASE [libsys]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'libsys', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MIMSQL\MSSQL\DATA\libsys.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'libsys_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MIMSQL\MSSQL\DATA\libsys_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [libsys] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [libsys].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [libsys] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [libsys] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [libsys] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [libsys] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [libsys] SET ARITHABORT OFF 
GO
ALTER DATABASE [libsys] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [libsys] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [libsys] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [libsys] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [libsys] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [libsys] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [libsys] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [libsys] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [libsys] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [libsys] SET  ENABLE_BROKER 
GO
ALTER DATABASE [libsys] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [libsys] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [libsys] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [libsys] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [libsys] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [libsys] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [libsys] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [libsys] SET RECOVERY FULL 
GO
ALTER DATABASE [libsys] SET  MULTI_USER 
GO
ALTER DATABASE [libsys] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [libsys] SET DB_CHAINING OFF 
GO
ALTER DATABASE [libsys] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [libsys] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [libsys] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'libsys', N'ON'
GO
ALTER DATABASE [libsys] SET QUERY_STORE = OFF
GO
USE [libsys]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Author_name] [nvarchar](50) NOT NULL,
	[Birthdate] [int] NOT NULL,
	[book_id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Author_name] ASC,
	[Birthdate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[book_id] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
	[Categories] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[Customer_id] [int] NOT NULL,
	[Customer_name] [nvarchar](50) NOT NULL,
	[phone_Number] [int] NOT NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[Customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_id] [int] NOT NULL,
	[Employee_name] [nvarchar](50) NOT NULL,
	[Position] [nvarchar](50) NOT NULL,
	[salary] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issuestatus]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issuestatus](
	[Customer_id] [int] NOT NULL,
	[Book_id] [int] NOT NULL,
	[Rent_date] [nvarchar](50) NOT NULL,
	[Return_date] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Library]    Script Date: 7/26/2019 1:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Library](
	[Library_Name] [nvarchar](50) NOT NULL,
	[Library_Address] [nvarchar](50) NOT NULL,
	[column_3] [nvarchar](1) NULL,
	[Book_id] [int] NOT NULL,
	[Employee_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
 CONSTRAINT [PK_Library] PRIMARY KEY CLUSTERED 
(
	[Library_Name] ASC,
	[Library_Address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N' Ramez Elmasri', 1990, 1003, N'Fundamentals of Database Systems')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Eugenia W.Collier', 1963, 1012, N' The strange marigold')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Herbert Schildt', 1977, 1001, N'Teach Yourself')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Johannes Gehrke', 1969, 1008, N'Database Management Systems')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Kenneth H. Rosen', 1988, 1002, N'Discrete mathematics and its applications')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'M.Morris Mano', 1970, 1000, N'Digital Logic and Computer Design')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Mark lovewell', 1979, 1007, N'Understanding Economics')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Pamela S. Turner', 1966, 1010, N'Hachiko: The True Story of a Loyal Dog')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'patrick Rothfuss', 1962, 1011, N'The name of the wind')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Roberta M.Roth', 1980, 1009, N'System Analysis and Design')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Ross E. Lockhart', 1973, 1006, N'Giallo')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Ruby jean jensen', 1984, 1005, N'Annabelle')
INSERT [dbo].[Authors] ([Author_name], [Birthdate], [book_id], [Title]) VALUES (N'Tina Fey', 1992, 1004, N'Bossypants')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1000, N'Digital Logic and Computer Design', 200, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1001, N'Teach Yourself', 100, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1002, N'Discrete mathematics and its applications', 700, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1003, N'Fundamentals of Database Systems', 88, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1004, N'Bossypants', 70, N'Comedy')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1005, N'Annabelle', 103, N'Horror')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1006, N'Giallo', 350, N'Thriller')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1007, N'Understanding Economics', 55, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1008, N'Database Management Systems', 74, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1009, N'System Analysis and Design', 99, N'Educational')
INSERT [dbo].[books] ([book_id], [Title], [Amount], [Categories]) VALUES (1010, N'Hachiko: The True Story of a Loyal Dog', 87, N'Romantic')
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201070, N'Nusrat', 1706072655)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201071, N'Aisha', 1678543266)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201072, N'Tonny', 1811345679)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201073, N'Sumaiya', 1788944321)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201074, N'Rahima', 1865432345)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201075, N'fouzia', 1711223381)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201076, N'Trisha', 1845656671)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201077, N'kiron', 1611233211)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201078, N' sharika', 1965477881)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201079, N'Turhan', 1983256743)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201080, N'Prapti', 1985566712)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201081, N'Nishat', 1799874471)
INSERT [dbo].[customer] ([Customer_id], [Customer_name], [phone_Number]) VALUES (17201082, N'Nobla', 1689943221)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (1, N'Rohan', N'Manager', 3000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (2, N'Anonnyo', N'Worker', 2000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (3, N'Uchsas', N'Assistant', 10000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (4, N'Rizwan', N'Building Supervisor', 5000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (5, N'Tousif', N'Circulation Assistant', 20000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (6, N'Abir', N'Senior Library Assistant', 30000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (7, N'anonnto', N'Accountant', 40000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (8, N'Mashuk', N'Bookkeeper', 50000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (9, N'Qadir', N'Account Clerk', 7000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (10, N'Nargis', N'Accountant', 8000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (11, N'Ratul', N'Administrative Secretary', 50000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (12, N'Najmul', N'Worker', 2000)
INSERT [dbo].[Employee] ([Employee_id], [Employee_name], [Position], [salary]) VALUES (13, N'Soyeb', N'Manager', 3000)
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201070, 1000, N'12/1/2010', N'20/1/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201071, 1001, N'22/1/2010', N'30/1/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201072, 1002, N'10/2/2010', N'10/2/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201073, 1003, N'13/2/2010', N'22/2/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201074, 1004, N'22/2/2010', N'30/2/2019')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201075, 1005, N'11/3/2010', N'20/3/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201076, 1006, N'22/3/2010', N'20/4/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201077, 1007, N'22/6/2010', N'22/7/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201078, 1008, N'29/8/2010', N'22/9/2010')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201079, 1009, N'11/1/2011', N'30/1/2011')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201080, 1010, N'22/5/2011', N'14/6/2011')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201081, 1011, N'12/6/2012', N'14/7/2012')
INSERT [dbo].[issuestatus] ([Customer_id], [Book_id], [Rent_date], [Return_date]) VALUES (17201082, 1012, N'18/7/2013', N'22/8/2013')
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Afsana ', N'1/A HB Tower Gulshan', NULL, 1006, 7, 17201076)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Aisha', N'Kalabagan ', NULL, 1009, 10, 17201079)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Fateha', N'Dhanmondi 9/A', NULL, 1003, 4, 17201073)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Karan', N'Mirpur 1', NULL, 1011, 12, 17201081)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Karim', N'205 South St.Roxbury,MA 02334', NULL, 1001, 2, 17201071)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Monica', N'Dhanmondi 32', NULL, 1008, 9, 17201078)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Piuly', N'Lalmatia Block C', NULL, 1005, 6, 17201075)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Prova', N'7/A, Gulshan', NULL, 1004, 5, 17201074)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Rahim', N'14 Rialto St.Boston,MA 02119', NULL, 1000, 1, 17201070)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'salman', N'Mirpur2', NULL, 1012, 13, 17201082)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Suchona', N'Lalmatia Block E', NULL, 1002, 3, 17201072)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Tasnim', N'Block#K,Banani, Dhaka', NULL, 1007, 8, 17201077)
INSERT [dbo].[Library] ([Library_Name], [Library_Address], [column_3], [Book_id], [Employee_id], [customer_id]) VALUES (N'Tiru', N'Shyamoli', NULL, 1010, 11, 17201080)
USE [master]
GO
ALTER DATABASE [libsys] SET  READ_WRITE 
GO
