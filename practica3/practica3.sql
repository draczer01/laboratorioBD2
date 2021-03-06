USE [practica 3]
GO
ALTER TABLE [dbo].[persona] DROP CONSTRAINT [FK_persona_caballo]
GO
ALTER TABLE [dbo].[establo] DROP CONSTRAINT [FK_establo_persona]
GO
ALTER TABLE [dbo].[establo] DROP CONSTRAINT [FK_establo_empleados]
GO
ALTER TABLE [dbo].[establo] DROP CONSTRAINT [FK_establo_caballo]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [FK_empleados_establo]
GO
ALTER TABLE [dbo].[caballo] DROP CONSTRAINT [FK_caballo_persona]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 10/03/2018 02:42:02 p. m. ******/
DROP TABLE [dbo].[persona]
GO
/****** Object:  Table [dbo].[establo]    Script Date: 10/03/2018 02:42:02 p. m. ******/
DROP TABLE [dbo].[establo]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 10/03/2018 02:42:02 p. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[caballo]    Script Date: 10/03/2018 02:42:02 p. m. ******/
DROP TABLE [dbo].[caballo]
GO
USE [master]
GO
/****** Object:  Database [practica 3]    Script Date: 10/03/2018 02:42:02 p. m. ******/
DROP DATABASE [practica 3]
GO
/****** Object:  Database [practica 3]    Script Date: 10/03/2018 02:42:02 p. m. ******/
CREATE DATABASE [practica 3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'practica 3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica 3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'practica 3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\practica 3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [practica 3] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [practica 3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [practica 3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [practica 3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [practica 3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [practica 3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [practica 3] SET ARITHABORT OFF 
GO
ALTER DATABASE [practica 3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [practica 3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [practica 3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [practica 3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [practica 3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [practica 3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [practica 3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [practica 3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [practica 3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [practica 3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [practica 3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [practica 3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [practica 3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [practica 3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [practica 3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [practica 3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [practica 3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [practica 3] SET RECOVERY FULL 
GO
ALTER DATABASE [practica 3] SET  MULTI_USER 
GO
ALTER DATABASE [practica 3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [practica 3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [practica 3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [practica 3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [practica 3] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'practica 3', N'ON'
GO
ALTER DATABASE [practica 3] SET QUERY_STORE = OFF
GO
USE [practica 3]
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
USE [practica 3]
GO
/****** Object:  Table [dbo].[caballo]    Script Date: 10/03/2018 02:42:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caballo](
	[id_caballo] [numeric](18, 0) NOT NULL,
	[raza] [varchar](50) NULL,
	[velocidad] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[edad] [numeric](18, 0) NULL,
	[precio] [money] NULL,
	[id_persona] [numeric](18, 0) NULL,
 CONSTRAINT [PK_caballo] PRIMARY KEY CLUSTERED 
(
	[id_caballo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 10/03/2018 02:42:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [numeric](18, 0) NOT NULL,
	[id_establo] [numeric](18, 0) NULL,
	[nombre] [varchar](50) NULL,
	[sueldo] [money] NULL,
	[puesto] [varchar](50) NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[establo]    Script Date: 10/03/2018 02:42:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[establo](
	[id_establo] [numeric](18, 0) NOT NULL,
	[id_caballo] [numeric](18, 0) NULL,
	[id_persona] [numeric](18, 0) NULL,
	[espacio] [numeric](18, 0) NULL,
	[ubicacion] [varchar](max) NULL,
	[id_empleado] [numeric](18, 0) NULL,
 CONSTRAINT [PK_establo] PRIMARY KEY CLUSTERED 
(
	[id_establo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persona]    Script Date: 10/03/2018 02:42:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persona](
	[id_persona] [numeric](18, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[direccion] [varchar](max) NULL,
	[id_caballo] [numeric](18, 0) NULL,
 CONSTRAINT [PK_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[caballo]  WITH CHECK ADD  CONSTRAINT [FK_caballo_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[caballo] CHECK CONSTRAINT [FK_caballo_persona]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_establo] FOREIGN KEY([id_establo])
REFERENCES [dbo].[establo] ([id_establo])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_establo]
GO
ALTER TABLE [dbo].[establo]  WITH CHECK ADD  CONSTRAINT [FK_establo_caballo] FOREIGN KEY([id_caballo])
REFERENCES [dbo].[caballo] ([id_caballo])
GO
ALTER TABLE [dbo].[establo] CHECK CONSTRAINT [FK_establo_caballo]
GO
ALTER TABLE [dbo].[establo]  WITH CHECK ADD  CONSTRAINT [FK_establo_empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[establo] CHECK CONSTRAINT [FK_establo_empleados]
GO
ALTER TABLE [dbo].[establo]  WITH CHECK ADD  CONSTRAINT [FK_establo_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[persona] ([id_persona])
GO
ALTER TABLE [dbo].[establo] CHECK CONSTRAINT [FK_establo_persona]
GO
ALTER TABLE [dbo].[persona]  WITH CHECK ADD  CONSTRAINT [FK_persona_caballo] FOREIGN KEY([id_caballo])
REFERENCES [dbo].[caballo] ([id_caballo])
GO
ALTER TABLE [dbo].[persona] CHECK CONSTRAINT [FK_persona_caballo]
GO
USE [master]
GO
ALTER DATABASE [practica 3] SET  READ_WRITE 
GO
