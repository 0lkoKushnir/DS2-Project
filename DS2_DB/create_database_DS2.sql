USE [master]
GO

/****** Object:  Database [DS2]    Script Date: 1\15\2014 11:44:52 AM ******/
CREATE DATABASE [DS2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'primary', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\ds.mdf' , SIZE = 9280KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [DS_CUST_FG] 
( NAME = N'cust1', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\cust1.ndf' , SIZE = 614400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
( NAME = N'cust2', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\cust2.ndf' , SIZE = 614400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [DS_IND_FG] 
( NAME = N'ind1', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\ind1.ndf' , SIZE = 153600KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
( NAME = N'ind2', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\ind2.ndf' , SIZE = 153600KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [DS_MISC_FG] 
( NAME = N'ds_misc', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\ds_misc.ndf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [DS_ORDERS_FG] 
( NAME = N'orders1', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\orders1.ndf' , SIZE = 307200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
( NAME = N'orders2', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\orders2.ndf' , SIZE = 307200KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ds_log', FILENAME = N'D:\Oleh\EPAM\Project\DS2\DATA\ds_log.ldf' , SIZE = 1024000KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [DS2] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DS2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DS2] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DS2] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DS2] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DS2] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DS2] SET ARITHABORT OFF 
GO

ALTER DATABASE [DS2] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DS2] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [DS2] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DS2] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DS2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DS2] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DS2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DS2] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DS2] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DS2] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DS2] SET  ENABLE_BROKER 
GO

ALTER DATABASE [DS2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DS2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DS2] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DS2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DS2] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DS2] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DS2] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DS2] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DS2] SET  MULTI_USER 
GO

ALTER DATABASE [DS2] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DS2] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DS2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DS2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [DS2] SET  READ_WRITE 
GO


