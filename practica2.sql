USE [practicas]
GO
/****** Object:  Index [IX_products]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP INDEX [IX_products] ON [dbo].[products]
GO
/****** Object:  Index [IX_employees]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP INDEX [IX_employees] ON [dbo].[employees]
GO
/****** Object:  Table [dbo].[users]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[products]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP TABLE [dbo].[products]
GO
/****** Object:  Table [dbo].[horses]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP TABLE [dbo].[horses]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP TABLE [dbo].[employees]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP TABLE [dbo].[clients]
GO
USE [master]
GO
/****** Object:  Database [practicas]    Script Date: 24/02/2018 01:57:57 p. m. ******/
DROP DATABASE [practicas]
GO
/****** Object:  Database [practicas]    Script Date: 24/02/2018 01:57:57 p. m. ******/
CREATE DATABASE [practicas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practicas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practicas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'practicas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practicas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [practicas] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practicas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practicas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practicas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practicas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practicas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practicas] SET ARITHABORT OFF 
GO
ALTER DATABASE [practicas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [practicas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practicas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practicas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practicas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practicas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practicas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practicas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practicas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practicas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [practicas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practicas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practicas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practicas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practicas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practicas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practicas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practicas] SET RECOVERY FULL 
GO
ALTER DATABASE [practicas] SET  MULTI_USER 
GO
ALTER DATABASE [practicas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practicas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practicas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practicas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [practicas] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'practicas', N'ON'
GO
ALTER DATABASE [practicas] SET QUERY_STORE = OFF
GO
USE [practicas]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [practicas]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 24/02/2018 01:57:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[client_id] [numeric](18, 0) NOT NULL,
	[client_name] [nvarchar](50) NOT NULL,
	[client_birthDay] [date] NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 24/02/2018 01:57:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [numeric](18, 0) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[employed_date] [date] NOT NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[horses]    Script Date: 24/02/2018 01:57:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[horses](
	[horse_id] [numeric](18, 0) NOT NULL,
	[type] [nvarchar](50) NULL,
	[birth_date] [date] NULL,
 CONSTRAINT [PK_horses] PRIMARY KEY CLUSTERED 
(
	[horse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 24/02/2018 01:57:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [numeric](18, 0) NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[cost] [money] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 24/02/2018 01:57:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [numeric](18, 0) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[registration_date] [date] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_employees]    Script Date: 24/02/2018 01:57:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_employees] ON [dbo].[employees]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_products]    Script Date: 24/02/2018 01:57:59 p. m. ******/
CREATE NONCLUSTERED INDEX [IX_products] ON [dbo].[products]
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [practicas] SET  READ_WRITE 
GO
