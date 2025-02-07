USE [master]
GO
/****** Object:  Database [HubbleSpace_Final]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE DATABASE [HubbleSpace_Final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HubbleSpace_Final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HubbleSpace_Final.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HubbleSpace_Final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\HubbleSpace_Final_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HubbleSpace_Final] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HubbleSpace_Final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ARITHABORT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HubbleSpace_Final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HubbleSpace_Final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HubbleSpace_Final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HubbleSpace_Final] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HubbleSpace_Final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET RECOVERY FULL 
GO
ALTER DATABASE [HubbleSpace_Final] SET  MULTI_USER 
GO
ALTER DATABASE [HubbleSpace_Final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HubbleSpace_Final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HubbleSpace_Final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HubbleSpace_Final] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HubbleSpace_Final] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HubbleSpace_Final]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/14/2021 8:35:36 PM ******/
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
/****** Object:  Table [dbo].[Account]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID_Account] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Level] [int] NOT NULL,
	[Date_Create] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DateOfBirth] [datetime2](7) NULL,
	[Gender] [int] NOT NULL,
	[CreditCard] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[level] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Banner]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[ID_Banner] [int] IDENTITY(1,1) NOT NULL,
	[Banner_Name] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Date_Upload] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID_Banner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[ID_Brand] [int] IDENTITY(1,1) NOT NULL,
	[Brand_Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID_Categorie] [int] IDENTITY(1,1) NOT NULL,
	[Category_Name] [nvarchar](100) NOT NULL,
	[Object] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID_Categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID_Client] [int] IDENTITY(1,1) NOT NULL,
	[Client_Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[CreditCard] [nvarchar](max) NULL,
	[ID_Account] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color_Product](
	[ID_Color_Product] [int] IDENTITY(1,1) NOT NULL,
	[Color_Name] [nvarchar](100) NOT NULL,
	[ID_Product] [int] NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Color_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Discount]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[ID_Discount] [int] IDENTITY(1,1) NOT NULL,
	[Code_Discount] [nvarchar](100) NOT NULL,
	[Expire] [datetime2](7) NOT NULL,
	[Value] [int] NOT NULL,
	[NumberofTurns] [int] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[ID_Discount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DiscountUsed]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountUsed](
	[ID_DiscountUsed] [int] IDENTITY(1,1) NOT NULL,
	[ID_Account] [int] NOT NULL,
	[ID_Discount] [int] NOT NULL,
 CONSTRAINT [PK_DiscountUsed] PRIMARY KEY CLUSTERED 
(
	[ID_DiscountUsed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID_Employee] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Name] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Gender] [int] NOT NULL,
	[Salary] [float] NOT NULL,
	[ID_Account] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Img_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Img_Product](
	[ID_Img_Product] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
 CONSTRAINT [PK_Img_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Img_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Date_Create] [datetime2](7) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Receiver] [nvarchar](max) NOT NULL,
	[SDT] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[Process] [nvarchar](max) NOT NULL,
	[AccountID_Account] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID_OrderDetail] [int] IDENTITY(1,1) NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
	[Size] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[ID_Order] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID_OrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID_Product] [int] IDENTITY(1,1) NOT NULL,
	[Product_Name] [nvarchar](100) NOT NULL,
	[Price_Product] [float] NOT NULL,
	[Price_Sale] [float] NOT NULL,
	[ID_Brand] [int] NOT NULL,
	[ID_Categorie] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Size]    Script Date: 1/14/2021 8:35:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[ID_Size_Product] [int] IDENTITY(1,1) NOT NULL,
	[SizeNumber] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID_Color_Product] [int] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[ID_Size_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210113103044_Db.init', N'3.1.10')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'Admin', N'Admin', NULL, NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'3f22dde0-b96d-4bfb-9683-52870cfa5785', N'pntt', N'PNTT', N'pntt220200@gmail.com', N'PNTT220200@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECKNSDWgm60WCfRZ17w8xHBA450vtYchPt9o+gdjldsfJUQ3dOGYjbVmo7Qu2xBMUA==', N'NQ62VGE7E5PUKVQNP6EY3JFGTRIMMIPD', N'b0f664f7-408a-4cca-8d38-a94900427238', NULL, 0, 0, NULL, 1, 0, N'Phạm', N'Trang', NULL, 0, NULL, NULL, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'a5355e6e-a3af-41d8-87ed-61d841d83a0e', N'pntt_admin', N'PNTT_ADMIN', N'pntt220200@gmail.com', N'PNTT220200@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEP565JYhnLq3OnlY5gNcSgEzB7b6RaN/OmqA1fTRuXxPuTdsYt+XXuaio/Bnc7x7iQ==', N'K4HEJSIDSF6VIZPUR4OBPWJCMWAMA5YF', N'0e24feff-993c-4fd2-a7ea-3e550d4d2f54', NULL, 0, 0, NULL, 1, 0, N'Phạm', N'Trang', NULL, 0, NULL, NULL, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName], [DateOfBirth], [Gender], [CreditCard], [Address], [level]) VALUES (N'debda812-f6d1-4314-972b-ab7bdb9427a6', N'pntt2202', N'PNTT2202', N'pntt220200@gmail.com', N'PNTT220200@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPEM4LVvP4e5Id05yIgnML7JjC4nURjVODsJiv6wv4pOgH1vmhBrraezTBOiJECbBw==', N'RPUK3S46YPBYD332OYEEXZ5SY43L7BLX', N'69e455d5-3ab2-4fe2-bb75-55b56bf84df9', NULL, 0, 0, NULL, 1, 0, N'Phạm', N'Trang', NULL, 0, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (1, N'Feel the boost', N'running-ss21-ultraboost-educate-hp-tc-d_tcm337-608343.jpg', CAST(N'2021-01-14 02:35:31.2600743' AS DateTime2))
INSERT [dbo].[Banner] ([ID_Banner], [Banner_Name], [Photo], [Date_Upload]) VALUES (2, N'Adidas Superstar 2020', N'orig-fw20-sstr-dec-tc-large-x2-womens-d_tcm221-610269.jpg', CAST(N'2021-01-14 02:35:39.8575382' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (1, N'Adidas')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (2, N'Nike')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (3, N'Puma')
INSERT [dbo].[Brand] ([ID_Brand], [Brand_Name]) VALUES (4, N'Reebok')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (1, N'Running', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (2, N'Running', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (3, N'Training', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (4, N'Training', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (5, N'Running', N'Kids')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (7, N'Football', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (8, N'Tennis', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (9, N'Tennis', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (10, N'Originals', N'Men')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (11, N'Originals', N'Women')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (12, N'Originals', N'Kids')
INSERT [dbo].[Category] ([ID_Categorie], [Category_Name], [Object]) VALUES (13, N'Basketball', N'Men')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Color_Product] ON 

INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (1, N'Dash Grey / Silver Metallic / Halo Silver', 1, N'Giay_Ultraboost_20_DNA_Xam_FX7957_01_standard (1).jpg', CAST(N'2021-01-08 23:04:47.8252147' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (2, N'Football Blue / Football Blue / Football Blue', 2, N'Ultraboost_20_Shoes_Blue_FX7978_01_standard (1).jpg', CAST(N'2021-01-08 23:06:47.2354928' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (3, N'Core Black / Iron Metallic / Football Blue', 2, N'Ultraboost_20_Shoes_Black_FX7979_01_standard.jpg', CAST(N'2021-01-08 23:07:03.6049762' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (4, N'Core Black / Core Black / Carbon', 3, N'Giay_Ultra_4D_5_DJen_G58160_01_standard.jpg', CAST(N'2021-01-09 16:00:16.4454560' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (5, N'Black/Anthracite/Volt/White', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG.jpg', CAST(N'2021-01-10 00:46:04.8088242' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (6, N'White/Cyber/Black/Racer Blue', 4, N'air-zoom-vomero-15-running-shoe-wqDgSG (1).jpg', CAST(N'2021-01-10 00:47:11.8718922' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (7, N'Cloud White / Cloud White / Dash Grey', 5, N'X9000L2_W_trang_FW8077_01_standard.jpg', CAST(N'2021-01-10 23:43:30.8388487' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (8, N'Core Black / Core Black / Grey Five', 5, N'X9000L2_W_DJen_EH0040_01_standard.jpg', CAST(N'2021-01-10 23:47:52.2681700' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (9, N'Core Black / Copper Metallic / Signal Pink', 5, N'X9000L2_W_DJen_EG5016_01_standard.jpg', CAST(N'2021-01-10 23:48:22.4051280' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (10, N'Puma Black', 6, N'Calibrate-Runner-Mono-Men''s-Shoes.jfif', CAST(N'2021-01-14 02:40:21.2387999' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (11, N'Vaporous Gray', 6, N'Calibrate-Runner-Mono-Men''s-Shoes (1).jfif', CAST(N'2021-01-14 02:50:38.7246325' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (12, N'Cloud White / Core Black / Cloud White', 7, N'Giay_Superstar_trang_EG4958_01_standard.jpg', CAST(N'2021-01-14 17:44:39.4728139' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (13, N'Cloud White / Core Black / Cloud White', 8, N'Giay_Superstar_trang_EG4958_01_standard.jpg', CAST(N'2021-01-14 17:44:58.4622561' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (14, N'Core Black / Cloud White / Core Black', 7, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', CAST(N'2021-01-14 17:46:02.2858533' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (15, N'Core Black / Cloud White / Core Black', 8, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', CAST(N'2021-01-14 17:46:11.6879597' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (16, N'Vast Grey/Summit White/White/Pink Glaze', 9, N'react-escape-run-running-shoe-94nDwX.jpg', CAST(N'2021-01-14 19:14:52.4587238' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (17, N'Summit White/Football Grey/Black/Metallic Gold Coin', 9, N'react-escape-run-running-shoe-94nDwX (8).jpg', CAST(N'2021-01-14 19:20:23.3506274' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (18, N'Pink Glow/Bright Crimson/Pink Foam/Black', 9, N'react-escape-run-running-shoe-94nDwX (14).jpg', CAST(N'2021-01-14 19:24:15.9224343' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (19, N'Black/White/Chile Red', 10, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz.jpg', CAST(N'2021-01-14 19:30:09.2833234' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (20, N'String/Cool Grey/Natural/Sail', 11, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh.jpg', CAST(N'2021-01-14 19:34:07.0317928' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (21, N'White/Dynamic Yellow/Voltage Purple', 12, N'lebron-17-low-basketball-shoe-kFcJdF.jpg', CAST(N'2021-01-14 19:39:18.2102733' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (22, N'Black/White/Light Smoke Grey', 13, N'metcon-6-flyease-training-shoe-qSW3lg.jpg', CAST(N'2021-01-14 19:42:39.4843018' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (23, N'Black/Metallic Pewter/Ice/Metallic Pewter', 14, N'metcon-6-amp-training-shoe-j2sbHB.jpg', CAST(N'2021-01-14 19:47:17.5334106' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (24, N'White/Green Abyss/Praline/Team Orange', 15, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk.jpg', CAST(N'2021-01-14 19:51:42.5600036' AS DateTime2))
INSERT [dbo].[Color_Product] ([ID_Color_Product], [Color_Name], [ID_Product], [Image], [Date]) VALUES (25, N'White/Binary Blue/University Red/White', 16, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g.jpg', CAST(N'2021-01-14 19:55:21.6858185' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Color_Product] OFF
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([ID_Discount], [Code_Discount], [Expire], [Value], [NumberofTurns]) VALUES (1, N'XUAN2021', CAST(N'2021-01-31 00:00:00.0000000' AS DateTime2), 200000, 100)
SET IDENTITY_INSERT [dbo].[Discount] OFF
SET IDENTITY_INSERT [dbo].[Img_Product] ON 

INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (1, N'Giay_Ultraboost_20_DNA_Xam_FX7957_02_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (2, N'Giay_Ultraboost_20_DNA_Xam_FX7957_03_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (3, N'Giay_Ultraboost_20_DNA_Xam_FX7957_04_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (4, N'Giay_Ultraboost_20_DNA_Xam_FX7957_05_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (5, N'Giay_Ultraboost_20_DNA_Xam_FX7957_010_hover_standard.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (6, N'Giay_Ultraboost_20_DNA_Xam_FX7957_41_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (7, N'Giay_Ultraboost_20_DNA_Xam_FX7957_42_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (8, N'Giay_Ultraboost_20_DNA_Xam_FX7957_43_detail.jpg', 1)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (9, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_01_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (10, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_02_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (11, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_03_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (12, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_04_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (13, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_05_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (14, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_06_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (15, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_010_hover_standard.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (16, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_41_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (17, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_42_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (18, N'Giay_UltraBoost_20_Mau_xanh_da_troi_FX7978_43_detail.jpg', 2)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (19, N'Giay_UltraBoost_20_DJen_FX7979_01_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (20, N'Giay_UltraBoost_20_DJen_FX7979_02_standard_hover.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (21, N'Giay_UltraBoost_20_DJen_FX7979_03_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (22, N'Giay_UltraBoost_20_DJen_FX7979_04_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (23, N'Giay_UltraBoost_20_DJen_FX7979_06_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (24, N'Giay_UltraBoost_20_DJen_FX7979_05_standard.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (25, N'Giay_UltraBoost_20_DJen_FX7979_41_detail.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (26, N'Giay_UltraBoost_20_DJen_FX7979_42_detail.jpg', 3)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (27, N'Giay_Ultra_4D_5_DJen_G58160_01_standard (1).jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (28, N'Giay_Ultra_4D_5_DJen_G58160_02_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (29, N'Giay_Ultra_4D_5_DJen_G58160_03_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (30, N'Giay_Ultra_4D_5_DJen_G58160_05_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (31, N'Giay_Ultra_4D_5_DJen_G58160_04_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (33, N'Giay_Ultra_4D_5_DJen_G58160_06_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (34, N'Giay_Ultra_4D_5_DJen_G58160_010_hover_standard.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (35, N'Giay_Ultra_4D_5_DJen_G58160_41_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (36, N'Giay_Ultra_4D_5_DJen_G58160_42_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (37, N'Giay_Ultra_4D_5_DJen_G58160_43_detail.jpg', 4)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (38, N'air-zoom-vomero-15-running-shoe-wqDgSG (1).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (39, N'air-zoom-vomero-15-running-shoe-wqDgSG (2).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (40, N'air-zoom-vomero-15-running-shoe-wqDgSG (3).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (41, N'air-zoom-vomero-15-running-shoe-wqDgSG (4).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (42, N'air-zoom-vomero-15-running-shoe-wqDgSG (5).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (43, N'air-zoom-vomero-15-running-shoe-wqDgSG (6).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (44, N'air-zoom-vomero-15-running-shoe-wqDgSG (7).jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (45, N'air-zoom-vomero-15-running-shoe-wqDgSG.jpg', 5)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (46, N'air-zoom-vomero-15-running-shoe-wqDgSG (8).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (47, N'air-zoom-vomero-15-running-shoe-wqDgSG (9).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (48, N'air-zoom-vomero-15-running-shoe-wqDgSG (10).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (49, N'air-zoom-vomero-15-running-shoe-wqDgSG (11).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (50, N'air-zoom-vomero-15-running-shoe-wqDgSG (12).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (51, N'air-zoom-vomero-15-running-shoe-wqDgSG (13).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (52, N'air-zoom-vomero-15-running-shoe-wqDgSG (14).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (53, N'air-zoom-vomero-15-running-shoe-wqDgSG (15).jpg', 6)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (54, N'X9000L2_W_trang_FW8077_01_standard (1).jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (55, N'X9000L2_W_trang_FW8077_02_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (56, N'X9000L2_W_trang_FW8077_03_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (57, N'X9000L2_W_trang_FW8077_04_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (58, N'X9000L2_W_trang_FW8077_05_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (59, N'X9000L2_W_trang_FW8077_06_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (60, N'X9000L2_W_trang_FW8077_010_hover_standard.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (61, N'X9000L2_W_trang_FW8077_41_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (62, N'X9000L2_W_trang_FW8077_42_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (63, N'X9000L2_W_trang_FW8077_43_detail.jpg', 7)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (64, N'X9000L2_W_DJen_EH0040_01_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (65, N'X9000L2_W_DJen_EH0040_02_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (66, N'X9000L2_W_DJen_EH0040_03_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (67, N'X9000L2_W_DJen_EH0040_04_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (68, N'X9000L2_W_DJen_EH0040_05_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (69, N'X9000L2_W_DJen_EH0040_06_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (70, N'X9000L2_W_DJen_EH0040_010_hover_standard.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (71, N'X9000L2_W_DJen_EH0040_41_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (72, N'X9000L2_W_DJen_EH0040_42_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (73, N'X9000L2_W_DJen_EH0040_43_detail.jpg', 8)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (74, N'X9000L2_W_DJen_EG5016_01_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (75, N'X9000L2_W_DJen_EG5016_02_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (76, N'X9000L2_W_DJen_EG5016_03_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (77, N'X9000L2_W_DJen_EG5016_04_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (78, N'X9000L2_W_DJen_EG5016_05_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (79, N'X9000L2_W_DJen_EG5016_06_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (80, N'X9000L2_W_DJen_EG5016_010_hover_standard.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (81, N'X9000L2_W_DJen_EG5016_41_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (82, N'X9000L2_W_DJen_EG5016_42_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (83, N'X9000L2_W_DJen_EG5016_43_detail.jpg', 9)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (84, N'Calibrate-Runner-Mono-Men''s-Shoes (1).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (85, N'Calibrate-Runner-Mono-Men''s-Shoes (2).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (86, N'Calibrate-Runner-Mono-Men''s-Shoes (3).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (87, N'Calibrate-Runner-Mono-Men''s-Shoes (4).jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (88, N'Calibrate-Runner-Mono-Men''s-Shoes.jpg', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (89, N'Calibrate-Runner-Mono-Men''s-Shoes (1).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (90, N'Calibrate-Runner-Mono-Men''s-Shoes (2).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (91, N'Calibrate-Runner-Mono-Men''s-Shoes (3).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (92, N'Calibrate-Runner-Mono-Men''s-Shoes (4).webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (93, N'Calibrate-Runner-Mono-Men''s-Shoes.webp', 10)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (94, N'Calibrate-Runner-Mono-Men''s-Shoes.webp', 11)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (95, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (96, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (97, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (98, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (99, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (100, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 15)
GO
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (102, N'Giay_Superstar_DJen_EG4959_010_hover_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (103, N'Giay_Superstar_DJen_EG4959_41_detail.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (104, N'Giay_Superstar_trang_EG4958_01_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (105, N'Giay_Superstar_trang_EG4958_02_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (106, N'Giay_Superstar_trang_EG4958_03_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (107, N'Giay_Superstar_trang_EG4958_010_hover_standard.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (108, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (109, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (110, N'Giay_Superstar_trang_EG4958_42_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (111, N'Giay_Superstar_trang_EG4958_43_detail.jpg', 12)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (112, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (113, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (114, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (115, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (116, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (117, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (118, N'Giay_Superstar_DJen_EG4959_01_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (119, N'Giay_Superstar_DJen_EG4959_02_standard.jpg', 15)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (120, N'Giay_Superstar_DJen_EG4959_03_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (121, N'Giay_Superstar_DJen_EG4959_04_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (122, N'Giay_Superstar_DJen_EG4959_05_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (123, N'Giay_Superstar_DJen_EG4959_06_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (124, N'Giay_Superstar_DJen_EG4959_010_hover_standard.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (125, N'Giay_Superstar_DJen_EG4959_41_detail.jpg', 14)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (126, N'Giay_Superstar_trang_EG4958_01_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (127, N'Giay_Superstar_trang_EG4958_02_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (128, N'Giay_Superstar_trang_EG4958_03_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (129, N'Giay_Superstar_trang_EG4958_010_hover_standard.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (130, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (131, N'Giay_Superstar_trang_EG4958_41_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (132, N'Giay_Superstar_trang_EG4958_42_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (133, N'Giay_Superstar_trang_EG4958_43_detail.jpg', 13)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (134, N'react-escape-run-running-shoe-94nDwX (1).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (135, N'react-escape-run-running-shoe-94nDwX (2).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (136, N'react-escape-run-running-shoe-94nDwX (3).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (137, N'react-escape-run-running-shoe-94nDwX (4).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (138, N'react-escape-run-running-shoe-94nDwX (5).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (139, N'react-escape-run-running-shoe-94nDwX (6).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (140, N'react-escape-run-running-shoe-94nDwX (7).jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (141, N'react-escape-run-running-shoe-94nDwX.jpg', 16)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (142, N'react-escape-run-running-shoe-94nDwX (8).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (143, N'react-escape-run-running-shoe-94nDwX (9).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (144, N'react-escape-run-running-shoe-94nDwX (10).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (145, N'react-escape-run-running-shoe-94nDwX (11).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (146, N'react-escape-run-running-shoe-94nDwX (12).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (147, N'react-escape-run-running-shoe-94nDwX (13).jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (148, N'react-escape-run-running-shoe-94nDwX.jpg', 17)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (149, N'react-escape-run-running-shoe-94nDwX (15).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (150, N'react-escape-run-running-shoe-94nDwX (16).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (151, N'react-escape-run-running-shoe-94nDwX (17).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (152, N'react-escape-run-running-shoe-94nDwX (18).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (153, N'react-escape-run-running-shoe-94nDwX (19).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (154, N'react-escape-run-running-shoe-94nDwX(14).jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (155, N'react-escape-run-running-shoe-94nDwX.jpg', 18)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (156, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (1).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (157, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (2).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (158, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (3).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (159, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (4).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (160, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (5).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (161, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (6).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (162, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (7).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (163, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz (8).jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (164, N'air-jordan-xxxv-pf-basketball-shoe-QrRrHz.jpg', 19)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (165, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (1).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (166, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (2).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (167, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (3).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (168, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (4).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (169, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (5).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (170, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (6).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (171, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (7).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (172, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh (8).jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (173, N'pg-4-pcg-ep-basketball-shoe-T7m8Lh.jpg', 20)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (174, N'lebron-17-low-basketball-shoe-kFcJdF (1).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (175, N'lebron-17-low-basketball-shoe-kFcJdF (2).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (176, N'lebron-17-low-basketball-shoe-kFcJdF (3).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (177, N'lebron-17-low-basketball-shoe-kFcJdF (4).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (178, N'lebron-17-low-basketball-shoe-kFcJdF (5).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (179, N'lebron-17-low-basketball-shoe-kFcJdF (6).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (180, N'lebron-17-low-basketball-shoe-kFcJdF (7).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (181, N'lebron-17-low-basketball-shoe-kFcJdF (8).jpg', 21)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (182, N'metcon-6-flyease-training-shoe-qSW3lg (1).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (183, N'metcon-6-flyease-training-shoe-qSW3lg (2).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (184, N'metcon-6-flyease-training-shoe-qSW3lg (3).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (185, N'metcon-6-flyease-training-shoe-qSW3lg (4).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (186, N'metcon-6-flyease-training-shoe-qSW3lg (8).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (187, N'metcon-6-flyease-training-shoe-qSW3lg (5).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (188, N'metcon-6-flyease-training-shoe-qSW3lg (6).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (189, N'metcon-6-flyease-training-shoe-qSW3lg (7).jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (190, N'metcon-6-flyease-training-shoe-qSW3lg.jpg', 22)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (191, N'metcon-6-amp-training-shoe-j2sbHB (1).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (192, N'metcon-6-amp-training-shoe-j2sbHB (2).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (193, N'metcon-6-amp-training-shoe-j2sbHB (3).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (194, N'metcon-6-amp-training-shoe-j2sbHB (4).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (195, N'metcon-6-amp-training-shoe-j2sbHB (5).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (196, N'metcon-6-amp-training-shoe-j2sbHB (6).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (197, N'metcon-6-amp-training-shoe-j2sbHB (7).jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (198, N'metcon-6-amp-training-shoe-j2sbHB.jpg', 23)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (199, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (1).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (200, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (2).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (201, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (3).jpg', 24)
GO
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (202, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (4).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (203, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (5).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (204, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk (6).jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (205, N'nikecourt-air-zoom-gp-turbo-hard-court-tennis-shoe-H2KvSk.jpg', 24)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (206, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (1).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (207, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (2).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (208, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (3).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (209, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (4).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (210, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (5).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (211, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (6).jpg', 25)
INSERT [dbo].[Img_Product] ([ID_Img_Product], [Photo], [ID_Color_Product]) VALUES (212, N'nikecourt-air-max-vapor-wing-tennis-shoe-S9Dg7g (7).jpg', 25)
SET IDENTITY_INSERT [dbo].[Img_Product] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (1, 0, CAST(N'2021-01-13 18:37:23.1041240' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (2, 0, CAST(N'2021-01-13 18:41:27.8669157' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (3, 0, CAST(N'2021-01-13 18:46:47.5946592' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (4, 0, CAST(N'2021-01-13 18:50:05.1883052' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (5, 0, CAST(N'2021-01-13 18:51:49.7340817' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (6, 0, CAST(N'2021-01-13 18:54:45.6713006' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (7, 4409000, CAST(N'2021-01-13 19:05:09.3889064' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (8, 14209000, CAST(N'2021-01-14 00:44:26.1239424' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (9, 4209000, CAST(N'2021-01-14 00:45:56.9632826' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (10, 13027000, CAST(N'2021-01-14 00:48:20.0478999' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (11, 5000000, CAST(N'2021-01-14 00:50:25.0014672' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (12, 5800000, CAST(N'2021-01-14 00:51:32.1687590' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (13, 4409000, CAST(N'2021-01-14 01:07:10.8416772' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (14, 4209000, CAST(N'2021-01-14 01:07:53.9659334' AS DateTime2), N'735 Trần Hưng Đạo P.8 Q.5 TP.HCM', N'Trần Huê', N'0909322125', N'18893080-eb71-44e3-a1a4-3e5ab378b53b', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (15, 6000000, CAST(N'2021-01-14 15:14:59.9392571' AS DateTime2), N'280 An Dương Vương ', N'Phạm Trang', N'0909888777', N'3f22dde0-b96d-4bfb-9683-52870cfa5785', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (16, 15209000, CAST(N'2021-01-14 15:18:57.0433081' AS DateTime2), N'280 An Dương Vương', N'Phạm Trang', N'0909888777', N'3f22dde0-b96d-4bfb-9683-52870cfa5785', N'Mới đặt', NULL)
INSERT [dbo].[Order] ([ID_Order], [TotalMoney], [Date_Create], [Address], [Receiver], [SDT], [UserId], [Process], [AccountID_Account]) VALUES (17, 3020000, CAST(N'2021-01-14 20:19:52.1076777' AS DateTime2), N'280 An Dương Vương', N'Phạm Trang', N'0909888777', N'debda812-f6d1-4314-972b-ab7bdb9427a6', N'Mới đặt', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (1, 5, N'EU 40', 1, 7)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (2, 2, N'10 UK', 1, 8)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (3, 2, N'11 UK', 1, 8)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (4, 6, N'EU 42', 1, 8)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (5, 5, N'EU 40', 1, 9)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (6, 5, N'EU 40', 1, 10)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (7, 5, N'EU 43', 1, 10)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (8, 6, N'EU 40', 1, 10)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (9, 1, N'10 UK', 1, 11)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (10, 4, N'10 UK', 1, 12)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (11, 5, N'EU 40', 1, 13)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (12, 5, N'EU 40', 1, 14)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (13, 4, N'10 UK', 1, 15)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (14, 4, N'8 UK', 1, 16)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (15, 2, N'5 UK', 1, 16)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (16, 6, N'EU 40', 1, 16)
INSERT [dbo].[OrderDetail] ([ID_OrderDetail], [ID_Color_Product], [Size], [Quantity], [ID_Order]) VALUES (17, 10, N'10 UK', 1, 17)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (1, N'ULTRABOOST 20 DNA', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (2, N'ULTRABOOST 20', 5000000, 5000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (3, N'ULTRA 4D 5', 6000000, 6000000, 1, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (4, N'Nike Air Zoom Vomero 15', 4409000, 4409000, 2, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (5, N'X9000L2 W', 2700000, 2160000, 1, 2)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (6, N'Calibrate Runner Mono', 3220000, 3220000, 3, 1)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (7, N'SUPERSTAR', 2400000, 2400000, 1, 11)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (8, N'SUPERSTAR', 2400000, 2400000, 1, 10)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (9, N'Nike React Escape Run', 2929000, 2929000, 2, 2)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (10, N'Air Jordan XXXV PF', 5129000, 5129000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (11, N'PG 4 PCG EP', 3239000, 3239000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (12, N'LeBron 17 Low', 4699000, 2818000, 2, 13)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (13, N'Nike Metcon 6 FlyEase', 3829000, 3829000, 2, 3)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (14, N'Nike Metcon 6 AMP', 4109000, 4109000, 2, 3)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (15, N'NikeCourt Air Zoom GP Turbo', 4109000, 4109000, 2, 8)
INSERT [dbo].[Product] ([ID_Product], [Product_Name], [Price_Product], [Price_Sale], [ID_Brand], [ID_Categorie]) VALUES (16, N'NikeCourt Air Max Vapor Wing Premium', 2929000, 2929000, 2, 8)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (1, N'3.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (2, N'4 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (3, N'4.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (4, N'6 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (5, N'6.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (6, N'EU 40', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (7, N'5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (8, N'5.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (9, N'7 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (10, N'7.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (11, N'8 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (12, N'8.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (13, N'9 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (14, N'9.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (15, N'10 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (16, N'10.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (17, N'11 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (18, N'11.5 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (19, N'12 UK', 100, 1)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (20, N'3.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (21, N'4 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (22, N'4.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (23, N'5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (24, N'5.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (25, N'6 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (26, N'6.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (27, N'7 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (28, N'7.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (29, N'8 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (30, N'8.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (31, N'9 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (32, N'9.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (33, N'10 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (34, N'10.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (35, N'11 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (36, N'11.5 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (37, N'12 UK', 100, 2)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (38, N'3.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (39, N'4 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (40, N'4.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (41, N'5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (42, N'5.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (43, N'6 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (44, N'6.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (45, N'7 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (46, N'7.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (47, N'8 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (48, N'8.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (49, N'9 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (50, N'9.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (51, N'10 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (52, N'10.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (53, N'11 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (54, N'11.5 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (55, N'12 UK', 100, 3)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (56, N'8 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (57, N'8.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (58, N'9 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (59, N'9.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (60, N'10 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (61, N'10.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (62, N'11 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (63, N'11.5 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (64, N'12 UK', 100, 4)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (65, N'EU 40.5', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (66, N'EU 41', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (67, N'EU 42', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (68, N'EU 43', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (69, N'EU 44', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (70, N'EU 41.5', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (71, N'EU 45', 100, 5)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (72, N'EU 40', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (73, N'EU 40.5', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (74, N'EU 41', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (75, N'EU 42', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (76, N'EU 43', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (77, N'EU 41.5', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (78, N'EU 44', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (79, N'EU 45', 100, 6)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (80, N'3.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (81, N'4 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (82, N'4.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (85, N'5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (86, N'5.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (87, N'6 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (88, N'6.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (89, N'7 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (90, N'7.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (91, N'8 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (94, N'8.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (95, N'9 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (96, N'9.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (97, N'10 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (98, N'10.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (99, N'11 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (100, N'11.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (101, N'12 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (102, N'3.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (103, N'4 UK', 100, 8)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (104, N'4.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (105, N'5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (106, N'5.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (107, N'6 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (108, N'6.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (109, N'7 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (110, N'7.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (111, N'8 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (112, N'8.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (113, N'9 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (114, N'9.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (115, N'10 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (116, N'10.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (117, N'11 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (118, N'11.5 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (119, N'12 UK', 100, 8)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (120, N'3.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (121, N'4 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (122, N'4.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (123, N'5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (124, N'5.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (125, N'6 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (126, N'6.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (127, N'7 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (128, N'7.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (129, N'8 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (130, N'8.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (131, N'9 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (132, N'9.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (133, N'10 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (134, N'10.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (135, N'11 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (136, N'11.5 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (137, N'12 UK', 100, 7)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (138, N'3.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (139, N'4 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (140, N'4.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (141, N'5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (142, N'5.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (143, N'6 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (144, N'6.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (145, N'7 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (146, N'7.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (147, N'8 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (148, N'8.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (149, N'9 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (150, N'9.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (151, N'10 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (152, N'10.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (153, N'11 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (154, N'11.5 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (155, N'12 UK', 100, 9)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (156, N'3.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (157, N'4 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (158, N'4.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (159, N'5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (160, N'5.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (161, N'6 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (162, N'6.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (163, N'7 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (164, N'7.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (165, N'8 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (166, N'8.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (167, N'9 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (168, N'9.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (169, N'10 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (170, N'10.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (171, N'11 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (172, N'11.5 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (173, N'12 UK', 100, 10)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (174, N'3.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (175, N'4 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (176, N'4.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (177, N'5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (178, N'5.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (179, N'6 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (180, N'6.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (181, N'7 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (182, N'7.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (183, N'8 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (184, N'8.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (185, N'9 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (186, N'9.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (187, N'10 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (188, N'10.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (189, N'11 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (190, N'11.5 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (191, N'12 UK', 100, 11)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (192, N'3.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (193, N'4 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (194, N'4.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (195, N'5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (196, N'5.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (197, N'6 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (198, N'6.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (199, N'7 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (200, N'7.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (201, N'8 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (202, N'8.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (203, N'9 UK', 100, 12)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (204, N'9.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (205, N'10 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (206, N'10.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (207, N'11 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (208, N'11.5 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (209, N'12 UK', 100, 12)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (210, N'3.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (211, N'4 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (212, N'4.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (213, N'5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (214, N'5.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (215, N'6 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (216, N'6.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (217, N'7 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (218, N'7.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (219, N'8 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (220, N'8.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (221, N'9 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (222, N'9.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (223, N'10 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (224, N'10.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (225, N'11 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (226, N'11.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (227, N'12 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (228, N'3.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (229, N'4 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (230, N'4.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (231, N'5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (232, N'5.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (233, N'6 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (234, N'6.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (235, N'7 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (236, N'7.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (237, N'8 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (238, N'8.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (239, N'9 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (240, N'9.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (241, N'10 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (242, N'10.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (243, N'11 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (244, N'11.5 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (245, N'12 UK', 100, 14)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (246, N'3.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (247, N'4 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (248, N'4.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (249, N'5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (250, N'5.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (251, N'6 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (252, N'6.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (253, N'7 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (254, N'7.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (255, N'8 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (256, N'8.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (257, N'9 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (258, N'9.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (259, N'10 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (260, N'10.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (261, N'11 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (262, N'11.5 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (263, N'12 UK', 100, 15)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (318, N'3.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (319, N'4 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (320, N'4.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (321, N'5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (322, N'5.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (323, N'6 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (324, N'6.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (325, N'7 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (326, N'7.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (327, N'8 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (328, N'8.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (329, N'9 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (330, N'9.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (331, N'10 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (332, N'10.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (333, N'11 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (334, N'11.5 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (335, N'12 UK', 100, 13)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (336, N'3.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (337, N'4 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (338, N'4.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (339, N'5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (340, N'5.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (341, N'6 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (342, N'6.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (343, N'7 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (344, N'7.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (345, N'8 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (346, N'8.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (347, N'9 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (348, N'9.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (349, N'10 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (350, N'10.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (351, N'11 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (352, N'11.5 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (353, N'12 UK', 100, 16)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (354, N'3.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (355, N'4 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (356, N'4.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (357, N'5 UK', 100, 17)
GO
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (358, N'5.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (359, N'6 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (360, N'6.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (361, N'7 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (362, N'7.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (363, N'8 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (364, N'8.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (365, N'9 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (366, N'9.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (367, N'10 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (368, N'10.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (369, N'11 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (370, N'11.5 UK', 100, 17)
INSERT [dbo].[Size] ([ID_Size_Product], [SizeNumber], [Quantity], [ID_Color_Product]) VALUES (371, N'12 UK', 100, 17)
SET IDENTITY_INSERT [dbo].[Size] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Client_ID_Account]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Client_ID_Account] ON [dbo].[Client]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Color_Product_ID_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Color_Product_ID_Product] ON [dbo].[Color_Product]
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountUsed_ID_Account]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_ID_Account] ON [dbo].[DiscountUsed]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DiscountUsed_ID_Discount]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_DiscountUsed_ID_Discount] ON [dbo].[DiscountUsed]
(
	[ID_Discount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_ID_Account]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ID_Account] ON [dbo].[Employee]
(
	[ID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Img_Product_ID_Color_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Img_Product_ID_Color_Product] ON [dbo].[Img_Product]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_AccountID_Account]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_AccountID_Account] ON [dbo].[Order]
(
	[AccountID_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Order_UserId]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Order_UserId] ON [dbo].[Order]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Color_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Color_Product] ON [dbo].[OrderDetail]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetail_ID_Order]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetail_ID_Order] ON [dbo].[OrderDetail]
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Brand]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Brand] ON [dbo].[Product]
(
	[ID_Brand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Product_ID_Categorie]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Product_ID_Categorie] ON [dbo].[Product]
(
	[ID_Categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Size_ID_Color_Product]    Script Date: 1/14/2021 8:35:36 PM ******/
