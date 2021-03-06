USE [master]
GO
/****** Object:  Database [Punto de Venta ]    Script Date: 24/02/2018 10:10:55 a.m. ******/
CREATE DATABASE [Punto de Venta ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto de Venta', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto de Venta .mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Punto de Venta _log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto de Venta _log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Punto de Venta ] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Punto de Venta ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Punto de Venta ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Punto de Venta ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Punto de Venta ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Punto de Venta ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Punto de Venta ] SET ARITHABORT OFF 
GO
ALTER DATABASE [Punto de Venta ] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Punto de Venta ] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Punto de Venta ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Punto de Venta ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Punto de Venta ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Punto de Venta ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Punto de Venta ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Punto de Venta ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Punto de Venta ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Punto de Venta ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Punto de Venta ] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Punto de Venta ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Punto de Venta ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Punto de Venta ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Punto de Venta ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Punto de Venta ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Punto de Venta ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Punto de Venta ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Punto de Venta ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Punto de Venta ] SET  MULTI_USER 
GO
ALTER DATABASE [Punto de Venta ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Punto de Venta ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Punto de Venta ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Punto de Venta ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Punto de Venta ]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id] [int] NULL,
	[nombre] [char](100) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[Nombre] [varchar](50) NULL,
	[Direccion] [text] NULL,
	[RFC] [varchar](50) NULL,
	[Correo] [text] NULL,
	[Telefono] [bigint] NULL,
	[IDcliente] [int] NOT NULL,
	[Fecha de Nacimiento] [date] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IDcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[IDempleado] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Telefono] [bigint] NULL,
	[Turno] [time](7) NULL,
	[Sueldo] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IDempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[IDproduct] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[Descripcion] [text] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[IDproduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[IDproducto] [int] NOT NULL,
	[Codigo de barras] [bigint] NULL,
	[Marca] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Precio] [decimal](18, 0) NULL,
	[Descripcion] [text] NULL,
	[Imagen] [image] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IDproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 24/02/2018 10:10:55 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IDventas] [int] NOT NULL,
	[Ventas Directas] [int] NULL,
	[Fecha] [date] NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IDventas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Punto de Venta ] SET  READ_WRITE 
GO
