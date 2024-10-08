USE [master]
GO
/****** Object:  Database [Carts]    Script Date: 2020/1/16 下午 01:54:17 ******/
CREATE DATABASE [Carts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Carts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Carts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Carts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Carts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Carts] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Carts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Carts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Carts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Carts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Carts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Carts] SET ARITHABORT OFF 
GO
ALTER DATABASE [Carts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Carts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Carts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Carts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Carts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Carts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Carts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Carts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Carts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Carts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Carts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Carts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Carts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Carts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Carts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Carts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Carts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Carts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Carts] SET  MULTI_USER 
GO
ALTER DATABASE [Carts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Carts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Carts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Carts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Carts] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Carts] SET QUERY_STORE = OFF
GO
USE [Carts]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Carts]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2020/1/16 下午 01:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2020/1/16 下午 01:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[RecieverName] [nvarchar](max) NOT NULL,
	[RecieverPhone] [nvarchar](max) NOT NULL,
	[RecieverAddress] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductComments]    Script Date: 2020/1/16 下午 01:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductComments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCommets]    Script Date: 2020/1/16 下午 01:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCommets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductCommets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2020/1/16 下午 01:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Price] [decimal](28, 0) NOT NULL,
	[PublishDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
	[DefaultImageId] [bigint] NULL,
	[Quantity] [int] NOT NULL,
	[DefaultImageURL] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (31, 23, N'貝納頌', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (32, 23, N'南菲咖啡', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (33, 24, N'Felala 費拉拉', CAST(820 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (34, 24, N'貝納頌', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (35, 24, N'Casa卡薩', CAST(450 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (36, 25, N'Casa卡薩', CAST(650 AS Decimal(18, 0)), 2)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (37, 25, N'南菲咖啡', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (38, 26, N'Felala 費拉拉', CAST(820 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (39, 26, N'南菲咖啡', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (40, 26, N'Casa卡薩', CAST(450 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (41, 26, N'貝納頌', CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [Name], [Price], [Quantity]) VALUES (42, 26, N'Casa卡薩', CAST(650 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (23, N'9389d627-815c-4813-87e7-fac115fab48f', N'黃裕文', N'0910123321', N'台北市松山區南京東路五段222號2樓')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (24, N'287340c4-5cde-4b7c-9321-54eb6e128e63', N'胖虎', N'0909553966', N'台北市松山區南京東路三段250號3樓')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (25, N'287340c4-5cde-4b7c-9321-54eb6e128e63', N'胖虎', N'0909553966', N'台北市松山區南京東路三段250號3樓')
INSERT [dbo].[Orders] ([Id], [UserId], [RecieverName], [RecieverPhone], [RecieverAddress]) VALUES (26, N'1abdd307-843a-4504-ba1b-7edcf375bbbb', N'小夫', N'0919448188', N'台北市松山區寧安街20號6樓')
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductCommets] ON 

INSERT [dbo].[ProductCommets] ([Id], [UserId], [Content], [CreateDate], [ProductId]) VALUES (6, N'小夫', N'味道偏苦', CAST(N'2020-01-16T13:49:58.187' AS DateTime), 6)
SET IDENTITY_INSERT [dbo].[ProductCommets] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryId], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageURL]) VALUES (1, N'南菲咖啡', N'哥倫比亞 ', 1, CAST(500 AS Decimal(28, 0)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 50, N'https://img1.momoshop.com.tw/goodsimg/0006/008/115/6008115_B.jpg?t=1577818058')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryId], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageURL]) VALUES (2, N'貝納頌', N'意式深焙', 55, CAST(500 AS Decimal(28, 0)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 55, N'https://img1.momoshop.com.tw/goodsimg/0003/832/501/3832501_B.jpg?t=1571942653')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryId], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageURL]) VALUES (3, N'Casa卡薩', N'東非高山馬拉威', 1, CAST(450 AS Decimal(28, 0)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 50, N'https://img3.momoshop.com.tw/goodsimg/0004/600/767/4600767_B.jpg?t=1571337163')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryId], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageURL]) VALUES (5, N'Casa卡薩', N'頂級莊園尼加拉瓜', 55, CAST(650 AS Decimal(28, 0)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 66, 70, N'https://img2.momoshop.com.tw/goodsimg/0004/599/070/4599070_B.jpg?t=1571337167')
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryId], [Price], [PublishDate], [Status], [DefaultImageId], [Quantity], [DefaultImageURL]) VALUES (6, N'Felala 費拉拉', N'瓜地馬拉', 1, CAST(820 AS Decimal(28, 0)), CAST(N'2020-01-01T00:00:00.000' AS DateTime), 1, 1, 30, N'https://img4.momoshop.com.tw/goodsimg/0007/257/303/7257303_B.jpg?t=1576676372')
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Index [IX_FK_OrderOrderDetail]    Script Date: 2020/1/16 下午 01:54:17 ******/
CREATE NONCLUSTERED INDEX [IX_FK_OrderOrderDetail] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderOrderDetail] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderOrderDetail]
GO
USE [master]
GO
ALTER DATABASE [Carts] SET  READ_WRITE 
GO
