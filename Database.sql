USE [master]
GO
/****** Object:  Database [PosDB]    Script Date: 4/22/2018 10:47:56 PM ******/
CREATE DATABASE [PosDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'posdb', FILENAME = N'C:\Users\josh\posdb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'posdb_log', FILENAME = N'C:\Users\josh\posdb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PosDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PosDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PosDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PosDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PosDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PosDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PosDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [PosDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PosDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PosDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PosDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PosDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PosDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PosDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PosDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PosDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PosDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PosDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PosDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PosDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PosDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PosDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PosDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PosDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PosDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PosDB] SET  MULTI_USER 
GO
ALTER DATABASE [PosDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PosDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PosDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PosDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PosDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PosDB] SET QUERY_STORE = OFF
GO
USE [PosDB]
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
USE [PosDB]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 4/22/2018 10:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Item_ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Image] [varchar](50) NULL,
	[Cost] [money] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 4/22/2018 10:47:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PosDB] SET  READ_WRITE 
GO
