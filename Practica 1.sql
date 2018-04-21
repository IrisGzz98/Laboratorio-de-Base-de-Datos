USE [master]
GO
/****** Object:  Database [Punto de venta]    Script Date: 20/04/2018 21:34:09 ******/
CREATE DATABASE [Punto de venta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto de venta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Punto de venta.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Punto de venta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Punto de venta_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Punto de venta] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Punto de venta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Punto de venta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Punto de venta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Punto de venta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Punto de venta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Punto de venta] SET ARITHABORT OFF 
GO
ALTER DATABASE [Punto de venta] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Punto de venta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Punto de venta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Punto de venta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Punto de venta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Punto de venta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Punto de venta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Punto de venta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Punto de venta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Punto de venta] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Punto de venta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Punto de venta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Punto de venta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Punto de venta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Punto de venta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Punto de venta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Punto de venta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Punto de venta] SET RECOVERY FULL 
GO
ALTER DATABASE [Punto de venta] SET  MULTI_USER 
GO
ALTER DATABASE [Punto de venta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Punto de venta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Punto de venta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Punto de venta] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Punto de venta] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Punto de venta', N'ON'
GO
ALTER DATABASE [Punto de venta] SET QUERY_STORE = OFF
GO
USE [Punto de venta]
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
ALTER DATABASE [Punto de venta] SET  READ_WRITE 
GO
