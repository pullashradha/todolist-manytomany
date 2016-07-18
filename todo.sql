USE [master]
GO
/****** Object:  Database [todo]    Script Date: 7/18/2016 8:34:05 AM ******/
CREATE DATABASE [todo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'todo', FILENAME = N'C:\Users\epicodus\todo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'todo_log', FILENAME = N'C:\Users\epicodus\todo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [todo] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [todo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [todo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [todo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [todo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [todo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [todo] SET ARITHABORT OFF 
GO
ALTER DATABASE [todo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [todo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [todo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [todo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [todo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [todo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [todo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [todo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [todo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [todo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [todo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [todo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [todo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [todo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [todo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [todo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [todo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [todo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [todo] SET  MULTI_USER 
GO
ALTER DATABASE [todo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [todo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [todo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [todo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [todo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [todo] SET QUERY_STORE = OFF
GO
USE [todo]
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
USE [todo]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 7/18/2016 8:34:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories_tasks]    Script Date: 7/18/2016 8:34:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories_tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[task_id] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tasks]    Script Date: 7/18/2016 8:34:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](255) NULL,
	[due_date] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [todo] SET  READ_WRITE 
GO
