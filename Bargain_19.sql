USE [master]
GO
/****** Object:  Database [Bargain_19]    Script Date: 05-12-2019 11:54:57 ******/
CREATE DATABASE [Bargain_19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bargain_19', FILENAME = N'D:\SQL DATA\Bargain\Bargain_19.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bargain_19_log', FILENAME = N'D:\SQL DATA\Bargain\Bargain_19_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Bargain_19] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bargain_19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bargain_19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bargain_19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bargain_19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bargain_19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bargain_19] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bargain_19] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bargain_19] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Bargain_19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bargain_19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bargain_19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bargain_19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bargain_19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bargain_19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bargain_19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bargain_19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bargain_19] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bargain_19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bargain_19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bargain_19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bargain_19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bargain_19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bargain_19] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bargain_19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bargain_19] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bargain_19] SET  MULTI_USER 
GO
ALTER DATABASE [Bargain_19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bargain_19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bargain_19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bargain_19] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Bargain_19]
GO
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bargains]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bargains](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Heading] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[SpecialType] [nvarchar](500) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[URL] [nvarchar](500) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Promocode] [nvarchar](500) NULL,
	[Tags] [nvarchar](500) NULL,
	[Free] [bit] NULL,
	[PostedBy] [int] NULL,
	[LastModifyDate] [datetime] NULL,
	[OutOfStockTag] [bit] NULL,
	[IsActive] [bit] NULL,
	[EntryDate] [datetime] NULL,
	[BargainLike] [int] NULL,
	[BargainDislike] [int] NULL,
	[ApproveStatus] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BargainsComments]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BargainsComments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[MemberId] [int] NULL,
	[BargainId] [int] NULL,
	[Comment] [nvarchar](max) NULL,
	[CommentDate] [datetime] NULL,
	[ApproveStatus] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[UserName] [int] NULL,
	[EntryDate] [datetime] NULL,
	[PageURL] [nvarchar](50) NULL,
	[TableName] [nvarchar](50) NULL,
	[EntryType] [nvarchar](50) NULL,
	[EntryDetails] [nvarchar](50) NULL,
	[UserIP] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Member]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[UserId] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Postcode] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[EntryDate] [datetime] NULL,
	[SocialWebSite] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
	[DeleteDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MemberLikes]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MemberLikes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[BargainId] [int] NULL,
	[LikeTag] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notifications]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Details] [nvarchar](50) NULL,
	[ViewTag] [bit] NULL,
	[Tag] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SpecialType]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [nvarchar](500) NULL,
	[EntryDate] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 05-12-2019 11:54:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Descr] [nvarchar](max) NULL,
	[PhotoURL] [nvarchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[CreateUserId] [int] NULL,
	[UpdateDate] [datetime] NULL,
	[UpdateUserId] [int] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 

GO
INSERT [dbo].[AdminUsers] ([Id], [Username], [Password], [RoleId]) VALUES (1, N'Admin', N'123', 1)
GO
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Bargains] ON 

GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3036, N'tews', N'ffs', N'1', N'1_1_201911281621560284.jpg,1_2_201911281621560304.jpg,', N'', CAST(0x0000AB0B00000000 AS DateTime), CAST(0x0000AB0B00000000 AS DateTime), N'', N'', 0, 1, CAST(0x0000AB13010DB275 AS DateTime), 1, 1, CAST(0x0000AB0D00FDD1AA AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3037, N'Where can I get some?', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. ', N'2', N'1_1_201911201526535450.jpg,1_2_201911201526535460.jpg,1_3_201911201526535460.jpg,1_4_201911201526535470.jpg,', N'', CAST(0x0000AB0B00000000 AS DateTime), CAST(0x0000AB0B00000000 AS DateTime), N'152101', N'lorem', 0, 5, NULL, NULL, 1, CAST(0x0000AB0B00FE9449 AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3038, N'Quick question', N'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', N'2', N'1_1_201911201528328779.jpg,1_2_201911201528328796.jpg,1_3_201911201528328869.jpg,1_4_201911201528329106.jpg,', N'', CAST(0x0000AB0B00000000 AS DateTime), CAST(0x0000AB1400000000 AS DateTime), N'152101', N'lorem', 0, 5, NULL, NULL, 1, CAST(0x0000AB0B00FF08BC AS DateTime), 0, 0, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3039, N'Testing Log', N'asdasd', N'1', N'1_1_201911201747113336.jpg,', N'', CAST(0x0000AB0B00000000 AS DateTime), CAST(0x0000AB0B00000000 AS DateTime), N'', N'', 0, 1, NULL, NULL, 1, CAST(0x0000AB0B0125198C AS DateTime), 1, 2, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3040, N' I get some?', N' All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', N'2', N'5_1_201911251811078243.jpg,5_2_201911251811078253.jpg,5_3_201911251811078263.jpg,', N'', CAST(0x0000AB1000000000 AS DateTime), CAST(0x0000AB1300000000 AS DateTime), N'152101', N'lorem', 0, 5, CAST(0x0000AB10012BA7DA AS DateTime), NULL, 1, CAST(0x0000AB0D00B8F22C AS DateTime), 7, 2, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3041, N'tete', N'et', N'2', N'5_1_201911221158275256.jpg,', N'', CAST(0x0000AB0D00000000 AS DateTime), CAST(0x0000AB1400000000 AS DateTime), N'', N'', 0, 5, NULL, NULL, 1, CAST(0x0000AB0D00C550EB AS DateTime), 0, 0, 0)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3042, N'dghfg', N'hffhf', N'1', N'5_1_201911221203444984.jpg,', N'', CAST(0x0000AB0D00000000 AS DateTime), CAST(0x0000AB0D00000000 AS DateTime), N'', N'', 0, 5, NULL, NULL, 1, CAST(0x0000AB0D00C6C44D AS DateTime), 0, 0, 2)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3044, N'sd25', N'sf', N'1', N'1_1_201911251629459912.jpg,', N'', CAST(0x0000AB1200000000 AS DateTime), CAST(0x0000AB1000000000 AS DateTime), N'', N'', 0, 1, NULL, NULL, 1, CAST(0x0000AB10010FD0BD AS DateTime), 0, 0, 0)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3045, N'testing 27 november', N'all bARGAIB', N'2', N'1_1_201911271901336063.png,', N'http://localhost:29922/BargainEntry/Index', CAST(0x0000AB1200000000 AS DateTime), CAST(0x0000AB1200000000 AS DateTime), N'1511', N'lorem', 0, 1, CAST(0x0000AB1201397F69 AS DateTime), NULL, 0, CAST(0x0000AB120125B927 AS DateTime), 0, 0, 0)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3046, N'do well ', N'test', N'1', N'5_1_201911281107058223.jpg,5_2_201911281107058243.jpg,', N'http://localhost:29922/BargainEntry/Index', CAST(0x0000AB1400000000 AS DateTime), CAST(0x0000AB1500000000 AS DateTime), N'152101', N'lorem', 0, 5, NULL, NULL, 1, CAST(0x0000AB1300B72EEC AS DateTime), 0, 0, 0)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3043, N'fhyfhfh', N'fghfghfgh', N'2', N'5_1_201911221220011994.jpg,', N'', CAST(0x0000AB0D00000000 AS DateTime), CAST(0x0000AB0D00000000 AS DateTime), N'', N'', 0, 5, NULL, NULL, 0, CAST(0x0000AB0D00CB3CDF AS DateTime), 5, 6, 1)
GO
INSERT [dbo].[Bargains] ([Id], [Heading], [Description], [SpecialType], [ImagePath], [URL], [StartDate], [EndDate], [Promocode], [Tags], [Free], [PostedBy], [LastModifyDate], [OutOfStockTag], [IsActive], [EntryDate], [BargainLike], [BargainDislike], [ApproveStatus]) VALUES (3047, N'test harpreet', N'gaer', N'2', N'5_1_201911281748220766.jpg,5_2_201911281748220776.jpg,5_3_201911281748220806.jpg,', N'', CAST(0x0000AB1400000000 AS DateTime), CAST(0x0000AB2900000000 AS DateTime), N'', N'', 0, 5, NULL, 0, 1, CAST(0x0000AB13012562AF AS DateTime), 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Bargains] OFF
GO
SET IDENTITY_INSERT [dbo].[BargainsComments] ON 

GO
INSERT [dbo].[BargainsComments] ([Id], [ParentId], [MemberId], [BargainId], [Comment], [CommentDate], [ApproveStatus]) VALUES (1065, 0, 2018, 3038, N'thanks for visit', CAST(0x0000AB1900D17186 AS DateTime), 1)
GO
INSERT [dbo].[BargainsComments] ([Id], [ParentId], [MemberId], [BargainId], [Comment], [CommentDate], [ApproveStatus]) VALUES (1061, 0, 1, 3040, N'thank for visit', CAST(0x0000AB15010D4899 AS DateTime), 1)
GO
INSERT [dbo].[BargainsComments] ([Id], [ParentId], [MemberId], [BargainId], [Comment], [CommentDate], [ApproveStatus]) VALUES (1062, 0, 1, 3040, N'its get some one', CAST(0x0000AB15010D5733 AS DateTime), 1)
GO
INSERT [dbo].[BargainsComments] ([Id], [ParentId], [MemberId], [BargainId], [Comment], [CommentDate], [ApproveStatus]) VALUES (1063, 1062, 1, 3040, N'good bargains', CAST(0x0000AB15010D71FB AS DateTime), 1)
GO
INSERT [dbo].[BargainsComments] ([Id], [ParentId], [MemberId], [BargainId], [Comment], [CommentDate], [ApproveStatus]) VALUES (1064, 0, 1, 3037, N'Where can I get some?', CAST(0x0000AB15010D88B4 AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[BargainsComments] OFF
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (1, N'admin', NULL, NULL, N'admin', NULL, NULL, N'123', CAST(0x0000AB0601388FA0 AS DateTime), NULL, 0, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (2, N'Navjot', N'Kaur', NULL, N'bajajnav90@gmail.com', N'Bathinda', N'151001', N'123', CAST(0x0000AB0601388FA0 AS DateTime), NULL, 1, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (3, N'Navjot', N'kaur', NULL, N'bajajnav90@gmail.com', N'Bathinda', N'151001', N'123', CAST(0x0000AB0601391C40 AS DateTime), NULL, 1, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (4, N'Happy', N'Garg', NULL, N'bajajnav90@gmal.com', N'Bathinda', N'151001', N'123', CAST(0x0000AB060139EF30 AS DateTime), NULL, 1, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (5, N'asd', N'asd', NULL, N'asd', N'asd', N'asd', N'asd', CAST(0x0000AB06013A7BD0 AS DateTime), NULL, 1, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (2017, N'Softel Solutions', N'', N'105800824754748185237', N'softelbti@gmail.com', N'', NULL, N'', CAST(0x0000AB1500BAC480 AS DateTime), N'Google', 1, 0, NULL)
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (2018, N'harpreet', N'singh', NULL, N'harpreet@gmail.com', N'pb60', N'152101', N'123', CAST(0x0000AB1900CBCBE0 AS DateTime), NULL, 1, 0, CAST(0x0000AB1A00C01BB0 AS DateTime))
GO
INSERT [dbo].[Member] ([Id], [FirstName], [LastName], [UserId], [Email], [State], [Postcode], [Password], [EntryDate], [SocialWebSite], [IsActive], [IsDelete], [DeleteDate]) VALUES (2016, N'Softel S', N'', N'109850963818146', N'btioffice@softelsystems.com', N'', NULL, N'', CAST(0x0000AB14011F0490 AS DateTime), N'Facebook', 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Member] OFF
GO
SET IDENTITY_INSERT [dbo].[MemberLikes] ON 

GO
INSERT [dbo].[MemberLikes] ([Id], [MemberId], [BargainId], [LikeTag], [CreatedDate]) VALUES (3, 1, 3043, 1, CAST(0x0000AB110125E729 AS DateTime))
GO
INSERT [dbo].[MemberLikes] ([Id], [MemberId], [BargainId], [LikeTag], [CreatedDate]) VALUES (4, 1, 3040, 1, CAST(0x0000AB1101268FA1 AS DateTime))
GO
INSERT [dbo].[MemberLikes] ([Id], [MemberId], [BargainId], [LikeTag], [CreatedDate]) VALUES (5, 5, 3043, 0, CAST(0x0000AB13012421DB AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[MemberLikes] OFF
GO
SET IDENTITY_INSERT [dbo].[Notifications] ON 

GO
INSERT [dbo].[Notifications] ([Id], [MemberId], [Title], [Details], [ViewTag], [Tag]) VALUES (2021, 5, N'welcome', N'', 0, 1)
GO
INSERT [dbo].[Notifications] ([Id], [MemberId], [Title], [Details], [ViewTag], [Tag]) VALUES (2022, 2018, N'welcome', N'', 0, 1)
GO
INSERT [dbo].[Notifications] ([Id], [MemberId], [Title], [Details], [ViewTag], [Tag]) VALUES (2023, 2017, N'welcome', N'', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Notifications] OFF
GO
SET IDENTITY_INSERT [dbo].[SpecialType] ON 

GO
INSERT [dbo].[SpecialType] ([Id], [Descr], [EntryDate], [IsActive]) VALUES (1, N'Special', CAST(0x0000AB0B00000000 AS DateTime), 0)
GO
INSERT [dbo].[SpecialType] ([Id], [Descr], [EntryDate], [IsActive]) VALUES (2, N'Competition', CAST(0x0000AB0B00000000 AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[SpecialType] OFF
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_ViewTag]  DEFAULT ((0)) FOR [ViewTag]
GO
ALTER TABLE [dbo].[Notifications] ADD  CONSTRAINT [DF_Notifications_Tag]  DEFAULT ((0)) FOR [Tag]
GO
ALTER TABLE [dbo].[Testimonials] ADD  CONSTRAINT [DF_Testimonials_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
USE [master]
GO
ALTER DATABASE [Bargain_19] SET  READ_WRITE 
GO
