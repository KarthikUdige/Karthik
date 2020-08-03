USE [MovieListDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 03-Aug-20 11:00:20 AM ******/
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
/****** Object:  Table [dbo].[Actors]    Script Date: 03-Aug-20 11:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[ActorId] [int] IDENTITY(1,1) NOT NULL,
	[ActorName] [nvarchar](250) NULL,
	[Sex] [nvarchar](32) NULL,
	[Dob] [datetime] NOT NULL,
	[Bio] [nvarchar](250) NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[ActorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 03-Aug-20 11:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[MovieId] [int] IDENTITY(1,1) NOT NULL,
	[ProducerId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
	[MovieName] [nvarchar](250) NULL,
	[Plot] [nvarchar](128) NULL,
	[YearOfRealse] [datetime] NOT NULL,
	[Poster] [nvarchar](128) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producers]    Script Date: 03-Aug-20 11:00:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producers](
	[ProducerId] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NOT NULL,
	[ProducerName] [nvarchar](250) NULL,
	[Sex] [nvarchar](32) NULL,
	[Dob] [datetime] NOT NULL,
	[Bio] [nvarchar](250) NULL,
 CONSTRAINT [PK_producers] PRIMARY KEY CLUSTERED 
(
	[ProducerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200801145639_InitialCreate', N'2.2.6-servicing-10079')
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 
GO
INSERT [dbo].[Actors] ([ActorId], [ActorName], [Sex], [Dob], [Bio]) VALUES (1, N'Prabhas', N'M', CAST(N'2019-02-06T03:07:00.000' AS DateTime), N'Mumbai')
GO
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 
GO
INSERT [dbo].[Movies] ([MovieId], [ProducerId], [ActorId], [MovieName], [Plot], [YearOfRealse], [Poster]) VALUES (1, 101, 201, N'Baahubali', N'Delhi', CAST(N'2019-02-06T03:07:00.000' AS DateTime), N'cube')
GO
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[producers] ON 
GO
INSERT [dbo].[producers] ([ProducerId], [MovieId], [ProducerName], [Sex], [Dob], [Bio]) VALUES (1, 1, N'Rajamouli ', N'M', CAST(N'2019-02-06T03:07:00.000' AS DateTime), N'Delhi')
GO
SET IDENTITY_INSERT [dbo].[producers] OFF
GO
