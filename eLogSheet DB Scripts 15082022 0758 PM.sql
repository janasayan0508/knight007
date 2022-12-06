USE [eLogSheet]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserDetails]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetUserDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProductionParametersForDepttByrDateTEST]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetProductionParametersForDepttByrDateTEST]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProductionParametersForDepttByrDate]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetProductionParametersForDepttByrDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetParametersListForDepartment]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetParametersListForDepartment]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFreqDetails]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetFreqDetails]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDashboardParametersByDate]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetDashboardParametersByDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAnnouncementsForDate]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP PROCEDURE [dbo].[sp_GetAnnouncementsForDate]
GO
ALTER TABLE [dbo].[Title] DROP CONSTRAINT [FK__Title__DId__6D9742D9]
GO
ALTER TABLE [dbo].[Section] DROP CONSTRAINT [FK__Section__DId__6CA31EA0]
GO
ALTER TABLE [dbo].[Machine] DROP CONSTRAINT [FK__Machine__DId__6BAEFA67]
GO
ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK__Equipment__DId__6ABAD62E]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/15/2022 7:57:52 PM ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Verification]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Verification]') AND type in (N'U'))
DROP TABLE [dbo].[Verification]
GO
/****** Object:  Table [dbo].[Val$]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Val$]') AND type in (N'U'))
DROP TABLE [dbo].[Val$]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Title]') AND type in (N'U'))
DROP TABLE [dbo].[Title]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Section]') AND type in (N'U'))
DROP TABLE [dbo].[Section]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Parameter]') AND type in (N'U'))
DROP TABLE [dbo].[Parameter]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Machine]') AND type in (N'U'))
DROP TABLE [dbo].[Machine]
GO
/****** Object:  Table [dbo].[Incident]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Incident]') AND type in (N'U'))
DROP TABLE [dbo].[Incident]
GO
/****** Object:  Table [dbo].[FValue]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FValue]') AND type in (N'U'))
DROP TABLE [dbo].[FValue]
GO
/****** Object:  Table [dbo].[Frequency]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Frequency]') AND type in (N'U'))
DROP TABLE [dbo].[Frequency]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipment]') AND type in (N'U'))
DROP TABLE [dbo].[Equipment]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Department]') AND type in (N'U'))
DROP TABLE [dbo].[Department]
GO
/****** Object:  Table [dbo].[Delay]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Delay]') AND type in (N'U'))
DROP TABLE [dbo].[Delay]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Data]') AND type in (N'U'))
DROP TABLE [dbo].[Data]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Announcement]') AND type in (N'U'))
DROP TABLE [dbo].[Announcement]
GO
/****** Object:  Table [dbo].[aa$]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aa$]') AND type in (N'U'))
DROP TABLE [dbo].[aa$]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/15/2022 7:57:52 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aa$]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aa$](
	[Id] [nvarchar](255) NULL,
	[DId] [float] NULL,
	[MId] [float] NULL,
	[EId] [float] NULL,
	[TId] [float] NULL,
	[SId] [float] NULL,
	[FId] [float] NULL,
	[Name] [nvarchar](255) NULL,
	[Desc] [nvarchar](255) NULL,
	[Datatype] [nvarchar](255) NULL,
	[IsNumber] [bit] NOT NULL,
	[Min] [float] NULL,
	[Max] [float] NULL,
	[Regex] [nvarchar](255) NULL,
	[IsRequired] [bit] NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[Unit] [nvarchar](255) NULL,
	[InpType] [nvarchar](255) NULL,
	[InpValues] [nvarchar](255) NULL,
	[InpField] [nvarchar](255) NULL,
	[IsDP] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FY] [int] NULL,
	[Q] [int] NULL,
	[DT] [date] NULL,
	[VisibleTo] [varchar](50) NULL,
	[MsgTitle] [varchar](150) NULL,
	[MsgDesc] [varchar](250) NULL,
	[MsgUrl] [varchar](150) NULL,
	[MsgDtStart] [datetime] NULL,
	[MsgDtEnd] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Announcment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LastLogin] [datetime] NULL,
	[LastLoginIP] [varchar](50) NULL,
	[UserAgent] [varchar](500) NULL,
	[DId] [varchar](20) NULL,
	[FullName] [varchar](150) NULL,
	[Designation] [varchar](50) NULL,
	[Organization] [varchar](50) NULL,
	[SCode] [varchar](50) NULL,
	[M1] [varchar](150) NULL,
	[M2] [varchar](150) NULL,
	[M3] [varchar](150) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Data]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Data](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FY] [int] NULL,
	[Q] [int] NULL,
	[DT] [date] NULL,
	[DId] [int] NULL,
	[SId] [int] NULL,
	[MId] [int] NULL,
	[EId] [int] NULL,
	[TId] [int] NULL,
	[PId] [int] NULL,
	[PName] [varchar](50) NULL,
	[PF] [varchar](50) NULL,
	[PFT] [varchar](50) NULL,
	[PFV] [varchar](50) NULL,
	[PDT] [varchar](50) NULL,
	[PDV] [varchar](150) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](18, 2) NULL,
	[txtValue] [varchar](150) NULL,
	[bitValue] [bit] NULL,
	[dtValue] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Data] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delay]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delay](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FY] [int] NULL,
	[Q] [int] NULL,
	[DT] [date] NULL,
	[DId] [int] NULL,
	[SId] [int] NULL,
	[MId] [int] NULL,
	[EId] [int] NULL,
	[TId] [int] NULL,
	[PId] [int] NULL,
	[PName] [varchar](50) NULL,
	[PF] [varchar](50) NULL,
	[PFT] [varchar](50) NULL,
	[PFV] [varchar](50) NULL,
	[PDT] [varchar](50) NULL,
	[PDV] [varchar](150) NULL,
	[DtStart] [datetime] NULL,
	[DtEnd] [datetime] NULL,
	[HH] [int] NULL,
	[MM] [int] NULL,
	[SS] [int] NULL,
	[Agency] [varchar](50) NULL,
	[Reason] [varchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Delay] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
	[Shifts] [int] NULL,
	[Contact] [varchar](50) NULL,
	[Email] [varchar](150) NULL,
	[Head] [varchar](50) NULL,
	[MaxNo] [varchar](50) NULL,
	[SName] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DId] [int] NULL,
	[MId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
	[IsEnabled] [bit] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Frequency]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Frequency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Freq] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[NH] [int] NULL,
 CONSTRAINT [PK_Frequency] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FValue]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FValue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FId] [int] NULL,
	[FType] [varchar](50) NULL,
	[FValue] [varchar](50) NULL,
	[UpdatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_FValue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Incident]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Incident](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FY] [int] NULL,
	[Q] [int] NULL,
	[DT] [date] NULL,
	[DId] [int] NULL,
	[SId] [int] NULL,
	[MId] [int] NULL,
	[EId] [int] NULL,
	[TId] [int] NULL,
	[PId] [int] NULL,
	[PName] [varchar](50) NULL,
	[PF] [varchar](50) NULL,
	[PFT] [varchar](50) NULL,
	[PFV] [varchar](50) NULL,
	[IncDate] [datetime] NULL,
	[Agency] [varchar](50) NULL,
	[Reason] [varchar](150) NULL,
	[BriefDesc] [varchar](500) NULL,
	[ShiftInc] [varchar](150) NULL,
	[IncLocation] [varchar](150) NULL,
	[IncType] [varchar](150) NULL,
	[MsrsTaken] [varchar](150) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Machine]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Machine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
	[IsEnabled] [bit] NULL,
 CONSTRAINT [PK_Machine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parameter]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parameter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DId] [int] NULL,
	[MId] [int] NULL,
	[EId] [int] NULL,
	[TId] [int] NULL,
	[SId] [int] NULL,
	[FId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](150) NULL,
	[Datatype] [varchar](50) NULL,
	[IsNumber] [bit] NULL,
	[Min] [decimal](18, 0) NULL,
	[Max] [decimal](18, 0) NULL,
	[Regex] [varchar](150) NULL,
	[IsRequired] [bit] NULL,
	[IsEnabled] [bit] NULL,
	[Unit] [varchar](50) NULL,
	[InpType] [varchar](20) NULL,
	[InpValues] [varchar](250) NULL,
	[InpField] [varchar](20) NULL,
	[IsDP] [bit] NULL,
 CONSTRAINT [PK_Parameter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
	[IsEnabled] [bit] NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Desc] [varchar](50) NULL,
	[IsEnabled] [bit] NULL,
	[Remarks] [varchar](50) NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Val$]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Val$](
	[Id] [nvarchar](255) NULL,
	[FId] [float] NULL,
	[FType] [nvarchar](255) NULL,
	[FValue] [nvarchar](255) NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Verification]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Verification](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](150) NULL,
	[SCode] [varchar](50) NULL,
	[CallBackUrl] [varchar](500) NULL,
	[CreatedOn] [datetime] NULL,
	[ExpiringOn] [datetime] NULL,
	[Used] [int] NULL,
	[IpAddress] [varchar](50) NULL,
	[DeviceUsed] [varchar](50) NULL,
	[UserAgent] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202207151047307_InitialCreate', N'eLogSheet.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EDC36107D2FD07F10F4D416CECA9726488DDD14CEDA6E8DC617649DA06F0157E2AE85489422518E8D225FD6877E527FA14389BAF1A2CBAEBCBB2E02042B727866381C92C3E1D0FFFEFDCFF8D707DF33EE7114BB01999807A37DD3C0C40E1C972C276642172F5E9BBFBEF9FEBBF199E33F181F73BA2346072D493C31EF280D8F2D2BB6EFB08FE291EFDA5110070B3AB203DF424E601DEEEFFF621D1C5818204CC0328CF1FB8450D7C7E9077C4E0362E39026C8BB0C1CECC5BC1C6A6629AA71857C1C87C8C61313BF0B96B33B8CE928A3358D13CF4520C70C7B0BD3408404145190F2F8438C67340AC872164201F26E1F430C740BE4C5984B7F5C9277EDC8FE21EB885536CCA1EC24A681DF13F0E0886BC6129BAFA45FB3D01CE8EE0C744C1F59AF53FD4DCC0B07A745EF030F1420323C9E7A11239E9897058B9338BC024DE70D4719E47904705F83E8F3A88AB867746EB75758D2E1689FFDDB33A6894793084F084E6884BC3DE326997BAEFD077EBC0D3E6332393A982F8E5EBF7C859CA3573FE3A397D59E425F81AE560045375110E20864C38BA2FFA661D5DB5962C3A259A54DA615B0259814A671891EDE61B2A477305D0E5F9BC6B9FB809DBC841BD707E2C21C8246344AE0F32AF13C34F770516F35F264FF37703D7CF96A10AE57E8DE5DA6432FF0878913C1BC7A8FBDB436BE73C36C7AD5C6FB13273B8F029F7DD7ED2BABFD340B92C8669D09B424B7285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B20EAD321372169B9E0DB9BC4FCBB7B3C59D84210C5E6A5A4C234D06276E5523A1ED9E5150946673D0D56C0874E7FFBC0A9EF9C8F50658063B7001FF63E1463E2E7AF93600A343A4B7CC37288E6115707E47F15D83E8F07300D167D84E2230CE19457EF8E4DC6EEE0282AF127FCE6C7E73BC061B9ADBAFC139B269109D11D66A6DBC7781FD3948E819714E11C51FA89D03B2CF5BD7EF0E30883827B68DE3F81C8C193BD300DCEB1CF082D0A3C3DE706C79DAB61B32F590EBABFD106121FD949396BE889A42F24734642A9FA4495458C65DD24DD49C542F6A46D12A2A27EB2B2A03EB2629A7D40B9A12B4CA99510DE6E5A52334BC9B97C2EEBE9FB7DEE6AD5B0B2A6A9CC10A897FC30447B08C393788521C917204BAAC1BDB7016D2E1634C9F7C6F4A397D445E3234AB956643BA080C3F1B52D8DD9F0DA998507CEF3ACC2BE970F8C98901BE13BDFA5CD53EE704C9363D1D6ADDDC34F3CDAC01BAE97212C781EDA6B34011F6E2418BBAFCE0C319ED118CAC376214043A0686EEB22D0F4AA06FA66854D7E4147B9862E3C4CEC2825314DBC891D5081D727A0896EFA80AC1CA68485DB89F249E60E938628D103B04C530535D42E569E112DB0D91D7AA25A165C72D8CF5BDE021D69CE21013C6B055135D98AB831F4C80828F30286D1A1A5B158B6B36448DD7AA1BF33617B61C772926B1119B6CF19D3576C9FDB72731CC668D6DC0389B55D245006D206F1B06CACF2A5D0D403CB8EC9A810A27268D8172976A23065AD7D8160CB4AE926767A0D911B5EBF80BE7D55D33CFFA4179F3DB7AA3BAB6609B357DEC986966BE27B4A1D00247B2799ECE59257EA08AC319C8C9CF67317775451361E0334CEB219BD2DF55FAA156338868444D80A5A1B580F22B4009489A503D84CB63798DD2712FA2076C1E776B84E56BBF005BB10119BB7A155A21D45F988AC6D9E9F451F4ACB006C9C83B1D162A380A831017AF7AC73B284517979515D3C517EEE30D573AC607A341412D9EAB4649796706D7526E9AED5A5239647D5CB2B5B424B84F1A2DE59D195C4BDC46DB95A4700A7AB8056BA9A8BE850F34D9F24847B1DB1475632BCB8FE205634B934835BE4461E8926525B18A9718B32CAB6AFA62D63FE1C8CF302C3B56E41D15D2169C6810A125166A8135487AEE46313D4514CD118BF34C1D5F2253EEAD9AE53F6759DD3EE541CCF7819C9AFDCE5A4817F7B59D56764538C239F4CF67FE4C1A44578CBEBAB9C1D2DC90872245DC7E1A78894FF4EE95BE75767B576D9F95C808634B905F729F245D494E6E5DF19D86459E12830C51E1BBAC3E4C7A089DB273CFB3AA6E9D37AA47C9835355145DC06A6BC3A673627A0C95E81DF61FA95684A799533C25A50AC08B7A6254B21A24B04A5D77D47AE24915B35ED31D51C82EA9420A553DA4ACE690D484AC56AC84A7D1A89AA23B07396BA48A2ED7764756E48F54A115D52B602B6416EBBAA32A524CAAC08AEAEED865BE89B884EEF0AEA53DB3ACB86D6587DAF5F62D0DC6D3AC87C36C7B95BBFB2A50A5B82716BF9D97C078F94EDA92F664B7A22D65918CF56C4983A15F756A77DEF545A7F1A25E8F59BBC8AE2DEC4D17F97ABC7E16FBA476211DEB4492827B71BC138E71637EA46A7F34239DB13212D3C8D5089BFA634CB13F6204A3D9176FEAB9982DE139C12522EE02C7344BDE300FF70F0E859737BBF30AC68A63C7531C49754F61EA63B6813C2C728F22FB0E457256C41A2F454A5029E07C411CFC3031FF4A5B1DA7B10BF62B2DDE332EE20FC4FD9240C56D9460E39B9CE5394CE67C87B71A85A0DF9EC52388EE2ABFF8F353D674CFB88E603A1D1BFB82A25719FEFAD3885ED2644DD79066E50713CF77B6D55E24285185D9B2FA0384B94B07797C904BF9838F1E7EEC2B9AF281C15A888A470443E10DA242DD238155B0B40F041CF8A4E903817E9D553F18584534ED630197F407139F0A745F86F2965BDC8714C7A54D2C49A99E5B53ADD7CABBDCF6DE246564AF35D1E5ACEB1E70836656AFE7A23CB38CE5C1B64E4542F260D8DBB4FB27CF42DE95C4E3D269DF6EBEF126538C1BAE92FE5799C53B900BA7C8EDD97EFEF0A66D4D17FFDDF124CC7E59C23B666C7C9BDF7E2EF0A68D4D1720DE7163EB95F1BB63B6B6ADFD73CB96D6790BDD7AFEAE9C8AA4B9C7514591DBF273B3903B1CFFE7011841E65166CF2AD509614DC9AC2D0C4B123D537D269AC8589A38125F89A2996DBFBEF20DBFB1B39CA699AD267FB389375FFF1B79739A66DE9AACC86D64162BF31255D9DE2DEB5853E2D473CA24AEF5A42571BDCD676DBC947F4E89C38328A5367B34B7CBCF274F7810950C39757AE405CB17C5B07756FE0623ECDFB1BB2C21D85F6424D8AEED9A05CD055904F9E62D48949308119A4B4C91035BEA4944DD05B22954B30074FA2E3C0DEAB16B9039762EC87542C3844297B13FF76A012FE60434F14F939FEB328FAF43F6150FD10510D36581FB6BF236713DA790FB5C1113D24030EF82877BD9585216F65D3E16485701E908C4D5573845B7D80F3D008BAFC90CDDE3556403F37B8797C87E2C23803A90F681A8AB7D7CEAA26584FC986394EDE1136CD8F11FDEFC071F2F22F18A540000, N'6.4.4')
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 1, 0, 0, 0, 0, 1, N'Plan', N'Pushing Plan', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 1, 0, 0, 0, 0, 1, N'Pushings', N'Pushing Actual', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 1, 0, 0, 0, 0, 2, N'Door Cleaned', N'Door Cleaned', N'int', 1, 0, 1000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 1, 0, 0, 0, 0, 2, N'Coal Charged', N'Coal Charged', N'int', 1, 0, 100000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 1, 0, 0, 0, 0, 2, N'Frame Cleaned', N'Frame Cleaned', N'int', 1, 0, 1000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N'O/L Sent to BF', N'O/L Sent to BF', N'int', 1, 0, 5000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N'Screened', N'Screened', N'int', 1, 0, 5000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N'Iron Ore Fines Receipt', N'Iron Ore Fines Receipt', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N'L/S BF Grade Receipt', N'Lime Stone BF Grade Receipt', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N' Iron Ore FInes Tippling', N' Iron Ore FInes Tippling', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 2, 0, 0, 0, 0, 2, N'L/S BF Grade Tippling', N'Lime Stone BF Grade Tippling', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'M/C-I Production', N'Production of Sinter Plant of M/C-I', N'int', 1, 0, 3000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'M/C-II Production', N'Production of Sinter Plant of M/C-II', N'int', 1, 0, 3000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'M/C-III Production', N'Production of Sinter Plant of M/C-III', N'int', 1, 0, 3000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'Sinter Stock on Bed', N'Sinter Stock on Bed', N'int', 1, 0, 50000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'Pellet taken from Bed', N'Pellet taken from Bed', N'int', 1, 0, 1000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 3, 0, 0, 0, 0, 2, N'Pellet Stock on Bed', N'Pellet Stock on Bed', N'int', 1, 0, 5000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 4, 0, 0, 0, 0, 2, N'Hot Metal', N'Hot Metal production', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 4, 0, 0, 0, 0, 2, N'Load to PCM', N'Load to PCM', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 4, 0, 0, 0, 0, 2, N'Load to FDY', N'Load to FDY', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 5, 0, 0, 0, 0, 2, N'Crude Steel', N'Total Crude Steel in SMS New', N'int', 1, 0, 20000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 5, 0, 0, 0, 0, 2, N'Heats Made', N'Heats Made', N'int', 1, 0, 20, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 5, 0, 0, 0, 0, 2, N'Heat Casts', N'Heat Casts', N'int', 1, 0, 50, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 6, 0, 0, 0, 0, 2, N'Crude Steel', N'Total Crude Steel in SMS New', N'int', 1, 0, 20000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'Coils', N'Total no of Slab Rolled', N'int', 1, 0, NULL, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'Tonnage', N'Total no. of Coil made', N'int', 1, 0, NULL, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'Coil Shipment', N'For Coil Shipment', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'For HRCF', N'For HRCF', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'For CRM', N'Form CRM', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 7, 0, 0, 0, 0, 2, N'For CRM3', N'For CRM3', N'int', 1, 0, 200, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 8, 0, 0, 0, 0, 2, N'Plate', N'Plate Production', N'int', 1, 0, 50, NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 8, 0, 0, 0, 0, 2, N'Sheet', N'Sheet Production', N'int', 1, 0, 1000, NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 8, 0, 0, 0, 0, 2, N'Stock at ACY', N'Stock at ACY', N'int', 1, 0, 50, NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 8, 0, 0, 0, 0, 2, N'Stock at OCY', N'Stock at OCY', N'int', 1, 0, 3000, NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'PL#1 Production', N'Production of PL-1', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'PL#2 Production', N'Production of PL-2', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'TM#1 Production', N'Production of TM-1', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'TM#2 Production', N'Production of TM-2', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'SPM#1 Production', N'Production of SPM-1', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 2, N'SPM#2 Production', N'Production of SPM-2', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 9, 0, 0, 0, 0, 3, N'Stock', N'CR Saleable(P)', N'int', 1, 0, 30, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'HRCC Stock', N'HRCC Stock', N'int', 1, 0, 1000, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'PLTCM Production', N'Production data: PLTCM ', N'int', 1, 0, 100, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'BAF/L', N'Production data: BAF/L', N'int', 1, 0, 50, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'BAF/UL', N'Production data: BAF/UL', N'int', 1, 0, 50, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'SPM#3 Production', N'Production data: SPM3-COIL', N'int', 1, 0, 50, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[aa$] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (NULL, 10, 0, 0, 0, 0, 2, N'SPM#3 Production', N'Production data: SPM3-TONN', N'int', 1, 0, 1000, NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
SET IDENTITY_INSERT [dbo].[Announcement] ON 
GO
INSERT [dbo].[Announcement] ([Id], [FY], [Q], [DT], [VisibleTo], [MsgTitle], [MsgDesc], [MsgUrl], [MsgDtStart], [MsgDtEnd], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2022, 2, CAST(N'2022-08-11' AS Date), N' ', N'Participate in har ghar tiranga compaign', N'Please participate in har ghar tiranga campaign and be part of Azadi ka Amrit Mahotsav in 75th year of independence.', N'https://harghartiranga.com/', CAST(N'2022-08-11T23:10:41.000' AS DateTime), CAST(N'2022-08-15T23:10:00.000' AS DateTime), CAST(N'2022-08-11T23:13:36.487' AS DateTime), N'DICBSL', CAST(N'2022-08-11T23:13:36.487' AS DateTime), N'DICBSL')
GO
SET IDENTITY_INSERT [dbo].[Announcement] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'62ce2006-beb5-4b60-9711-a04e7b0ffba4', N'Admin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f309e207-6e70-4378-bf52-12b205199294', N'CGM')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'e075d4f3-c60c-4345-bfa9-2f7ee556f3b4', N'DIC')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'771e4ac8-77ac-40b4-9e50-3e006377c426', N'ED')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'859b3205-fdc6-47b2-b196-1753159ce4ee', N'62ce2006-beb5-4b60-9711-a04e7b0ffba4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bf070342-f07c-4f33-b448-4ea10bb7c901', N'771e4ac8-77ac-40b4-9e50-3e006377c426')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2b6bf227-a47e-4539-a82f-908199d550ef', N'e075d4f3-c60c-4345-bfa9-2f7ee556f3b4')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'004493ae-098a-4528-8f13-26a2fccf11da', N'f309e207-6e70-4378-bf52-12b205199294')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e08f79ef-c764-4056-b819-6d8a6647c234', N'f309e207-6e70-4378-bf52-12b205199294')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'004493ae-098a-4528-8f13-26a2fccf11da', N'cgm@sail.in', 0, N'ADQatyCa3XsgCvs69hFB/xKJ8kkQt3SfZmlB1KqqumDKbjM5EL47MBpRh3NuaXuReg==', N'fa641c60-db1f-496a-a30a-3f47c5d3b84e', N'8888888888', 0, 0, NULL, 0, 0, N'000000', CAST(N'2022-08-12T15:50:29.663' AS DateTime), N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', NULL, N'CGM', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'2b6bf227-a47e-4539-a82f-908199d550ef', N'dicbsl@sail.in', 0, N'AAHgXpwFiddeTtaQ0G4Jng/GlRbEAJaaa4QWS+wcbzMzsrC/MQ7p1w0HM4HFpshitQ==', N'85119785-cd5a-4242-a436-6ef071392f3f', N'8888888888', 0, 0, NULL, 0, 0, N'DICBSL', NULL, NULL, NULL, NULL, N'Director Incharge', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'859b3205-fdc6-47b2-b196-1753159ce4ee', N'admin@sail.in', 0, N'AOk8Yg106nZXhKJSEVHoa4ejimwb3oAwVOT2SIEtyVKwoyTe/oVr6oleLvU8xQm71w==', N'4222b8f7-8983-41b9-a2d5-b8dcc1ac6ef4', N'8888888888', 0, 0, NULL, 0, 0, N'Admin', CAST(N'2022-08-12T22:17:17.703' AS DateTime), N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', NULL, N'Administrator', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'bf070342-f07c-4f33-b448-4ea10bb7c901', N'edwbsl@sail.in', 0, N'APTPaCJqqrfDOp3Oj38GDtYb0KtJ4i9zT2YlYVF0GEhg36WtjKNRyoYQhN312tqlsw==', N'93937526-7838-4ac1-9ac5-96b52456a4be', N'8888888888', 0, 0, NULL, 0, 0, N'EDWBSL', CAST(N'2022-08-12T22:11:11.443' AS DateTime), N'127.0.0.1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', NULL, N'ED WORKS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'e08f79ef-c764-4056-b819-6d8a6647c234', N'cgmhsm@sail.in', 0, N'AKoN92xKniNNuZuIvli19D5a36sYu3avkay8353UuEn4KrqUsYM+4SXmlH2iNsHKig==', N'3c838161-3121-4a89-8da9-c0c3b67ac3e9', N'8888888888', 0, 0, NULL, 0, 0, N'CGMHSM', NULL, NULL, NULL, NULL, N'CGM HSM', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [LastLogin], [LastLoginIP], [UserAgent], [DId], [FullName], [Designation], [Organization], [SCode], [M1], [M2], [M3]) VALUES (N'fa9d6566-8508-4868-adbf-128580b50f7b', N'abc@xyz.com', 0, N'AB7hvEtlnaG0CehSANhfZEjbO5t+4yC/BQYX1a4NgR2FJzG4YPnxgxyqXz47Zf+wOg==', N'1bcfbeba-0cbe-406b-9d18-f687828de9b8', NULL, 0, 0, NULL, 1, 0, N'abc@xyz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Data] ON 
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'14', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.383' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.937' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'15', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.630' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.947' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'16', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.643' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.953' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (4, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'17', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.650' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.963' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (5, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'18', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.657' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.970' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (6, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'19', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.660' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.980' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (7, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.663' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.987' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (8, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.670' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.997' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (9, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.677' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.880' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (10, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.680' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.887' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (11, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.687' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.893' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (12, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.690' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.900' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (13, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.693' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.910' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (14, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.700' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.927' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (15, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'06', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.703' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.783' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (16, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'07', N'int', N'15', 15, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.707' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.827' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (17, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'08', N'int', N'18', 18, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.713' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.837' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (18, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'09', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.717' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.843' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (19, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'10', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.720' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.847' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (20, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'11', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.727' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.853' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (21, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'12', N'int', N'20', 20, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.730' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.863' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (22, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'13', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.733' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:02.873' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (23, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.740' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.003' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (24, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.743' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.017' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (25, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'14', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.747' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.163' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (26, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'15', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.753' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.170' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (27, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'16', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.760' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.183' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (28, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'17', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.763' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.193' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (29, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'18', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.767' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.200' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (30, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'19', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.773' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.217' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (31, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.777' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.230' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (32, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.783' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.240' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (33, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.783' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.103' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (34, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.790' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (35, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.793' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.137' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (36, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.793' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.143' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (37, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.797' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.150' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (38, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.803' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.157' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (39, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'06', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.803' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.027' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (40, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'07', N'int', N'15', 15, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.807' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.037' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (41, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'08', N'int', N'18', 18, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.813' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.050' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (42, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'09', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.813' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.063' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (43, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'10', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.817' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.070' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (44, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'11', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.820' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.083' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (45, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'12', N'int', N'20', 20, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.837' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.093' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (46, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'13', N'int', N'19', 19, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.857' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.097' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (47, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.877' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.250' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (48, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.887' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.260' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (49, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'B', N'int', N'2', 2, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.893' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.280' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (50, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'A', N'int', N'2', 2, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.897' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.270' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (51, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.903' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.287' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (52, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'B', N'int', N'5', 5, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.907' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.337' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (53, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'A', N'int', N'2', 2, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.913' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.327' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (54, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.917' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.343' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (55, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'B', N'int', N'7', 7, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.923' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.363' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (56, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'A', N'int', N'1', 1, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.930' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.353' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (57, 2022, 2, CAST(N'2022-08-11' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:47:22.937' AS DateTime), N'Admin', CAST(N'2022-08-12T22:14:03.370' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (58, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 6, N'O/L Sent to BF', N'Shift', N'string', N'B', N'int', N'1548', 1548, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.163' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.163' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (59, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 6, N'O/L Sent to BF', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.173' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.173' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (60, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 6, N'O/L Sent to BF', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.190' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.190' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (61, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 7, N'Screened', N'Shift', N'string', N'B', N'int', N'1657', 1657, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.193' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.193' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (62, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 7, N'Screened', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.197' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.197' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (63, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 7, N'Screened', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.200' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.200' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (64, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 8, N'Iron Ore Fines Receipt', N'Shift', N'string', N'B', N'int', N'5214', 5214, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.207' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.207' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (65, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 8, N'Iron Ore Fines Receipt', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.210' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.210' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (66, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 8, N'Iron Ore Fines Receipt', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.213' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.213' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (67, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 9, N'L/S BF Grade Receipt', N'Shift', N'string', N'B', N'int', N'1520', 1520, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.217' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.217' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (68, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 9, N'L/S BF Grade Receipt', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.223' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.223' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (69, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 9, N'L/S BF Grade Receipt', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.230' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.230' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (70, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 10, N' Iron Ore FInes Tippling', N'Shift', N'string', N'B', N'int', N'4512', 4512, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.233' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.233' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (71, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 10, N' Iron Ore FInes Tippling', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.240' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.240' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (72, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 10, N' Iron Ore FInes Tippling', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.247' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.247' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (73, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 11, N'L/S BF Grade Tippling', N'Shift', N'string', N'B', N'int', N'4710', 4710, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.257' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.257' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (74, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 11, N'L/S BF Grade Tippling', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.263' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.263' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (75, 2022, 2, CAST(N'2022-08-11' AS Date), 2, 0, 0, 0, 0, 11, N'L/S BF Grade Tippling', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:51:39.273' AS DateTime), N'Admin', CAST(N'2022-08-11T22:51:39.273' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (76, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 12, N'M/C-I Production', N'Shift', N'string', N'B', N'int', N'1435', 1435, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.007' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.007' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (77, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 12, N'M/C-I Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.017' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.017' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (78, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 12, N'M/C-I Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.020' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.020' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (79, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 13, N'M/C-II Production', N'Shift', N'string', N'B', N'int', N'1520', 1520, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.027' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.027' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (80, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 13, N'M/C-II Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.030' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.030' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (81, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 13, N'M/C-II Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.033' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.033' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (82, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 14, N'M/C-III Production', N'Shift', N'string', N'B', N'int', N'1687', 1687, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.037' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.037' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (83, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 14, N'M/C-III Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.040' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.040' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (84, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 14, N'M/C-III Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.047' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.047' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (85, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 15, N'Sinter Stock on Bed', N'Shift', N'string', N'B', N'int', N'6500', 6500, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.047' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.047' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (86, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 15, N'Sinter Stock on Bed', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.050' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.050' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (87, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 15, N'Sinter Stock on Bed', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.057' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.057' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (88, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 16, N'Pellet taken from Bed', N'Shift', N'string', N'B', N'int', N'1580', 1580, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.060' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.060' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (89, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 16, N'Pellet taken from Bed', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.067' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.067' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (90, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 16, N'Pellet taken from Bed', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.067' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.067' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (91, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 17, N'Pellet Stock on Bed', N'Shift', N'string', N'B', N'int', N'3654', 3654, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.070' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.070' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (92, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 17, N'Pellet Stock on Bed', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.077' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.077' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (93, 2022, 2, CAST(N'2022-08-11' AS Date), 3, 0, 0, 0, 0, 17, N'Pellet Stock on Bed', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:52:23.080' AS DateTime), N'Admin', CAST(N'2022-08-11T22:52:23.080' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (94, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 18, N'Hot Metal', N'Shift', N'string', N'B', N'int', N'4358', 4358, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.563' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.563' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (95, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 18, N'Hot Metal', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.573' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.573' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (96, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 18, N'Hot Metal', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.577' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.577' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (97, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 19, N'Load to PCM', N'Shift', N'string', N'B', N'int', N'2', 2, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.580' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.580' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (98, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 19, N'Load to PCM', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.587' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.587' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (99, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 19, N'Load to PCM', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.590' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.590' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (100, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 20, N'Load to FDY', N'Shift', N'string', N'B', N'int', N'3', 3, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.590' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.590' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (101, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 20, N'Load to FDY', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.597' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.597' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (102, 2022, 2, CAST(N'2022-08-11' AS Date), 4, 0, 0, 0, 0, 20, N'Load to FDY', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:06.603' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:06.603' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (103, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 21, N'Crude Steel', N'Shift', N'string', N'B', N'int', N'4600', 4600, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.640' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.640' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (104, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 21, N'Crude Steel', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.650' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.650' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (105, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 21, N'Crude Steel', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.660' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.660' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (106, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 22, N'Heats Made', N'Shift', N'string', N'B', N'int', N'38', 38, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.663' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.663' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (107, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 22, N'Heats Made', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.667' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.667' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (108, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 22, N'Heats Made', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.670' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.670' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (109, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 23, N'Heat Casts', N'Shift', N'string', N'B', N'int', N'40', 40, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.670' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.670' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (110, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 23, N'Heat Casts', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.677' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.677' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (111, 2022, 2, CAST(N'2022-08-11' AS Date), 5, 0, 0, 0, 0, 23, N'Heat Casts', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:53:39.680' AS DateTime), N'Admin', CAST(N'2022-08-11T22:53:39.680' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (112, 2022, 2, CAST(N'2022-08-11' AS Date), 6, 0, 0, 0, 0, 24, N'Crude Steel', N'Shift', N'string', N'B', N'int', N'1280', 1280, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:54:07.020' AS DateTime), N'Admin', CAST(N'2022-08-11T22:54:07.020' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (113, 2022, 2, CAST(N'2022-08-11' AS Date), 6, 0, 0, 0, 0, 24, N'Crude Steel', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:54:07.033' AS DateTime), N'Admin', CAST(N'2022-08-11T22:54:07.033' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (114, 2022, 2, CAST(N'2022-08-11' AS Date), 6, 0, 0, 0, 0, 24, N'Crude Steel', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:54:07.037' AS DateTime), N'Admin', CAST(N'2022-08-11T22:54:07.037' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (115, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'14', N'int', N'25', 25, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.017' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.017' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (116, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'15', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.030' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.030' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (117, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'16', N'int', N'20', 20, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.037' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.037' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (118, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'17', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.040' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.040' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (119, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'18', N'int', N'14', 14, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.047' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.047' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (120, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'19', N'int', N'11', 11, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.050' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.050' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (121, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.060' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.060' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (122, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.067' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.067' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (123, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.077' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.077' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (124, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.080' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.080' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (125, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.080' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.080' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (126, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.087' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.087' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (127, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.090' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.090' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (128, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.097' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.097' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (129, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'06', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.097' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.097' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (130, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'07', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.100' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.100' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (131, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'08', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.110' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.110' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (132, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'09', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.110' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.110' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (133, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'10', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.117' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (134, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'11', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.117' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.117' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (135, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'12', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.120' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.120' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (136, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'13', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.127' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.127' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (137, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.130' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.130' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (138, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 25, N'Coils', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.133' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.133' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (139, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'14', N'int', N'562', 562, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.137' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.137' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (140, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'15', N'int', N'487', 487, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.140' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.140' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (141, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'16', N'int', N'472', 472, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.147' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.147' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (142, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'17', N'int', N'254', 254, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.147' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.147' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (143, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'18', N'int', N'340', 340, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.153' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.153' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (144, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'19', N'int', N'268', 268, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.160' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.160' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (145, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.167' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.167' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (146, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.170' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.170' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (147, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.173' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.173' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (148, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.180' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.180' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (149, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.183' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.183' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (150, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.190' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.190' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (151, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.190' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.190' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (152, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.197' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.197' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (153, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'06', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.200' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.200' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (154, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'07', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.207' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.207' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (155, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'08', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.217' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.217' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (156, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'09', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.223' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.223' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (157, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'10', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.247' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.247' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (158, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'11', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.250' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.250' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (159, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'12', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.257' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.257' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (160, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'13', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.260' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.260' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (161, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.267' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.267' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (162, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 26, N'Tonnage', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.270' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.270' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (163, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 27, N'Coil Shipment', N'Shift', N'string', N'B', N'int', N'65', 65, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.277' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.277' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (164, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 27, N'Coil Shipment', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.280' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.280' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (165, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 27, N'Coil Shipment', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.287' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.287' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (166, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 28, N'For HRCF', N'Shift', N'string', N'B', N'int', N'25', 25, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.290' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.290' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (167, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 28, N'For HRCF', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.303' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.303' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (168, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 28, N'For HRCF', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.307' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.307' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (169, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 29, N'For CRM', N'Shift', N'string', N'B', N'int', N'20', 20, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.310' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.310' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (170, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 29, N'For CRM', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.317' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.317' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (171, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 29, N'For CRM', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.350' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.350' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (172, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 30, N'For CRM3', N'Shift', N'string', N'B', N'int', N'25', 25, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.360' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.360' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (173, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 30, N'For CRM3', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.380' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.380' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (174, 2022, 2, CAST(N'2022-08-11' AS Date), 7, 0, 0, 0, 0, 30, N'For CRM3', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:57:16.387' AS DateTime), N'Admin', CAST(N'2022-08-11T22:57:16.387' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (175, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 31, N'Plate', N'Shift', N'string', N'B', N'int', N'683', 683, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:10.987' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:10.987' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (176, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 31, N'Plate', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:10.990' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:10.990' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (177, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 31, N'Plate', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.000' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.000' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (178, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 32, N'Sheet', N'Shift', N'string', N'B', N'int', N'275', 275, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.000' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.000' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (179, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 32, N'Sheet', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.007' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.007' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (180, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 32, N'Sheet', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.010' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.010' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (181, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 33, N'Stock at ACY', N'Shift', N'string', N'B', N'int', N'12574', 12574, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.017' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.017' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (182, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 33, N'Stock at ACY', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.020' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.020' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (183, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 33, N'Stock at ACY', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.020' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.020' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (184, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 34, N'Stock at OCY', N'Shift', N'string', N'B', N'int', N'25634', 25634, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.027' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.027' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (185, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 34, N'Stock at OCY', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.030' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.030' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (186, 2022, 2, CAST(N'2022-08-11' AS Date), 8, 0, 0, 0, 0, 34, N'Stock at OCY', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T22:59:11.037' AS DateTime), N'Admin', CAST(N'2022-08-11T22:59:11.037' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (187, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 35, N'PL#1 Production', N'Shift', N'string', N'B', N'int', N'674', 674, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.740' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.740' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (188, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 35, N'PL#1 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.750' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.750' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (189, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 35, N'PL#1 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.760' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.760' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (190, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 36, N'PL#2 Production', N'Shift', N'string', N'B', N'int', N'25', 25, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.767' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.767' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (191, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 36, N'PL#2 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.767' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.767' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (192, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 36, N'PL#2 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.777' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.777' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (193, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 37, N'TM#1 Production', N'Shift', N'string', N'B', N'int', N'598', 598, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.787' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.787' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (194, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 37, N'TM#1 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.797' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.797' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (195, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 37, N'TM#1 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.800' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.800' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (196, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 38, N'TM#2 Production', N'Shift', N'string', N'B', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.803' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.803' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (197, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 38, N'TM#2 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.810' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.810' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (198, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 38, N'TM#2 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.817' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.817' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (199, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 39, N'SPM#1 Production', N'Shift', N'string', N'B', N'int', N'265', 265, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.827' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.827' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (200, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 39, N'SPM#1 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.830' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.830' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (201, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 39, N'SPM#1 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.837' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.837' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (202, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 40, N'SPM#2 Production', N'Shift', N'string', N'B', N'int', N'472', 472, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.847' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.847' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (203, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 40, N'SPM#2 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.850' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.850' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (204, 2022, 2, CAST(N'2022-08-11' AS Date), 9, 0, 0, 0, 0, 40, N'SPM#2 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:02:37.860' AS DateTime), N'Admin', CAST(N'2022-08-11T23:02:37.860' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (205, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 42, N'HRCC Stock', N'Shift', N'string', N'B', N'int', N'5860', 5860, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.287' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.287' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (206, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 42, N'HRCC Stock', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.297' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.297' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (207, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 42, N'HRCC Stock', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.307' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.307' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (208, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 43, N'PLTCM Production', N'Shift', N'string', N'B', N'int', N'498', 498, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.310' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.310' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (209, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 43, N'PLTCM Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.320' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.320' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (210, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 43, N'PLTCM Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.330' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.330' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (211, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 44, N'BAF/L', N'Shift', N'string', N'B', N'int', N'1640', 1640, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.330' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.330' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (212, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 44, N'BAF/L', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.343' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.343' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (213, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 44, N'BAF/L', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.347' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.347' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (214, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 45, N'BAF/UL', N'Shift', N'string', N'B', N'int', N'2587', 2587, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.347' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.347' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (215, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 45, N'BAF/UL', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.350' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.350' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (216, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 45, N'BAF/UL', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (217, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 46, N'SPM#3 Production', N'Shift', N'string', N'B', N'int', N'687', 687, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (218, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 46, N'SPM#3 Production', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.360' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (219, 2022, 2, CAST(N'2022-08-11' AS Date), 10, 0, 0, 0, 0, 46, N'SPM#3 Production', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-11T23:03:50.370' AS DateTime), N'Admin', CAST(N'2022-08-11T23:03:50.370' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (220, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'06', N'int', N'14', 14, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.147' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.403' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (221, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'07', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.247' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.413' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (222, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'08', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.250' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.423' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (223, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'09', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.280' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.433' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (224, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'10', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.293' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.440' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (225, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'11', N'int', N'17', 17, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.297' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.450' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (226, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'12', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.297' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.457' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (227, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'13', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.307' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.463' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (228, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.310' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.353' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (229, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.313' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.360' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (230, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.317' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.370' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (231, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.323' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.377' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (232, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.327' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.383' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (233, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.330' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.393' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (234, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'14', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.333' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.193' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (235, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'15', N'int', N'15', 15, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.337' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.220' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (236, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'16', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.343' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.233' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (237, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'17', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.347' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.243' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (238, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'18', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.350' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.273' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (239, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'19', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.353' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.293' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (240, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.357' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.337' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (241, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.360' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.343' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (242, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.363' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.470' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (243, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 1, N'Plan', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.367' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.483' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (244, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'06', N'int', N'14', 14, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.370' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.623' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (245, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'07', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.377' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.633' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (246, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'08', N'int', N'22', 22, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.380' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.640' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (247, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'09', N'int', N'23', 23, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.387' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.650' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (248, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'10', N'int', N'21', 21, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.400' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.657' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (249, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'11', N'int', N'17', 17, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.410' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.663' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (250, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'12', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.413' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.673' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (251, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'13', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.417' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.683' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (252, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'00', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.423' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.563' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (253, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'01', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.430' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.570' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (254, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'02', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.433' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.583' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (255, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'03', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.437' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.590' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (256, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'04', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.440' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.597' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (257, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'05', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.443' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.610' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (258, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'14', N'int', N'13', 13, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.450' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.490' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (259, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'15', N'int', N'15', 15, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.453' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.500' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (260, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'16', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.460' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.510' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (261, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'17', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.460' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.520' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (262, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'18', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.467' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.530' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (263, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'19', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.470' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.540' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (264, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'20', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.477' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.550' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (265, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'21', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.480' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.557' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (266, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'22', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.490' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.690' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (267, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 2, N'Pushings', N'Hour', N'int', N'23', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.493' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.697' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (268, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.497' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.727' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (269, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'B', N'int', N'2', 2, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.500' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.717' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (270, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 3, N'Door Cleaned', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.507' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.740' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (271, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.510' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.760' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (272, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'B', N'int', N'1', 1, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.513' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.750' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (273, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 4, N'Coal Charged', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.517' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.773' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (274, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'A', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.523' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.793' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (275, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'B', N'int', N'3', 3, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.527' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.783' AS DateTime), N'Admin')
GO
INSERT [dbo].[Data] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [intValue], [decimalValue], [txtValue], [bitValue], [dtValue], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (276, 2022, 2, CAST(N'2022-08-12' AS Date), 1, 0, 0, 0, 0, 5, N'Frame Cleaned', N'Shift', N'string', N'C', N'int', NULL, 0, CAST(0.00 AS Decimal(18, 2)), N'', 0, NULL, CAST(N'2022-08-12T12:31:04.530' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:12.810' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Data] OFF
GO
SET IDENTITY_INSERT [dbo].[Delay] ON 
GO
INSERT [dbo].[Delay] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [DtStart], [DtEnd], [HH], [MM], [SS], [Agency], [Reason], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2022, 2, CAST(N'2022-08-11' AS Date), 10, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'string', N'B', NULL, NULL, NULL, NULL, 0, 30, NULL, N'Electrical', N'Elecrical Problem in HDG#3', CAST(N'2022-08-11T23:05:01.747' AS DateTime), N'Admin', CAST(N'2022-08-11T23:05:01.747' AS DateTime), N'Admin')
GO
INSERT [dbo].[Delay] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [DtStart], [DtEnd], [HH], [MM], [SS], [Agency], [Reason], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (2, 2022, 2, CAST(N'2022-08-11' AS Date), 7, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'string', N'B', NULL, NULL, NULL, NULL, 0, 30, NULL, N'Operation', N'Roll Change B Shift', CAST(N'2022-08-11T23:06:01.517' AS DateTime), N'Admin', CAST(N'2022-08-11T23:06:01.517' AS DateTime), N'Admin')
GO
INSERT [dbo].[Delay] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [DtStart], [DtEnd], [HH], [MM], [SS], [Agency], [Reason], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 2022, 2, CAST(N'2022-08-11' AS Date), 4, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'string', N'B', NULL, NULL, NULL, NULL, 2, 45, NULL, N'Operation', N'Off blast BF#3', CAST(N'2022-08-11T23:06:52.840' AS DateTime), N'Admin', CAST(N'2022-08-11T23:06:52.840' AS DateTime), N'Admin')
GO
INSERT [dbo].[Delay] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [DtStart], [DtEnd], [HH], [MM], [SS], [Agency], [Reason], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (4, 2022, 2, CAST(N'2022-08-12' AS Date), 4, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'string', N'A', NULL, NULL, NULL, NULL, 2, 0, NULL, N'Mechanical', N'Offblast', CAST(N'2022-08-12T12:31:45.443' AS DateTime), N'Admin', CAST(N'2022-08-12T12:31:45.443' AS DateTime), N'Admin')
GO
INSERT [dbo].[Delay] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [PDT], [PDV], [DtStart], [DtEnd], [HH], [MM], [SS], [Agency], [Reason], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (5, 2022, 2, CAST(N'2022-08-12' AS Date), 1, NULL, NULL, NULL, NULL, NULL, NULL, N'2', N'string', N'B', NULL, NULL, NULL, NULL, 2, 30, NULL, N'Mechanical', N'Mechanical Problem', CAST(N'2022-08-12T15:43:35.367' AS DateTime), N'Admin', CAST(N'2022-08-12T15:43:35.367' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Delay] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (1, N'COKE OVEN', NULL, NULL, NULL, NULL, NULL, NULL, N'CO&BPP')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (2, N'RM & MHP', NULL, NULL, NULL, NULL, NULL, NULL, N'RMHP')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (3, N'SINTER PLANT', NULL, NULL, NULL, NULL, NULL, NULL, N'SP')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (4, N'BLAST FURNACE', NULL, NULL, NULL, NULL, NULL, NULL, N'BF')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (5, N'STEEL MELTING SHOP II & CCS', NULL, NULL, NULL, NULL, NULL, NULL, N'SMSII&CCS')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (6, N'STEEL MELTING SHOP NEW', NULL, NULL, NULL, NULL, NULL, NULL, N'SMS NEW')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (7, N'HOT STRIP MILL', NULL, NULL, NULL, NULL, NULL, NULL, N'HSM')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (8, N'HOT ROLLED COIL FINISHING', NULL, NULL, NULL, NULL, NULL, NULL, N'HRCF')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (9, N'COLD ROLLING MILL', NULL, NULL, NULL, NULL, NULL, NULL, N'CRM')
GO
INSERT [dbo].[Department] ([Id], [Name], [Desc], [Shifts], [Contact], [Email], [Head], [MaxNo], [SName]) VALUES (10, N'COLD ROLLING MILL III', NULL, NULL, NULL, NULL, NULL, NULL, N'CRM III')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Frequency] ON 
GO
INSERT [dbo].[Frequency] ([Id], [Freq], [UpdatedBy], [UpdatedOn], [NH]) VALUES (1, N'Hour', NULL, NULL, NULL)
GO
INSERT [dbo].[Frequency] ([Id], [Freq], [UpdatedBy], [UpdatedOn], [NH]) VALUES (2, N'Shift', NULL, NULL, NULL)
GO
INSERT [dbo].[Frequency] ([Id], [Freq], [UpdatedBy], [UpdatedOn], [NH]) VALUES (3, N'Day', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Frequency] OFF
GO
SET IDENTITY_INSERT [dbo].[FValue] ON 
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (1, 1, N'int', N'06', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (2, 1, N'int', N'07', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (3, 1, N'int', N'08', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (4, 1, N'int', N'09', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (5, 1, N'int', N'10', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (6, 1, N'int', N'11', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (7, 1, N'int', N'12', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (8, 1, N'int', N'13', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (9, 1, N'int', N'14', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (10, 1, N'int', N'15', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (11, 1, N'int', N'16', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (12, 1, N'int', N'17', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (13, 1, N'int', N'18', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (14, 1, N'int', N'19', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (15, 1, N'int', N'20', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (16, 1, N'int', N'21', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (17, 1, N'int', N'22', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (18, 1, N'int', N'23', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (19, 1, N'int', N'00', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (20, 1, N'int', N'01', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (21, 1, N'int', N'02', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (22, 1, N'int', N'03', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (23, 1, N'int', N'04', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (24, 1, N'int', N'05', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (25, 2, N'string', N'A', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (26, 2, N'string', N'B', NULL, NULL)
GO
INSERT [dbo].[FValue] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (27, 2, N'string', N'C', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[FValue] OFF
GO
SET IDENTITY_INSERT [dbo].[Incident] ON 
GO
INSERT [dbo].[Incident] ([Id], [FY], [Q], [DT], [DId], [SId], [MId], [EId], [TId], [PId], [PName], [PF], [PFT], [PFV], [IncDate], [Agency], [Reason], [BriefDesc], [ShiftInc], [IncLocation], [IncType], [MsrsTaken], [CreatedOn], [CreatedBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2022, 2, CAST(N'2022-08-11' AS Date), 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'string', N'B', CAST(N'2022-08-11T11:07:31.000' AS DateTime), N'Operation', N'Foundation Issue', N'Breakdown in exhauster in M#2', N'Mr. XYZ', N'M#1 Exhauster', NULL, NULL, CAST(N'2022-08-11T23:10:34.627' AS DateTime), N'Admin', CAST(N'2022-08-11T23:10:34.627' AS DateTime), N'Admin')
GO
SET IDENTITY_INSERT [dbo].[Incident] OFF
GO
SET IDENTITY_INSERT [dbo].[Parameter] ON 
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (1, 1, 0, 0, 0, 0, 1, N'Plan', N'Pushing Plan', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (2, 1, 0, 0, 0, 0, 1, N'Pushings', N'Pushing Actual', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (3, 1, 0, 0, 0, 0, 2, N'Door Cleaned', N'Door Cleaned', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (4, 1, 0, 0, 0, 0, 2, N'Coal Charged', N'Coal Charged', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (5, 1, 0, 0, 0, 0, 2, N'Frame Cleaned', N'Frame Cleaned', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (6, 2, 0, 0, 0, 0, 2, N'O/L Sent to BF', N'O/L Sent to BF', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (7, 2, 0, 0, 0, 0, 2, N'Screened', N'Screened', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (8, 2, 0, 0, 0, 0, 2, N'Iron Ore Fines Receipt', N'Iron Ore Fines Receipt', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (9, 2, 0, 0, 0, 0, 2, N'L/S BF Grade Receipt', N'Lime Stone BF Grade Receipt', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (10, 2, 0, 0, 0, 0, 2, N' Iron Ore FInes Tippling', N' Iron Ore FInes Tippling', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (11, 2, 0, 0, 0, 0, 2, N'L/S BF Grade Tippling', N'Lime Stone BF Grade Tippling', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (12, 3, 0, 0, 0, 0, 2, N'M/C-I Production', N'Production of Sinter Plant of M/C-I', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (13, 3, 0, 0, 0, 0, 2, N'M/C-II Production', N'Production of Sinter Plant of M/C-II', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (14, 3, 0, 0, 0, 0, 2, N'M/C-III Production', N'Production of Sinter Plant of M/C-III', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (15, 3, 0, 0, 0, 0, 2, N'Sinter Stock on Bed', N'Sinter Stock on Bed', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (16, 3, 0, 0, 0, 0, 2, N'Pellet taken from Bed', N'Pellet taken from Bed', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (17, 3, 0, 0, 0, 0, 2, N'Pellet Stock on Bed', N'Pellet Stock on Bed', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (18, 4, 0, 0, 0, 0, 2, N'Hot Metal', N'Hot Metal production', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (19, 4, 0, 0, 0, 0, 2, N'Load to PCM', N'Load to PCM', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (20, 4, 0, 0, 0, 0, 2, N'Load to FDY', N'Load to FDY', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (21, 5, 0, 0, 0, 0, 2, N'Crude Steel', N'Total Crude Steel in SMS New', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (22, 5, 0, 0, 0, 0, 2, N'Heats Made', N'Heats Made', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(20 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (23, 5, 0, 0, 0, 0, 2, N'Heat Casts', N'Heat Casts', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (24, 6, 0, 0, 0, 0, 2, N'Crude Steel', N'Total Crude Steel in SMS New', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (25, 7, 0, 0, 0, 0, 1, N'Coils', N'Total no of Slab Rolled', N'int', 1, CAST(0 AS Decimal(18, 0)), NULL, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (26, 7, 0, 0, 0, 0, 1, N'Tonnage', N'Total no. of Coil made', N'int', 1, CAST(0 AS Decimal(18, 0)), NULL, NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (27, 7, 0, 0, 0, 0, 2, N'Coil Shipment', N'For Coil Shipment', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (28, 7, 0, 0, 0, 0, 2, N'For HRCF', N'For HRCF', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (29, 7, 0, 0, 0, 0, 2, N'For CRM', N'Form CRM', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (30, 7, 0, 0, 0, 0, 2, N'For CRM3', N'For CRM3', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (31, 8, 0, 0, 0, 0, 2, N'Plate', N'Plate Production', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (32, 8, 0, 0, 0, 0, 2, N'Sheet', N'Sheet Production', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (33, 8, 0, 0, 0, 0, 2, N'Stock at ACY', N'Stock at ACY', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (34, 8, 0, 0, 0, 0, 2, N'Stock at OCY', N'Stock at OCY', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(3000 AS Decimal(18, 0)), NULL, 1, 1, N'Tonnage', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (35, 9, 0, 0, 0, 0, 2, N'PL#1 Production', N'Production of PL-1', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (36, 9, 0, 0, 0, 0, 2, N'PL#2 Production', N'Production of PL-2', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (37, 9, 0, 0, 0, 0, 2, N'TM#1 Production', N'Production of TM-1', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (38, 9, 0, 0, 0, 0, 2, N'TM#2 Production', N'Production of TM-2', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (39, 9, 0, 0, 0, 0, 2, N'SPM#1 Production', N'Production of SPM-1', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (40, 9, 0, 0, 0, 0, 2, N'SPM#2 Production', N'Production of SPM-2', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (41, 9, 0, 0, 0, 0, 3, N'Stock', N'CR Saleable(P)', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(30 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (42, 10, 0, 0, 0, 0, 2, N'HRCC Stock', N'HRCC Stock', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (43, 10, 0, 0, 0, 0, 2, N'PLTCM Production', N'Production data: PLTCM ', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (44, 10, 0, 0, 0, 0, 2, N'BAF/L', N'Production data: BAF/L', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (45, 10, 0, 0, 0, 0, 2, N'BAF/UL', N'Production data: BAF/UL', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
INSERT [dbo].[Parameter] ([Id], [DId], [MId], [EId], [TId], [SId], [FId], [Name], [Desc], [Datatype], [IsNumber], [Min], [Max], [Regex], [IsRequired], [IsEnabled], [Unit], [InpType], [InpValues], [InpField], [IsDP]) VALUES (46, 10, 0, 0, 0, 0, 2, N'SPM#3 Production', N'Production data: SPM3-Tonnage', N'int', 1, CAST(0 AS Decimal(18, 0)), CAST(50 AS Decimal(18, 0)), NULL, 1, 1, N'No', N'number', NULL, N'input', 1)
GO
SET IDENTITY_INSERT [dbo].[Parameter] OFF
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'06', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'07', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'08', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'09', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'10', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'11', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'12', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'13', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'14', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'15', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'16', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'17', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'18', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'19', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'20', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'21', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'22', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'23', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'00', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'01', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'02', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'03', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'04', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 1, N'int', N'05', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 2, N'string', N'A', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 2, N'string', N'B', NULL, NULL)
GO
INSERT [dbo].[Val$] ([Id], [FId], [FType], [FValue], [UpdatedBy], [UpdatedOn]) VALUES (NULL, 2, N'string', N'C', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/15/2022 7:57:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD FOREIGN KEY([DId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Machine]  WITH CHECK ADD FOREIGN KEY([DId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD FOREIGN KEY([DId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Title]  WITH CHECK ADD FOREIGN KEY([DId])
REFERENCES [dbo].[Department] ([Id])
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAnnouncementsForDate]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetAnnouncementsForDate](@DT varchar(10))
AS
BEGIN
	
	
	
--declare @DId int
--declare @DT varchar(10)
declare @FY int
declare @Q int


--set @DId =1
--set @DT = '20220728'

declare @CD datetime
set @CD = getdate()

SELECT [Id]
,[FY]
,[Q]
,[DT]
,[VisibleTo]
,[MsgTitle]
,[MsgDesc]
,[MsgUrl]
,[MsgDtStart]
,[MsgDtEnd]
,[CreatedOn]
,[CreatedBy]
,[UpdatedOn]
,[UpdatedBy]
FROM [eLogSheet].[dbo].[Announcement]
Where [MsgDtStart]<=@CD and @CD <= MsgDtEnd

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDashboardParametersByDate]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetDashboardParametersByDate](@DT varchar(10))
AS
BEGIN
	
	
	
--declare @DId int
--declare @DT varchar(10)
declare @FY int
declare @Q int


--set @DId =1
--set @DT = '20220728'

declare @CD date
set @CD = convert(date, @DT, 126)

set @FY = case when month(@CD)<=3 then year(@CD)-1 else year(@CD) end


set @Q = 
	case when month(@CD)<=3 then 4 else 
		case when month(@CD)%3=0 then (month(@CD)/3)-1 else month(@CD)/3 end
	end

select distinct
isnull(D.Id,0) as Id
,isnull(D.[FY], @FY) as FY
,isnull(D.Q, @Q) as Q
,isnull(D.DT, @CD) as DT
,isnull(D.DId, PL.DId) as DId
,isnull(D.[SId], PL.[SId]) as [SId]
,isnull(D.MId, PL.MId) as MId
,isnull(D.EId, PL.EId) as EId
,isnull(D.TId, PL.TId) as TId
,isnull(D.PId, PL.Id) as PId
,isnull(D.PName, PL.[Name]) as PName
,isnull(D.PF, PL.FN) as PF
,isnull(D.PFT, PL.[FType]) as PFT
,isnull(D.PFV, PL.FValue) as PFV
,isnull(D.PDT, PL.Datatype) as PDT
,D.[PDV]
,D.[intValue]
,D.decimalValue
,D.[txtValue]
,D.[bitValue]
,D.[dtValue]
,D.[CreatedOn]
,D.[CreatedBy]
,D.[UpdatedOn]
,D.[UpdatedBy]
,[InpType]
,[InpValues]
,[InpField]
from
(
select FR.FType, FR.FValue, FR.FN, P.* from
(
	Select FV.FID, FV.FType, FV.FValue, F.FN from
	(
	SELECT [FId]
		  ,[FType]
		  ,[FValue]
	  FROM [eLogSheet].[dbo].[FValue]
	) FV
	left join
	(
		SELECT [Id] as FId
		,[Freq] as FN
		FROM [eLogSheet].[dbo].[Frequency]
	) F
	On F.FId=FV.FId
) FR
left join
(
	SELECT [Id]
	,[DId]
	,[MId]
	,[EId]
	,[TId]
	,[SId]
	,[FId]
	,[Name]
	,[Desc]
	,[Datatype]
	,[IsNumber]
	,[Min]
	,[Max]
	,[Regex]
	,[IsRequired]
	,[IsEnabled]
	,[Unit]
	,[InpType]
    ,[InpValues]
    ,[InpField]
	FROM [eLogSheet].[dbo].[Parameter]
	Where isnull(IsDP, 0)=1
) P
on P.FId=FR.FId
Where P.Id is not null
) PL
left join
(
SELECT [Id]
      ,[FY]
      ,[Q]
      ,[DT]
      ,[DId]
      ,[SId]
      ,[MId]
      ,[EId]
      ,[TId]
      ,[PId]
      ,[PName]
      ,[PF]
      ,[PFT]
      ,[PFV]
      ,[PDT]
      ,[PDV]
      ,[intValue]
      ,decimalValue
      ,[txtValue]
      ,[bitValue]
      ,[dtValue]
      ,[CreatedOn]
      ,[CreatedBy]
      ,[UpdatedOn]
      ,[UpdatedBy]
  FROM [eLogSheet].[dbo].[Data]
  Where DT = @CD 
) D
on D.DId=PL.DId and D.MId=pl.MId and d.PId=pl.Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetFreqDetails]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetFreqDetails]
AS
BEGIN

select 
F.Id, 
[Freq]
,[FType]
,[FValue] 
,NH
from
(
SELECT 
[Id]
,[Freq]
,NH
FROM [eLogSheet].[dbo].[Frequency]
) F
left join
(
	SELECT [Id]
	,[FId]
	,[FType]
	,[FValue]
	FROM [eLogSheet].[dbo].[FValue]
) FV
on FV.FId=F.Id
Where FId is not null

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetParametersListForDepartment]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetParametersListForDepartment](@DId int)
AS
BEGIN
	
	
--declare @DId int
--set @DId=1


declare @PCount table (
	DId int, PN varchar(50), PC varchar(50), PIcon varchar(50), C int, PA varchar(50)
)

insert into @PCount
select 
@DId,
'Machines',
'Machines',
'fa-gear',
count(*),
'Index'
from dbo.Machine
Where DId=@DId

insert into @PCount
select 
@DId,
'Equipments',
'Equipments',
'fa-gear',
count(*),
'Index'
from dbo.Equipment
Where DId=@DId

insert into @PCount
select 
@DId,
'Sections',
'Sections',
'fa-gear',
count(*),
'Index'
from dbo.Section
Where DId=@DId

insert into @PCount
select 
@DId,
'Parameters',
'Parameters',
'fa-gear',
count(*),
'Index'
from dbo.Parameter
Where DId=@DId

insert into @PCount
select 
@DId,
'Titles',
'Titles',
'fa-gear',
count(*),
'Index'
from dbo.Title
Where DId=@DId

select * from @PCount



END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProductionParametersForDepttByrDate]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetProductionParametersForDepttByrDate](@DId int, @DT varchar(10))
AS
BEGIN
	
	
	
--declare @DId int
--declare @DT varchar(10)
declare @FY int
declare @Q int


--set @DId =1
--set @DT = '20220728'

declare @CD date
set @CD = convert(date, @DT, 126)

set @FY = case when month(@CD)<=3 then year(@CD)-1 else year(@CD) end


set @Q = 
	case when month(@CD)<=3 then 4 else 
		case when month(@CD)%3=0 then (month(@CD)/3)-1 else month(@CD)/3 end
	end

select distinct
isnull(D.Id,0) as Id
,isnull(D.[FY], @FY) as FY
,isnull(D.Q, @Q) as Q
,isnull(D.DT, @CD) as DT
,isnull(D.DId, PL.DId) as DId
,isnull(D.[SId], PL.[SId]) as [SId]
,isnull(D.MId, PL.MId) as MId
,isnull(D.EId, PL.EId) as EId
,isnull(D.TId, PL.TId) as TId
,isnull(D.PId, PL.Id) as PId
,isnull(D.PName, PL.[Name]) as PName
,isnull(D.PF, PL.FN) as PF
,isnull(D.PFT, PL.[FType]) as PFT
,isnull(D.PFV, PL.FValue) as PFV
,isnull(D.PDT, PL.Datatype) as PDT
,D.[PDV]
,isnull(D.[intValue], 0) as [intValue]
,isnull(D.decimalValue, 0) as decimalValue 
,isnull(D.[txtValue], '') as [txtValue]
,isnull(D.[bitValue], 0) as [bitValue]
,D.[dtValue]
,D.[CreatedOn]
,D.[CreatedBy]
,D.[UpdatedOn]
,D.[UpdatedBy]
,[InpType]
,[InpValues]
,[InpField]
from
(
select FR.FType, FR.FValue, FR.FN, P.* from
(
	Select FV.FID, FV.FType, FV.FValue, F.FN from
	(
	SELECT [FId]
		  ,[FType]
		  ,[FValue]
	  FROM [eLogSheet].[dbo].[FValue]
	) FV
	left join
	(
		SELECT [Id] as FId
		,[Freq] as FN
		FROM [eLogSheet].[dbo].[Frequency]
	) F
	On F.FId=FV.FId
) FR
left join
(
	SELECT [Id]
	,[DId]
	,[MId]
	,[EId]
	,[TId]
	,[SId]
	,[FId]
	,[Name]
	,[Desc]
	,[Datatype]
	,[IsNumber]
	,[Min]
	,[Max]
	,[Regex]
	,[IsRequired]
	,[IsEnabled]
	,[Unit]
	,[InpType]
    ,[InpValues]
    ,[InpField]
	FROM [eLogSheet].[dbo].[Parameter]
	Where DId=@DId
) P
on P.FId=FR.FId
Where P.Id is not null
) PL
left join
(
	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id]
      ,[FY]
      ,[Q]
      ,[DT]
      ,[DId]
      ,[SId]
      ,[MId]
      ,[EId]
      ,[TId]
      ,[PId]
      ,[PName]
      ,[PF]
      ,[PFT]
      ,[PFV]
      ,[PDT]
      ,[PDV]
      ,[intValue]
      ,decimalValue
      ,[txtValue]
      ,[bitValue]
      ,[dtValue]
      ,[CreatedOn]
      ,[CreatedBy]
      ,[UpdatedOn]
      ,[UpdatedBy]
  FROM [eLogSheet].[dbo].[Data]
  Where DId=@DId and DT = @CD 
) D
on D.DId=PL.DId and d.PId=pl.Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetProductionParametersForDepttByrDateTEST]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JGEC interns
-- Create date: 23/07/2022 1034 AM
-- Description:	Get count of different parameters for any department by department id
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetProductionParametersForDepttByrDateTEST](@DId int, @DT varchar(10))
AS
BEGIN
	
	
--declare @DId int
--declare @DT varchar(10)
declare @FY int
declare @Q int


set @DId =1
set @DT = '20220728'

declare @CD date
set @CD = convert(date, @DT, 126)

set @FY = case when month(@CD)<=3 then year(@CD)-1 else year(@CD) end


set @Q = 
	case when month(@CD)<=3 then 4 else 
		case when month(@CD)%3=0 then (month(@CD)/3)-1 else month(@CD)/3 end
	end

select 
PL.FType,
Pl.FValue,
isnull(D.Id,0) as Id
,isnull(D.[FY], @FY) as FY
,isnull(D.Q, @Q) as Q
,isnull(D.DT, @CD) as DT
,isnull(D.DId, PL.DId) as DId
,isnull(D.[SId], PL.[SId]) as [SId]
,isnull(D.MId, PL.MId) as MId
,isnull(D.EId, PL.EId) as EId
,isnull(D.TId, PL.TId) as TId
,isnull(D.PId, PL.Id) as PId
,isnull(D.PName, PL.[Name]) as PName
,isnull(D.PF, PL.FN) as PF
,isnull(D.PFT, PL.[FType]) as PFT
,isnull(D.PFV, PL.FValue) as PFV
,isnull(D.PDT, PL.Datatype) as PDT
,D.[PDV]
,D.[intValue]
,D.[decValue]
,D.[txtValue]
,D.[bitValue]
,D.[dtValue]
,D.[CreatedOn]
,D.[CreatedBy]
,D.[UpdatedOn]
,D.[UpdatedBy]
from
(
select FR.FType, FR.FValue, FR.FN, P.* from
(
	Select FV.FID, FV.FType, FV.FValue, F.FN from
	(
	SELECT [FId]
		  ,[FType]
		  ,[FValue]
	  FROM [eLogSheet].[dbo].[FValue]
	) FV
	left join
	(
		SELECT [Id] as FId
		,[Freq] as FN
		FROM [eLogSheet].[dbo].[Frequency]
	) F
	On F.FId=FV.FId
) FR
left join
(
	SELECT [Id]
	,[DId]
	,[MId]
	,[EId]
	,[TId]
	,[SId]
	,[FId]
	,[Name]
	,[Desc]
	,[Datatype]
	,[IsNumber]
	,[Min]
	,[Max]
	,[Regex]
	,[IsRequired]
	,[IsEnabled]
	,[Unit]
	FROM [eLogSheet].[dbo].[Parameter]
	Where DId=@DId
) P
on P.FId=FR.FId
Where P.Id is not null
) PL
left join
(
	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Id]
      ,[FY]
      ,[Q]
      ,[DT]
      ,[DId]
      ,[SId]
      ,[MId]
      ,[EId]
      ,[TId]
      ,[PId]
      ,[PName]
      ,[PF]
      ,[PFT]
      ,[PFV]
      ,[PDT]
      ,[PDV]
      ,[intValue]
      ,[decValue]
      ,[txtValue]
      ,[bitValue]
      ,[dtValue]
      ,[CreatedOn]
      ,[CreatedBy]
      ,[UpdatedOn]
      ,[UpdatedBy]
  FROM [eLogSheet].[dbo].[Data]
) D
on D.DId=PL.DId and D.MId=pl.MId and D.EId=PL.EId and d.PId=pl.Id and d.[SId]=pl.[SId]

END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserDetails]    Script Date: 8/15/2022 7:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ranjeet Kumar
-- Create date: 26/04/2021
-- Description:	Gets Covid Ward Status
-- =============================================
CREATE PROCEDURE [dbo].[sp_GetUserDetails](@UserId varchar(50))
	
AS
BEGIN
	
	declare @URMAPPING as table (
	ID varchar(50),
	RLE varchar(50)
)

declare @id varchar(50)

select @id = Id from dbo.AspNetUsers
Where Id=@UserId or @UserId=UserName


insert into @URMAPPING
SELECT UserId as ID, [Name] as RLE from
(
	SELECT [UserId]
	,[RoleId]
	FROM [dbo].[AspNetUserRoles]
	Where UserId=@id
) UR
left join
(
	SELECT [Id]
	,[Name]
	FROM [dbo].[AspNetRoles]
) R
on R.Id=UR.RoleId

SELECT U.*, UR.RLE from
(
	SELECT [Id]
	,Email
	,[PhoneNumber]
	,[UserName]
	,[LastLogin]
	,[LastLoginIP]
	,[UserAgent]
	,[DId]
	,[FullName]
	,[Designation]
	,[Organization]
	,[SCode]
	FROM [dbo].[AspNetUsers]
	Where Id=@id
) U
LEFT JOIN
(
	Select * from @URMAPPING
) UR
on UR.ID = U.Id

END
GO
