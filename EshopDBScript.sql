USE [master]
GO
/****** Object:  Database [EShop]    Script Date: 18-10-2022 17:47:39 ******/
CREATE DATABASE [EShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EShop', FILENAME = N'C:\Users\Administrator\EShop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EShop_log', FILENAME = N'C:\Users\Administrator\EShop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EShop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [EShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EShop] SET  MULTI_USER 
GO
ALTER DATABASE [EShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EShop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EShop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EShop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EShop] SET QUERY_STORE = OFF
GO
USE [EShop]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18-10-2022 17:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [money] NULL,
	[CategoryId] [smallint] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Product]    Script Date: 18-10-2022 17:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Product] AS (select Name, Cost from Product)
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18-10-2022 17:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 18-10-2022 17:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [bigint] IDENTITY(555555,1) NOT NULL,
	[Status] [nvarchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[ProductId] [int] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 18-10-2022 17:47:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [smallint] IDENTITY(10,1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1001, N'Padmaja', N'padmaja@')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1002, N'Shivi', N'shivi@')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1003, N'Vimal', N'vimal@')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1004, N'hari', N'hari@')
INSERT [dbo].[Customer] ([Id], [Name], [Email]) VALUES (1005, N'sam', N'samyyy@')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555555, N'Completed', CAST(N'2022-10-18T00:00:00.000' AS DateTime), 7, 1004)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555556, N'Completed', CAST(N'2021-11-10T00:00:00.000' AS DateTime), 5, 1004)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555557, N'In-Progress', CAST(N'2019-08-12T00:00:00.000' AS DateTime), 6, 1002)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555558, N'Cancelled', CAST(N'2021-02-10T00:00:00.000' AS DateTime), 2, 1005)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555559, N'Cancelled', CAST(N'2020-03-12T00:00:00.000' AS DateTime), 1, 1003)
INSERT [dbo].[Orders] ([OrderId], [Status], [OrderDate], [ProductId], [CustomerId]) VALUES (555560, N'In-Progress', CAST(N'2022-05-03T00:00:00.000' AS DateTime), 4, 1001)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (1, N'T-sjirts', 499.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (2, N'kurti', 1499.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (3, N'lehenga', 4000.0000, 10)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (4, N'earrings', 1200.0000, 15)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (5, N'Fairylights', 200.0000, 11)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (6, N'Diyas', 50.0000, 11)
INSERT [dbo].[Product] ([Id], [Name], [Cost], [CategoryId]) VALUES (7, N'iphone14', 89000.0000, 17)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (10, N'Apparels')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (11, N'Lights')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (15, N'Jewellery')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (17, N'gadgets')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (18, N'sweets')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (19, N'cosmetics')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
USE [master]
GO
ALTER DATABASE [EShop] SET  READ_WRITE 
GO