CREATE NONCLUSTERED INDEX [IX_Size_ID_Color_Product] ON [dbo].[Size]
(
	[ID_Color_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Account_ID_Account]
GO
ALTER TABLE [dbo].[Color_Product]  WITH CHECK ADD  CONSTRAINT [FK_Color_Product_Product_ID_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Color_Product] CHECK CONSTRAINT [FK_Color_Product_Product_ID_Product]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_Account_ID_Account]
GO
ALTER TABLE [dbo].[DiscountUsed]  WITH CHECK ADD  CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount] FOREIGN KEY([ID_Discount])
REFERENCES [dbo].[Discount] ([ID_Discount])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DiscountUsed] CHECK CONSTRAINT [FK_DiscountUsed_Discount_ID_Discount]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Account_ID_Account] FOREIGN KEY([ID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Account_ID_Account]
GO
ALTER TABLE [dbo].[Img_Product]  WITH CHECK ADD  CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Img_Product] CHECK CONSTRAINT [FK_Img_Product_Color_Product_ID_Color_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account_AccountID_Account] FOREIGN KEY([AccountID_Account])
REFERENCES [dbo].[Account] ([ID_Account])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account_AccountID_Account]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Color_Product_ID_Color_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order_ID_Order] FOREIGN KEY([ID_Order])
REFERENCES [dbo].[Order] ([ID_Order])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order_ID_Order]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand_ID_Brand] FOREIGN KEY([ID_Brand])
REFERENCES [dbo].[Brand] ([ID_Brand])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand_ID_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_ID_Categorie] FOREIGN KEY([ID_Categorie])
REFERENCES [dbo].[Category] ([ID_Categorie])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_ID_Categorie]
GO
ALTER TABLE [dbo].[Size]  WITH CHECK ADD  CONSTRAINT [FK_Size_Color_Product_ID_Color_Product] FOREIGN KEY([ID_Color_Product])
REFERENCES [dbo].[Color_Product] ([ID_Color_Product])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Size] CHECK CONSTRAINT [FK_Size_Color_Product_ID_Color_Product]
GO
USE [master]
GO
ALTER DATABASE [HubbleSpace_Final] SET  READ_WRITE 
GO
