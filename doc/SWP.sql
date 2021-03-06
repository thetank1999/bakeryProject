USE [master]
GO
CREATE DATABASE [ShoppingProject]
GO
USE [ShoppingProject]
GO
ALTER DATABASE [ShoppingProject] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoppingProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET DB_CHAINING OFF 
GO
USE [SWP391_ShoppingProject_SE1501]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [nchar](16) NOT NULL,
	[Name] [nchar](128) NULL,
	[Type] [nchar](128) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[OrderId] [int] NULL,
	[Email] [nchar](128) NULL,
	[Details] [text] NULL,
	[Rating] [int] NULL,
	[Status] [bit] NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NULL,
	[CustomerEmail] [nchar](128) NULL,
	[Status] [bit] NULL,
	[SaleEmail] [nchar](128) NULL,
	[CompleteDate] [nchar](32) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PosterEmail] [nchar](128) NULL,
	[Title] [nchar](256) NULL,
	[ThumbnailLink] [nchar](512) NULL,
	[UploadDate] [date] NULL,
	[Status] [nchar](10) NULL,
	[Details] [text] NULL,
	[CategoryId] [nchar](16) NULL,
	[OnSlider] [nchar](16) NULL,
	[UpdateDate] [date] NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](128) NULL,
	[CategoryId] [nchar](16) NULL,
	[ThumbnailLink] [nchar](512) NULL,
	[UploaderEmail] [nchar](128) NULL,
	[OringinalSalePrice] [float] NULL,
	[SalePrice] [float] NULL,
	[Details] [text] NULL,
	[Status] [bit] NULL,
	[SaleStatus] [bit] NULL,
	[Stock] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[Name] [nchar](128) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6-12-2021 21  :  04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Email] [nchar](128) NOT NULL,
	[Password] [nchar](256) NULL,
	[AvatarLink] [nchar](512) NULL,
	[Address] [nchar](100) NULL,
	[FullName] [nchar](50) NULL,
	[PhoneNumber] [nchar](12) NULL,
	[Gender] [nchar](16) NULL,
	[CreationDate] [date] NULL,
	[Status] [bit] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Id], [Name], [Type]) VALUES (N'C1              ', N'Sweet Cake                                                                                                                      ', N'cake                                                                                                                            ')
INSERT [dbo].[Category] ([Id], [Name], [Type]) VALUES (N'C2              ', N'Sour Cake                                                                                                                       ', N'cake                                                                                                                            ')
INSERT [dbo].[Category] ([Id], [Name], [Type]) VALUES (N'C3              ', N'Single Floor Cake                                                                                                               ', N'cake                                                                                                                            ')
INSERT [dbo].[Category] ([Id], [Name], [Type]) VALUES (N'C4              ', N'Multi Floor Cake                                                                                                                ', N'cake                                                                                                                            ')
INSERT [dbo].[Category] ([Id], [Name], [Type]) VALUES (N'P1              ', N'Promoting                                                                                                                       ', N'post                                                                                                                            ')
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [PosterEmail], [Title], [ThumbnailLink], [UploadDate], [Status], [Details], [CategoryId], [OnSlider], [UpdateDate]) VALUES (1, N'market@fpt.edu.vn                                                                                                               ', N'Testing                                                                                                                                                                                                                                                         ', NULL, NULL, NULL, N'This is a testing post used for testing purposes. Thank you for testing this test', N'P1              ', N'False           ', NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [ThumbnailLink], [UploaderEmail], [OringinalSalePrice], [SalePrice], [Details], [Status], [SaleStatus], [Stock]) VALUES (2, N'Melon Cake                                                                                                                      ', N'C1              ', NULL, NULL, 96000, 136000, N'Cake filled with melon flavor', NULL, NULL, 6)
INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [ThumbnailLink], [UploaderEmail], [OringinalSalePrice], [SalePrice], [Details], [Status], [SaleStatus], [Stock]) VALUES (3, N'Spam Cake                                                                                                                       ', N'C2              ', NULL, NULL, 120000, 150000, N'Covered in spam', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [ThumbnailLink], [UploaderEmail], [OringinalSalePrice], [SalePrice], [Details], [Status], [SaleStatus], [Stock]) VALUES (4, N'Strawberry Birthday Cake                                                                                                        ', N'C3              ', NULL, NULL, 240000, 280000, N'Basic strawberry flavored birthday cake', NULL, NULL, 2)
INSERT [dbo].[Product] ([Id], [Name], [CategoryId], [ThumbnailLink], [UploaderEmail], [OringinalSalePrice], [SalePrice], [Details], [Status], [SaleStatus], [Stock]) VALUES (5, N'Europian-styled Wedding Cake                                                                                                    ', N'C4              ', NULL, NULL, 560000, 670000, N'A 3-floor wedding cake for a fancy couple ', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (0, N'User                                                                                                                            ')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (1, N'Admin                                                                                                                           ')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (2, N'Sale                                                                                                                            ')
INSERT [dbo].[Role] ([RoleId], [Name]) VALUES (3, N'Marketer                                                                                                                        ')
GO
INSERT [dbo].[User] ([Email], [Password], [AvatarLink], [Address], [FullName], [PhoneNumber], [Gender], [CreationDate], [Status], [RoleId]) VALUES (N'admin@fpt.edu.vn                                                                                                                ', N'admin                                                                                                                                                                                                                                                           ', NULL, N'fpt university                                                                                      ', N'A Van Minh                                        ', N'0963484125  ', N'Male            ', NULL, NULL, 1)
INSERT [dbo].[User] ([Email], [Password], [AvatarLink], [Address], [FullName], [PhoneNumber], [Gender], [CreationDate], [Status], [RoleId]) VALUES (N'market@fpt.edu.vn                                                                                                               ', N'market                                                                                                                                                                                                                                                          ', NULL, N'fpt university                                                                                      ', N'Ma Thi Ket Tinh                                   ', N'0874125678  ', N'Female          ', NULL, NULL, 3)
INSERT [dbo].[User] ([Email], [Password], [AvatarLink], [Address], [FullName], [PhoneNumber], [Gender], [CreationDate], [Status], [RoleId]) VALUES (N'sale@fpt.edu.vn                                                                                                                 ', N'sale                                                                                                                                                                                                                                                            ', NULL, N'fpt university                                                                                      ', N'Sa Van Le                                         ', N'0987412361  ', N'Male            ', NULL, NULL, 2)
INSERT [dbo].[User] ([Email], [Password], [AvatarLink], [Address], [FullName], [PhoneNumber], [Gender], [CreationDate], [Status], [RoleId]) VALUES (N'user@fpt.edu.vn                                                                                                                 ', N'user                                                                                                                                                                                                                                                            ', NULL, N'fpt university                                                                                      ', N'U Van So                                          ', N'0877741125  ', N'Male            ', NULL, NULL, 0)
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_OrderItem] FOREIGN KEY([OrderId], [ProductId])
REFERENCES [dbo].[OrderItem] ([OrderId], [ProductId])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_OrderItem]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_User] FOREIGN KEY([Email])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([CustomerEmail])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User1] FOREIGN KEY([SaleEmail])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User1]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Category]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([PosterEmail])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_User] FOREIGN KEY([UploaderEmail])
REFERENCES [dbo].[User] ([Email])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [SWP391_ShoppingProject_SE1501] SET  READ_WRITE 
GO
