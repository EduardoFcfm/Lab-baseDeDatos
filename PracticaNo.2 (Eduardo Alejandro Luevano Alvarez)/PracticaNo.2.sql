USE [master]
GO
/****** Object:  Database [LaboratorioBaseDeDatos]    Script Date: 2/3/2018 00:58:27 ******/
CREATE DATABASE [LaboratorioBaseDeDatos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaboratorioBaseDeDatos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LaboratorioBaseDeDatos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LaboratorioBaseDeDatos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LaboratorioBaseDeDatos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaboratorioBaseDeDatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET  MULTI_USER 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET QUERY_STORE = OFF
GO
USE [LaboratorioBaseDeDatos]
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
USE [LaboratorioBaseDeDatos]
GO
/****** Object:  Table [dbo].[Guiso]    Script Date: 2/3/2018 00:58:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guiso](
	[papa] [nchar](10) NULL,
	[picadillo] [nchar](10) NULL,
	[huevo] [nchar](10) NULL,
	[chicharron] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 2/3/2018 00:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago](
	[efectivo] [money] NULL,
	[tarjeta] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Refresco]    Script Date: 2/3/2018 00:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Refresco](
	[coca_normal] [nchar](10) NULL,
	[coca_light] [nchar](10) NULL,
	[coca_sabor] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeOrden]    Script Date: 2/3/2018 00:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeOrden](
	[llevar] [nchar](10) NULL,
	[comer_aqui] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tortilla]    Script Date: 2/3/2018 00:58:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tortilla](
	[harina] [nchar](10) NOT NULL,
	[maiz] [nchar](10) NULL,
 CONSTRAINT [PK_Tortilla] PRIMARY KEY CLUSTERED 
(
	[harina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LaboratorioBaseDeDatos] SET  READ_WRITE 
GO
