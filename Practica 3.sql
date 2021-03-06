USE [master]
GO
/****** Object:  Database [Punto de Venta1]    Script Date: 03/03/2018 09:15:14 a.m. ******/
CREATE DATABASE [Punto de Venta1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Punto de Venta1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto de Venta1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Punto de Venta1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Punto de Venta1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Punto de Venta1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Punto de Venta1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Punto de Venta1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Punto de Venta1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Punto de Venta1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Punto de Venta1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Punto de Venta1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Punto de Venta1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Punto de Venta1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Punto de Venta1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Punto de Venta1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Punto de Venta1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Punto de Venta1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Punto de Venta1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Punto de Venta1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Punto de Venta1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Punto de Venta1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Punto de Venta1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Punto de Venta1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Punto de Venta1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Punto de Venta1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Punto de Venta1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Punto de Venta1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Punto de Venta1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Punto de Venta1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Punto de Venta1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Punto de Venta1] SET  MULTI_USER 
GO
ALTER DATABASE [Punto de Venta1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Punto de Venta1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Punto de Venta1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Punto de Venta1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Punto de Venta1]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 03/03/2018 09:15:14 a.m. ******/
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
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[nombre] [varchar](50) NULL,
	[direccion] [text] NULL,
	[RFC] [varchar](50) NULL,
	[correo] [text] NULL,
	[telefono] [bigint] NULL,
	[Idcliente] [int] NOT NULL,
	[Fecha de nacimiento] [date] NULL,
 CONSTRAINT [PK_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[Idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[Idempleado] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [bigint] NULL,
	[turno] [time](7) NULL,
	[sueldo] [decimal](18, 0) NULL,
 CONSTRAINT [PK_EMPLEADOS] PRIMARY KEY CLUSTERED 
(
	[Idempleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[Idproducto] [int] NOT NULL,
	[cantidad] [int] NULL,
	[descripcion] [text] NULL,
	[fecha] [date] NULL,
 CONSTRAINT [PK_INVENTARIO] PRIMARY KEY CLUSTERED 
(
	[Idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[Idproducto] [int] NOT NULL,
	[codigo de barras] [bigint] NULL,
	[marca] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[precio] [decimal](18, 0) NULL,
	[descripcion] [text] NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[Idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDORES]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDORES](
	[Idproveedores] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[telefono] [bigint] NULL,
	[deuda] [decimal](18, 0) NULL,
 CONSTRAINT [PK_PROVEEDORES] PRIMARY KEY CLUSTERED 
(
	[Idproveedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUMAVENTAS]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUMAVENTAS](
	[Id_sumven] [int] NULL,
	[Idproducto] [int] NOT NULL,
	[precioproduct] [decimal](18, 0) NULL,
 CONSTRAINT [PK_SUMAVENTAS] PRIMARY KEY CLUSTERED 
(
	[Idproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 03/03/2018 09:15:14 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[Idventas] [int] NOT NULL,
	[ventas directas] [int] NULL,
	[fecha] [date] NULL,
	[descripcion] [text] NULL,
	[Idcliente] [int] NOT NULL,
	[Id_sumven] [int] NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[Idcliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_CLIENTE_VENTAS] FOREIGN KEY([Idcliente])
REFERENCES [dbo].[VENTAS] ([Idcliente])
GO
ALTER TABLE [dbo].[CLIENTE] CHECK CONSTRAINT [FK_CLIENTE_VENTAS]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [FK_EMPLEADOS_VENTAS] FOREIGN KEY([Idempleado])
REFERENCES [dbo].[VENTAS] ([Idcliente])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [FK_EMPLEADOS_VENTAS]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_INVENTARIO] FOREIGN KEY([Idproducto])
REFERENCES [dbo].[INVENTARIO] ([Idproducto])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_INVENTARIO]
GO
ALTER TABLE [dbo].[PRODUCTO]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTO_PROVEEDORES] FOREIGN KEY([Idproducto])
REFERENCES [dbo].[PROVEEDORES] ([Idproveedores])
GO
ALTER TABLE [dbo].[PRODUCTO] CHECK CONSTRAINT [FK_PRODUCTO_PROVEEDORES]
GO
ALTER TABLE [dbo].[SUMAVENTAS]  WITH CHECK ADD  CONSTRAINT [FK_SUMAVENTAS_PRODUCTO] FOREIGN KEY([Idproducto])
REFERENCES [dbo].[PRODUCTO] ([Idproducto])
GO
ALTER TABLE [dbo].[SUMAVENTAS] CHECK CONSTRAINT [FK_SUMAVENTAS_PRODUCTO]
GO
USE [master]
GO
ALTER DATABASE [Punto de Venta1] SET  READ_WRITE 
GO
