/*** Integrantes del equipo
-Israel Rodriguez Briones 
-Hector Leonel Carrera Gonzalez 
-Everardo Molina Sauceda
***/

USE [POS]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_TipoDePago]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Empleados]
GO
ALTER TABLE [dbo].[Ventas] DROP CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Telefonos_personas] DROP CONSTRAINT [FK_Telefonos_personas_Telefonos1]
GO
ALTER TABLE [dbo].[Telefonos_personas] DROP CONSTRAINT [FK_Telefonos_personas_Personas]
GO
ALTER TABLE [dbo].[Suma_Venta] DROP CONSTRAINT [FK_Suma_Venta_Ventas]
GO
ALTER TABLE [dbo].[Suma_Venta] DROP CONSTRAINT [FK_Suma_Venta_Productos]
GO
ALTER TABLE [dbo].[Suma_Compra] DROP CONSTRAINT [FK_Suma_Compra_Productos]
GO
ALTER TABLE [dbo].[Suma_Compra] DROP CONSTRAINT [FK_Suma_Compra_Compras]
GO
ALTER TABLE [dbo].[RFC] DROP CONSTRAINT [FK_RFC_Personas]
GO
ALTER TABLE [dbo].[Provedores] DROP CONSTRAINT [FK_Provedores_Telefonos_personas]
GO
ALTER TABLE [dbo].[Provedores] DROP CONSTRAINT [FK_Provedores_RFC]
GO
ALTER TABLE [dbo].[Provedores] DROP CONSTRAINT [FK_Provedores_Personas]
GO
ALTER TABLE [dbo].[Provedores] DROP CONSTRAINT [FK_Provedores_Direcciones]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [FK_Productos_Provedores]
GO
ALTER TABLE [dbo].[Personas] DROP CONSTRAINT [FK_Personas_TipoDePersona]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Telefonos_personas]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_RFC]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Personas]
GO
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT [FK_Empleados_Direcciones]
GO
ALTER TABLE [dbo].[Direcciones] DROP CONSTRAINT [FK_Direcciones_Personas]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Provedores]
GO
ALTER TABLE [dbo].[Compras] DROP CONSTRAINT [FK_Compras_Empleados]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Telefonos_personas]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_RFC]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Personas]
GO
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT [FK_Clientes_Direcciones]
GO
/****** Object:  Index [Telefonos_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [Telefonos_index] ON [dbo].[Telefonos_personas]
GO
/****** Object:  Index [nombreDispositivo_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [nombreDispositivo_index] ON [dbo].[Telefonos_personas]
GO
/****** Object:  Index [ventaFecha_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [ventaFecha_index] ON [dbo].[Suma_Venta]
GO
/****** Object:  Index [compraFecha_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [compraFecha_index] ON [dbo].[Suma_Compra]
GO
/****** Object:  Index [RFC_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [RFC_index] ON [dbo].[RFC]
GO
/****** Object:  Index [IX_Productos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [IX_Productos] ON [dbo].[Productos]
GO
/****** Object:  Index [Estado_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [Estado_index] ON [dbo].[Direcciones]
GO
/****** Object:  Index [Ciudad_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP INDEX [Ciudad_index] ON [dbo].[Direcciones]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[TipoDePersona]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[TipoDePersona]
GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[TipoDePago]
GO
/****** Object:  Table [dbo].[Telefonos_personas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Telefonos_personas]
GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Telefonos]
GO
/****** Object:  Table [dbo].[Suma_Venta]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Suma_Venta]
GO
/****** Object:  Table [dbo].[Suma_Compra]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Suma_Compra]
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[RFC]
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Provedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Personas]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Direcciones]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Compras]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP TABLE [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [POS]    Script Date: 04/05/2018 04:47:49 p. m. ******/
DROP DATABASE [POS]
GO
/****** Object:  Database [POS]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE DATABASE [POS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POS', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\POS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'POS_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\POS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [POS] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POS] SET ARITHABORT OFF 
GO
ALTER DATABASE [POS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [POS] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [POS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [POS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POS] SET  MULTI_USER 
GO
ALTER DATABASE [POS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [POS]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [uniqueidentifier] NOT NULL,
	[id_persona] [uniqueidentifier] NOT NULL,
	[id_telefono] [uniqueidentifier] NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[id_rfc] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido_paterno] [varchar](50) NULL,
	[apellido_materno] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[id_compra] [uniqueidentifier] NOT NULL,
	[id_provedor] [uniqueidentifier] NOT NULL,
	[id_empleado] [uniqueidentifier] NOT NULL,
	[costoCompra] [decimal](18, 0) NOT NULL,
	[cantProducto] [smallint] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[id_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Direcciones]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Direcciones](
	[id_direccion] [uniqueidentifier] NOT NULL,
	[id_persona] [uniqueidentifier] NOT NULL,
	[pais] [varchar](35) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
	[colonia] [varchar](50) NOT NULL,
	[calle] [text] NOT NULL,
	[num_interno] [smallint] NULL,
	[num_externo] [smallint] NOT NULL,
 CONSTRAINT [PK_Direcciones] PRIMARY KEY CLUSTERED 
(
	[id_direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[id_persona] [uniqueidentifier] NOT NULL,
	[id_empleado] [uniqueidentifier] NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[id_telefono] [uniqueidentifier] NOT NULL,
	[id_rfc] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido_paterno] [varchar](50) NOT NULL,
	[apellido_materno] [varchar](50) NOT NULL,
	[sexo] [varchar](15) NOT NULL,
	[edad] [date] NOT NULL,
	[antiguedad] [date] NOT NULL,
	[estatus] [varchar](15) NOT NULL,
	[sueldo] [decimal](18, 0) NOT NULL,
	[jornada] [smallint] NOT NULL,
	[curp] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[id_persona] [uniqueidentifier] NOT NULL,
	[id_tipoDePersona] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Personas] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id_producto] [uniqueidentifier] NOT NULL,
	[id_provedor] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[codigoBarras] [bigint] NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[cant_minima] [smallint] NOT NULL,
	[cant_maxima] [smallint] NOT NULL,
	[cant_actual] [smallint] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provedores]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provedores](
	[id_persona] [uniqueidentifier] NOT NULL,
	[id_provedor] [uniqueidentifier] NOT NULL,
	[id_direccion] [uniqueidentifier] NOT NULL,
	[id_telefono] [uniqueidentifier] NOT NULL,
	[id_rfc] [uniqueidentifier] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[correo] [text] NOT NULL,
 CONSTRAINT [PK_Provedores] PRIMARY KEY CLUSTERED 
(
	[id_provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RFC]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RFC](
	[id_rfc] [uniqueidentifier] NOT NULL,
	[id_persona] [uniqueidentifier] NOT NULL,
	[rfc] [varchar](25) NOT NULL,
 CONSTRAINT [PK_RFC] PRIMARY KEY CLUSTERED 
(
	[id_rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Suma_Compra]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suma_Compra](
	[id_sumaCompra] [uniqueidentifier] NOT NULL,
	[id_compra] [uniqueidentifier] NOT NULL,
	[id_producto] [uniqueidentifier] NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[costoSumaCompra] [decimal](18, 0) NOT NULL,
	[horaCompra] [datetime] NOT NULL,
 CONSTRAINT [PK_Suma_Compra] PRIMARY KEY CLUSTERED 
(
	[id_sumaCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Suma_Venta]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suma_Venta](
	[id_sumaVenta] [uniqueidentifier] NOT NULL,
	[id_venta] [uniqueidentifier] NOT NULL,
	[id_producto] [uniqueidentifier] NOT NULL,
	[costoSumaVenta] [decimal](18, 0) NOT NULL,
	[horaVenta] [datetime] NOT NULL,
 CONSTRAINT [PK_Suma_Venta] PRIMARY KEY CLUSTERED 
(
	[id_sumaVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefonos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Telefonos](
	[id_nombreDispositivo] [uniqueidentifier] NOT NULL,
	[nombre_dispositivo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Telefonos] PRIMARY KEY CLUSTERED 
(
	[id_nombreDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Telefonos_personas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefonos_personas](
	[id_telefono] [uniqueidentifier] NOT NULL,
	[id_nombreDispositivo] [uniqueidentifier] NOT NULL,
	[id_persona] [uniqueidentifier] NOT NULL,
	[telefono] [bigint] NOT NULL,
 CONSTRAINT [PK_Telefonos_personas] PRIMARY KEY CLUSTERED 
(
	[id_telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDePago]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDePago](
	[id_tipoDePago] [uniqueidentifier] NOT NULL,
	[tipoDePago] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TipoDePago] PRIMARY KEY CLUSTERED 
(
	[id_tipoDePago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDePersona]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDePersona](
	[id_tipoDePersona] [uniqueidentifier] NOT NULL,
	[tipoDePersona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDePersona] PRIMARY KEY CLUSTERED 
(
	[id_tipoDePersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 04/05/2018 04:47:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[id_venta] [uniqueidentifier] NOT NULL,
	[id_cliente] [uniqueidentifier] NOT NULL,
	[id_empleado] [uniqueidentifier] NOT NULL,
	[id_tipoDePago] [uniqueidentifier] NOT NULL,
	[cantProducto] [smallint] NOT NULL,
	[costoVenta] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'6647fb02-ca0e-4831-a6f5-002d0890042b', N'148f86fb-1b8d-4d8b-9d06-f4aeb8ec08ee', N'Mexico', N'Nuevo Leon', N'General Escobedo', N'Balcones del norte', N'Honestidad', NULL, 122)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'5b9e12e1-6d9e-4a96-a868-0ab6d24fdbed', N'8cfd336d-7609-4e68-af89-d3685161ce3b', N'Mexico', N'Nuevo Leon', N'Apodaca', N'Santa Rosa', N'Sendero', NULL, 124)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'be3c6363-bdb9-4ad3-80f1-2cb6d96f53eb', N'002e8bbf-03fb-4944-9c6e-8aab04060cb5', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Altavista', N'Habana', NULL, 171)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'8d294bff-75b9-4f5c-a871-556a216e315d', N'04df09fa-d00b-4b96-80c1-eb7575fa6a29', N'Mexico', N'Nuevo Leon', N'Guadalupe', N'Agua nueva', N'Las Torres', NULL, 125)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'f0228deb-75f3-4e58-b814-5db5d692f3c4', N'65837088-cd15-420b-98e6-a068a7d31350', N'Mexico', N'Nuevo Leon', N'San Nicolas de los Garza', N'Anahuac', N'Cerradas de Tulipanes', NULL, 155)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'9a17a7b1-935e-4da8-a9db-633715f2fded', N'c28bcd8c-fa9f-46b1-8597-ac7796364264', N'Mexico', N'Nuevo Leon', N'San Nicolas de los Garza', N'Centro San Nicolas', N'Ramon Treviño', NULL, 315)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'5f583718-ed9c-4063-8d35-70ce93aa053a', N'635c2b80-3ea0-4ca3-b7e8-bd1e2ffc943e', N'Mexico', N'Nuevo Leon', N'San Nicolas de los Garza', N'Viejo Roble', N'Dr. Atl', NULL, 266)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'b9096bfd-3486-4b6a-ad74-81518182fd8d', N'd02cf65d-4946-430e-8015-2d81e480417b', N'Mexico', N'Nuevo Leon', N'San Nicolas de los Garza', N'Centro San Nicolas', N'Aldama', NULL, 214)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'2c027a01-14d5-4518-b2d0-ab625d9809f4', N'ea7db465-4cb5-40ae-a70f-28ce2b87dafc', N'Mexico', N'Nuevo Leon', N'Monterrey', N'Acero', N'Cristobal Colon', NULL, 166)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'6bad84db-b44c-40a6-964a-d913afd18640', N'22eccfc2-aec5-41b1-aa27-946b50c90407', N'Mexico', N'Nuevo Leon', N'Apodaca', N'Santa Rosa', N'Sendero', NULL, 243)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'c28dffc3-d95f-430b-ab5c-eba2b144bb52', N'6c5e6daf-eb87-4a24-b69f-26e75099cd6d', N'Mexico', N'Nuevo Leon', N'General Escobedo', N'El centenario', N'Uranio', NULL, 144)
INSERT [dbo].[Direcciones] ([id_direccion], [id_persona], [pais], [estado], [ciudad], [colonia], [calle], [num_interno], [num_externo]) VALUES (N'28b9d9ca-1169-453c-a5aa-fddb28824e5d', N'40ff6fe2-317d-45e3-8c23-5aab69fee22c', N'Mexico', N'Nuevo Leon', N'Guadalupe', N'Almendros', N'Cuernavaca', NULL, 249)
INSERT [dbo].[Empleados] ([id_persona], [id_empleado], [id_direccion], [id_telefono], [id_rfc], [nombre], [apellido_paterno], [apellido_materno], [sexo], [edad], [antiguedad], [estatus], [sueldo], [jornada], [curp]) VALUES (N'148f86fb-1b8d-4d8b-9d06-f4aeb8ec08ee', N'2ff51144-2c20-4183-9ccd-5d461432141c', N'6647fb02-ca0e-4831-a6f5-002d0890042b', N'785328dd-776c-405a-9cbe-11a225964d09', N'bcf76dc7-903e-427e-ac74-ff9a5d64b947', N'Dolores', N'San Martin', N'Davalos', N'Femenino', CAST(0x83050B00 AS Date), CAST(0x4A380B00 AS Date), N'Activo', CAST(4500 AS Decimal(18, 0)), 10, N'SADD780812MNLNVL08')
INSERT [dbo].[Empleados] ([id_persona], [id_empleado], [id_direccion], [id_telefono], [id_rfc], [nombre], [apellido_paterno], [apellido_materno], [sexo], [edad], [antiguedad], [estatus], [sueldo], [jornada], [curp]) VALUES (N'22eccfc2-aec5-41b1-aa27-946b50c90407', N'ff9055da-84d5-4b4e-9ab6-da5cc9ad454d', N'6bad84db-b44c-40a6-964a-d913afd18640', N'5549feeb-3915-4df9-bc1c-3937240074d5', N'7df65653-3471-4111-b2af-1b0ac69f4fee', N'Manuel', N'Martinez', N'Hernandez', N'Masculino', CAST(0xF3F40A00 AS Date), CAST(0x7A380B00 AS Date), N'Activo', CAST(4500 AS Decimal(18, 0)), 10, N'MAHM670201HNLRRN02')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'6c5e6daf-eb87-4a24-b69f-26e75099cd6d', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'ea7db465-4cb5-40ae-a70f-28ce2b87dafc', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'd02cf65d-4946-430e-8015-2d81e480417b', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'40ff6fe2-317d-45e3-8c23-5aab69fee22c', N'92c02b27-4767-46a3-a42f-1d82a0940448')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'002e8bbf-03fb-4944-9c6e-8aab04060cb5', N'92c02b27-4767-46a3-a42f-1d82a0940448')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'22eccfc2-aec5-41b1-aa27-946b50c90407', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'65837088-cd15-420b-98e6-a068a7d31350', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'c28bcd8c-fa9f-46b1-8597-ac7796364264', N'a49dd6a4-582b-4e75-b501-475ca80025b0')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'635c2b80-3ea0-4ca3-b7e8-bd1e2ffc943e', N'a49dd6a4-582b-4e75-b501-475ca80025b0')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'8cfd336d-7609-4e68-af89-d3685161ce3b', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'04df09fa-d00b-4b96-80c1-eb7575fa6a29', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Personas] ([id_persona], [id_tipoDePersona]) VALUES (N'148f86fb-1b8d-4d8b-9d06-f4aeb8ec08ee', N'ae939a5f-f398-461d-9760-76ffe042a9fd')
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'270cc6a3-a177-4074-85d3-05b7f562af40', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'Emperador', 75065784295531, CAST(11 AS Decimal(18, 0)), 15, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'09161f68-f336-48dc-821f-10557bbf5e9e', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'Contada', 75045807542154, CAST(26 AS Decimal(18, 0)), 10, 40, 35)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'6ff3512a-cd2e-4000-bed2-118115db3c3d', N'8c4da88f-474f-4465-af53-00863d78a943', N'Clasicas', 75016225448796, CAST(13 AS Decimal(18, 0)), 8, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'69110d82-976f-4932-a0a5-14f914cb22ba', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'Cremax fresa', 75065786582945, CAST(16 AS Decimal(18, 0)), 15, 45, 30)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'79617a8f-fd17-4dd7-a6c4-2c529dd15831', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'Indio', 75045806382645, CAST(26 AS Decimal(18, 0)), 10, 40, 35)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'edab06d7-7ae1-447d-94e0-3135edd1ff83', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'Espiral', 75045807410381, CAST(26 AS Decimal(18, 0)), 10, 40, 35)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'2eacf461-a2a1-44d2-90d9-4928c515cdb0', N'8c4da88f-474f-4465-af53-00863d78a943', N'Flaming hot', 75016225448772, CAST(13 AS Decimal(18, 0)), 8, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'bfa6c6d5-05b7-4513-832a-5e0edd318785', N'8c4da88f-474f-4465-af53-00863d78a943', N'Especias con crema', 75016225448987, CAST(13 AS Decimal(18, 0)), 8, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'a91b1057-423e-4907-84aa-6238485b2ebe', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'Marias', 75065789362564, CAST(9 AS Decimal(18, 0)), 15, 30, 30)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'ad673c22-4f67-414a-b477-7b05936de436', N'8c4da88f-474f-4465-af53-00863d78a943', N'Saladas', 75016225451230, CAST(13 AS Decimal(18, 0)), 8, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'0dfb8478-cbd6-427c-8c98-96404d97e460', N'8c4da88f-474f-4465-af53-00863d78a943', N'Condimentadas', 75016225449752, CAST(13 AS Decimal(18, 0)), 8, 30, 25)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'7746179f-4998-4e0e-95bb-a51c1e4c5e67', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'Tecate', 75045808375183, CAST(26 AS Decimal(18, 0)), 10, 40, 35)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'd287a1c3-b2af-4c1b-850b-a52705f3d10f', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'Chockis', 75065786134965, CAST(11 AS Decimal(18, 0)), 15, 30, 20)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'52824c36-8705-4082-b526-db18dc7b8c3d', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'Habaneras', 75065787541232, CAST(16 AS Decimal(18, 0)), 15, 35, 30)
INSERT [dbo].[Productos] ([id_producto], [id_provedor], [nombre], [codigoBarras], [precio], [cant_minima], [cant_maxima], [cant_actual]) VALUES (N'32ca4b55-0da7-4a24-b331-e8df846dbe2d', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'Chelera', 75045808564827, CAST(26 AS Decimal(18, 0)), 10, 40, 35)
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'04df09fa-d00b-4b96-80c1-eb7575fa6a29', N'8c4da88f-474f-4465-af53-00863d78a943', N'8d294bff-75b9-4f5c-a871-556a216e315d', N'8859f1b7-e228-4304-8e5f-43e58e3d23c8', N'983dff55-3969-4a97-a937-34ca1d07b568', N'Sabritas', N'sabritas654@sa.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'8cfd336d-7609-4e68-af89-d3685161ce3b', N'7a941eaa-fcfc-4f6e-b0da-1e19d40ba6fc', N'5b9e12e1-6d9e-4a96-a868-0ab6d24fdbed', N'8e3a7f6f-5d2e-44aa-b7b1-17d90ce665cc', N'05f6fd90-3044-4173-9ead-0d368cfaaf73', N'Cuauhtemoc', N'cuauhtemoc@cuac.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'40ff6fe2-317d-45e3-8c23-5aab69fee22c', N'f43d1310-bbfb-4349-8550-72106c0028aa', N'28b9d9ca-1169-453c-a5aa-fddb28824e5d', N'7664f01f-f94a-4678-9b23-75851abe5137', N'bf5bd04d-3d97-483a-ad57-39aa20d89293', N'Gamesa', N'jlezamiz@gamesacorp.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'6c5e6daf-eb87-4a24-b69f-26e75099cd6d', N'5c8d11e3-82b4-4cfa-834e-8e9713894de6', N'c28dffc3-d95f-430b-ab5c-eba2b144bb52', N'd7005f4d-a8cf-4b73-a91e-38f26176e757', N'8402b5a1-1e53-465a-9858-888486e30696', N'BIMBO', N'bimboparati@contacto.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'c28bcd8c-fa9f-46b1-8597-ac7796364264', N'e662fbc5-ac3f-41bc-a207-928da1a3f5e1', N'9a17a7b1-935e-4da8-a9db-633715f2fded', N'4dd9f786-da2d-4398-8e45-a39e6170085e', N'bb5dd3e3-b44e-4e98-8dbd-ee9e7130ecb2', N'Coca Cola', N'consumidor@coca-cola.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'65837088-cd15-420b-98e6-a068a7d31350', N'4c35a09e-a56d-4de6-b054-ad46661fbd38', N'f0228deb-75f3-4e58-b814-5db5d692f3c4', N'edf939f5-3894-4fa4-a81d-acb6e46aca2d', N'9e857750-b346-4e77-a279-549da4b7707f', N'heineken', N'heineken@mundo.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'ea7db465-4cb5-40ae-a70f-28ce2b87dafc', N'b5647bc2-6f57-42e6-880d-bd99a5058dac', N'2c027a01-14d5-4518-b2d0-ab625d9809f4', N'6f96044a-1cf9-443c-9691-732180995a0d', N'2c7e5cdb-8397-4133-ae8c-bafa4afaa07c', N'Marinela', N'marinela123@mar.com')
INSERT [dbo].[Provedores] ([id_persona], [id_provedor], [id_direccion], [id_telefono], [id_rfc], [nombre], [correo]) VALUES (N'd02cf65d-4946-430e-8015-2d81e480417b', N'21207299-56e3-4ad3-8685-f4b16e6b8f92', N'b9096bfd-3486-4b6a-ad74-81518182fd8d', N'777ff5b9-9fae-4011-b2eb-358f8348bfb5', N'a874b753-c9fe-4536-aa11-939056ee8b20', N'Pepsi', N'pepsi432@pepsi.com')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'05f6fd90-3044-4173-9ead-0d368cfaaf73', N'8cfd336d-7609-4e68-af89-d3685161ce3b', N'BMOL0125456ASSQ')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'7df65653-3471-4111-b2af-1b0ac69f4fee', N'22eccfc2-aec5-41b1-aa27-946b50c90407', N'CAGM6406181Y9')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'983dff55-3969-4a97-a937-34ca1d07b568', N'04df09fa-d00b-4b96-80c1-eb7575fa6a29', N'HGUI3112997QVTR')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'bf5bd04d-3d97-483a-ad57-39aa20d89293', N'40ff6fe2-317d-45e3-8c23-5aab69fee22c', N'BAFJ701213SB10')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'f9710c0e-0b92-431d-a8e5-41a89eb244f3', N'635c2b80-3ea0-4ca3-b7e8-bd1e2ffc943e', N'SADD7808121G8')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'9e857750-b346-4e77-a279-549da4b7707f', N'65837088-cd15-420b-98e6-a068a7d31350', N'HJOM2603874FRTY')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'8402b5a1-1e53-465a-9858-888486e30696', N'6c5e6daf-eb87-4a24-b69f-26e75099cd6d', N'ARCE2545857DCSS')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'a874b753-c9fe-4536-aa11-939056ee8b20', N'd02cf65d-4946-430e-8015-2d81e480417b', N'NTUC2105987DREQ')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'2c7e5cdb-8397-4133-ae8c-bafa4afaa07c', N'ea7db465-4cb5-40ae-a70f-28ce2b87dafc', N'TRLL4665221RFKA')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'fd0b8787-b56c-4e6a-8c31-df9325c6f9a2', N'002e8bbf-03fb-4944-9c6e-8aab04060cb5', N'OIPF790205P26')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'bb5dd3e3-b44e-4e98-8dbd-ee9e7130ecb2', N'c28bcd8c-fa9f-46b1-8597-ac7796364264', N'CALF750228LK')
INSERT [dbo].[RFC] ([id_rfc], [id_persona], [rfc]) VALUES (N'bcf76dc7-903e-427e-ac74-ff9a5d64b947', N'148f86fb-1b8d-4d8b-9d06-f4aeb8ec08ee', N'MAHM670102NJA')
INSERT [dbo].[Telefonos] ([id_nombreDispositivo], [nombre_dispositivo]) VALUES (N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'Telefono fijo')
INSERT [dbo].[Telefonos] ([id_nombreDispositivo], [nombre_dispositivo]) VALUES (N'7612e804-fd3c-441c-a979-cde3e3c46ad2', N'Celular')
INSERT [dbo].[Telefonos] ([id_nombreDispositivo], [nombre_dispositivo]) VALUES (N'52ea27c6-c502-4655-8bf4-f90d029080ab', N'Fax')
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'785328dd-776c-405a-9cbe-11a225964d09', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'148f86fb-1b8d-4d8b-9d06-f4aeb8ec08ee', 83564578)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'8e3a7f6f-5d2e-44aa-b7b1-17d90ce665cc', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'8cfd336d-7609-4e68-af89-d3685161ce3b', 83444875)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'777ff5b9-9fae-4011-b2eb-358f8348bfb5', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'd02cf65d-4946-430e-8015-2d81e480417b', 83235646)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'd7005f4d-a8cf-4b73-a91e-38f26176e757', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'6c5e6daf-eb87-4a24-b69f-26e75099cd6d', 83947808)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'5549feeb-3915-4df9-bc1c-3937240074d5', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'22eccfc2-aec5-41b1-aa27-946b50c90407', 83824878)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'8859f1b7-e228-4304-8e5f-43e58e3d23c8', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'04df09fa-d00b-4b96-80c1-eb7575fa6a29', 83208471)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'6f96044a-1cf9-443c-9691-732180995a0d', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'ea7db465-4cb5-40ae-a70f-28ce2b87dafc', 83569471)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'7664f01f-f94a-4678-9b23-75851abe5137', N'7612e804-fd3c-441c-a979-cde3e3c46ad2', N'40ff6fe2-317d-45e3-8c23-5aab69fee22c', 83802554)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'78a63526-1652-4b12-91f8-81c310acfb86', N'7612e804-fd3c-441c-a979-cde3e3c46ad2', N'002e8bbf-03fb-4944-9c6e-8aab04060cb5', 83831222)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'bebe8fc3-239e-433b-ae7f-a0e184579dde', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'635c2b80-3ea0-4ca3-b7e8-bd1e2ffc943e', 83564852)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'4dd9f786-da2d-4398-8e45-a39e6170085e', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'c28bcd8c-fa9f-46b1-8597-ac7796364264', 18007044400)
INSERT [dbo].[Telefonos_personas] ([id_telefono], [id_nombreDispositivo], [id_persona], [telefono]) VALUES (N'edf939f5-3894-4fa4-a81d-acb6e46aca2d', N'de5f3c51-4766-4425-9ea0-8cc95abdb35f', N'65837088-cd15-420b-98e6-a068a7d31350', 83225547)
INSERT [dbo].[TipoDePago] ([id_tipoDePago], [tipoDePago]) VALUES (N'73e2f1f1-2c05-4e42-aa5c-8769703b2b79', N'EFECTIVO')
INSERT [dbo].[TipoDePago] ([id_tipoDePago], [tipoDePago]) VALUES (N'09d9391d-b238-45aa-81a5-a22d84375c90', N'CREDITO')
INSERT [dbo].[TipoDePago] ([id_tipoDePago], [tipoDePago]) VALUES (N'b6d669e6-4fcb-40ef-ba70-c06416751819', N'CHEQUE')
INSERT [dbo].[TipoDePago] ([id_tipoDePago], [tipoDePago]) VALUES (N'9007a244-fef5-41d8-9fd4-efccea7deff8', N'DEBITO')
INSERT [dbo].[TipoDePago] ([id_tipoDePago], [tipoDePago]) VALUES (N'e25ddcab-4c11-4f19-8b4d-fc75db31ddd6', N'VALES')
INSERT [dbo].[TipoDePersona] ([id_tipoDePersona], [tipoDePersona]) VALUES (N'92c02b27-4767-46a3-a42f-1d82a0940448', N'Cliente')
INSERT [dbo].[TipoDePersona] ([id_tipoDePersona], [tipoDePersona]) VALUES (N'a49dd6a4-582b-4e75-b501-475ca80025b0', N'Empleado')
INSERT [dbo].[TipoDePersona] ([id_tipoDePersona], [tipoDePersona]) VALUES (N'ae939a5f-f398-461d-9760-76ffe042a9fd', N'Provedor')
SET ANSI_PADDING ON

GO
/****** Object:  Index [Ciudad_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE NONCLUSTERED INDEX [Ciudad_index] ON [dbo].[Direcciones]
(
	[ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Estado_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE NONCLUSTERED INDEX [Estado_index] ON [dbo].[Direcciones]
(
	[estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Productos]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Productos] ON [dbo].[Productos]
(
	[codigoBarras] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RFC_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RFC_index] ON [dbo].[RFC]
(
	[rfc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [compraFecha_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE NONCLUSTERED INDEX [compraFecha_index] ON [dbo].[Suma_Compra]
(
	[id_sumaCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ventaFecha_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE NONCLUSTERED INDEX [ventaFecha_index] ON [dbo].[Suma_Venta]
(
	[horaVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [nombreDispositivo_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE NONCLUSTERED INDEX [nombreDispositivo_index] ON [dbo].[Telefonos_personas]
(
	[id_nombreDispositivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Telefonos_index]    Script Date: 04/05/2018 04:47:49 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [Telefonos_index] ON [dbo].[Telefonos_personas]
(
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Direcciones] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direcciones] ([id_direccion])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Direcciones]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Personas]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_RFC] FOREIGN KEY([id_rfc])
REFERENCES [dbo].[RFC] ([id_rfc])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_RFC]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Telefonos_personas] FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefonos_personas] ([id_telefono])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Telefonos_personas]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Empleados]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Provedores] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[Provedores] ([id_provedor])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Provedores]
GO
ALTER TABLE [dbo].[Direcciones]  WITH CHECK ADD  CONSTRAINT [FK_Direcciones_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Direcciones] CHECK CONSTRAINT [FK_Direcciones_Personas]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Direcciones] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direcciones] ([id_direccion])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Direcciones]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Personas]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_RFC] FOREIGN KEY([id_rfc])
REFERENCES [dbo].[RFC] ([id_rfc])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_RFC]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Telefonos_personas] FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefonos_personas] ([id_telefono])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Telefonos_personas]
GO
ALTER TABLE [dbo].[Personas]  WITH CHECK ADD  CONSTRAINT [FK_Personas_TipoDePersona] FOREIGN KEY([id_tipoDePersona])
REFERENCES [dbo].[TipoDePersona] ([id_tipoDePersona])
GO
ALTER TABLE [dbo].[Personas] CHECK CONSTRAINT [FK_Personas_TipoDePersona]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Provedores] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[Provedores] ([id_provedor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Provedores]
GO
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_Direcciones] FOREIGN KEY([id_direccion])
REFERENCES [dbo].[Direcciones] ([id_direccion])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_Direcciones]
GO
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_Personas]
GO
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_RFC] FOREIGN KEY([id_rfc])
REFERENCES [dbo].[RFC] ([id_rfc])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_RFC]
GO
ALTER TABLE [dbo].[Provedores]  WITH CHECK ADD  CONSTRAINT [FK_Provedores_Telefonos_personas] FOREIGN KEY([id_telefono])
REFERENCES [dbo].[Telefonos_personas] ([id_telefono])
GO
ALTER TABLE [dbo].[Provedores] CHECK CONSTRAINT [FK_Provedores_Telefonos_personas]
GO
ALTER TABLE [dbo].[RFC]  WITH CHECK ADD  CONSTRAINT [FK_RFC_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[RFC] CHECK CONSTRAINT [FK_RFC_Personas]
GO
ALTER TABLE [dbo].[Suma_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Suma_Compra_Compras] FOREIGN KEY([id_compra])
REFERENCES [dbo].[Compras] ([id_compra])
GO
ALTER TABLE [dbo].[Suma_Compra] CHECK CONSTRAINT [FK_Suma_Compra_Compras]
GO
ALTER TABLE [dbo].[Suma_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Suma_Compra_Productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Suma_Compra] CHECK CONSTRAINT [FK_Suma_Compra_Productos]
GO
ALTER TABLE [dbo].[Suma_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Suma_Venta_Productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[Productos] ([id_producto])
GO
ALTER TABLE [dbo].[Suma_Venta] CHECK CONSTRAINT [FK_Suma_Venta_Productos]
GO
ALTER TABLE [dbo].[Suma_Venta]  WITH CHECK ADD  CONSTRAINT [FK_Suma_Venta_Ventas] FOREIGN KEY([id_venta])
REFERENCES [dbo].[Ventas] ([id_venta])
GO
ALTER TABLE [dbo].[Suma_Venta] CHECK CONSTRAINT [FK_Suma_Venta_Ventas]
GO
ALTER TABLE [dbo].[Telefonos_personas]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_personas_Personas] FOREIGN KEY([id_persona])
REFERENCES [dbo].[Personas] ([id_persona])
GO
ALTER TABLE [dbo].[Telefonos_personas] CHECK CONSTRAINT [FK_Telefonos_personas_Personas]
GO
ALTER TABLE [dbo].[Telefonos_personas]  WITH CHECK ADD  CONSTRAINT [FK_Telefonos_personas_Telefonos1] FOREIGN KEY([id_nombreDispositivo])
REFERENCES [dbo].[Telefonos] ([id_nombreDispositivo])
GO
ALTER TABLE [dbo].[Telefonos_personas] CHECK CONSTRAINT [FK_Telefonos_personas_Telefonos1]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[Empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_TipoDePago] FOREIGN KEY([id_tipoDePago])
REFERENCES [dbo].[TipoDePago] ([id_tipoDePago])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_TipoDePago]
GO
USE [master]
GO
ALTER DATABASE [POS] SET  READ_WRITE 
GO

create view 
datos_cliente 
as select id_cliente, id_persona, id_telefono, id_direccion, id_rfc, nombre, apellido_paterno, apellido_materno
from Clientes;

create view 
datos_compras
as select id_compra, id_provedor, id_empleado, costoCompra, cantProducto 
from Compras;

create view 
datos_direcciones
as select id_direccion, id_persona, pais, estado, ciudad, colonia, calle, num_interno, num_externo
from Direcciones;

create view 
datos_empleado
as select id_persona, id_empleado, id_direccion, id_telefono, id_rfc, nombre, apellido_paterno, apellido_materno, sexo, edad, antiguedad, estatus, sueldo, jornada, curp
from Empleados;

create view 
datos_personas
as select id_persona, id_tipoDePersona
from Personas;

create view 
datos_productos 
as select id_producto, id_provedor, nombre, codigoBarras, precio, cant_minima, cant_maxima, cant_actual
from Productos;

create view 
datos_provedores
as select id_persona, id_provedor, id_direccion, id_telefono, id_rfc, nombre, correo
from Provedores;

create view 
datos_RFC
as select id_rfc, id_persona, rfc 
from RFC;

create view 
datos_suma_compra
as select id_sumaCompra, id_compra, id_producto, cantidad, costoSumaCompra, horaCompra
from Suma_Compra;

create view 
datos_suma_venta
as select id_sumaVenta, id_venta, id_producto, costoSumaVenta, horaVenta 
from Suma_Venta;

create view 
datos_telefonos
as select id_nombreDispositivo, nombre_dispositivo
from Telefonos;

create view 
datos_telefonos_personas
as select id_telefono, id_nombreDispositivo, id_persona, telefono 
from Telefonos_personas;

create view 
datos_tipodepago
as select id_tipoDePago, TipoDePago
from TipoDePago;

create view 
datos_tipodepersona
as select id_tipoDePersona, tipoDePersona
from TipoDePersona;

create view 
datos_ventas
as select id_venta, id_cliente, id_empleado, id_tipoDePago, cantProducto, costoVenta 
from Ventas; 


-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////////// TRIGGERS ///////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- /////////////////////////////// CREAMOS UNA TABLA QUE GUARDARA LOS CAMBIOS ////////////////////////////////////////////
create table historial(
id_his int IDENTITY(1,1) primary key,
fechcamb_his datetime
)

-- /////////////////////////////// TRIGGER QUE INSERTA LA FECHA DEL CAMBIO ///////////////////////////////////////////////

CREATE TRIGGER historial_camb
ON personas
 AFTER INSERT ON personas
	FOR EACH ROW
 BEGIN
	insert into historial (fechcamb_his) values (getdate())
 END

-- //////////////////////// SI QUISIERAMOS QUE EL TRIGGER EVITE QUE EJECUTE LA ACCION USAMOS /////////////////////////////

create trigger historial_camb2
  on contactos
  instead of insert
  as
    insert into historial (fechcamb_his) values (getdate());

-- ///////////////////////////////// NO PERMITIR BORRAR TABLAS //////////////////////////////////////////////
CREATE TRIGGER nodroptable
       ON DATABASE FOR DROP_TABLE
       AS
       BEGIN
         RAISERROR ('NO PUEDES BORRAR CUALQUIER TABLA' , 16, 1)
         ROLLBACK TRANSACTION
       END

-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- ////////////////////////////////////////////// FUNCIONES //////////////////////////////////////////////////////////////
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

create function crear_user
 (@nombre varchar(20),
  @apelmat varchar(20),
  @apelpat varchar(20)
 )
 returns varchar(60)
 as
 begin 
   declare @resultado varchar(60)
   set @resultado = ( LTRIM(@nombre varchar(20)) + LTRIM(@apelmat varchar(20)) + LTRIM(@apelpat varchar(20) )
 )
   return @resultado
 end;

 select dbo.crear_user('Everardo','Molina','Saceuda');

 -- //////////////////////////////////////////// FUNCION DE CALCULAR RFC /////////////////////////////////////////////

 create function crear_rfc
 (@nombre varchar(20),
  @apelmat varchar(20),
  @apelpat varchar(20),
  @fecha time
 )
 returns varchar
 as
 begin 
   declare @resultado varchar(60)
   --DECLARE @fechanac VARCHAR(30) = CONVERT(VARCHAR(30),@fecha,112);
   set @resultado = ( LTRIM(@nombre varchar(20)) + LTRIM(@apelmat varchar(20)) + LTRIM(@apelpat varchar(20)) + @fechanac)
 )
   return @resultado
 end;

select dbo.crear_rfc('Everardo','Molina','Saceuda','08/04/2018');


DECLARE @idperso uniqueidentifier = NEWID()
DECLARE @idCli uniqueidentifier = NEWID()
DECLARE @idTel uniqueidentifier = NEWID()
DECLARE @IdDir uniqueidentifier = NEWID()
DECLARE @idRfc uniqueidentifier = NEWID()

--Variables a Modificar--
DECLARE @nom varchar(50) = 'Brayan'
DECLARE @apP varchar(50) = 'Bravo'
DECLARE @apM varchar(50) = 'Martinez'
DECLARE @tipo uniqueidentifier = 'cliente'
--Variables Direcciones--
DECLARE @pais varchar(35) = 'Mexico'
DECLARE @estado varchar(50) = 'Nuevo Leon'
DECLARE @ciudad varchar(50) = 'Monterrey'
DECLARE @colonia varchar(50) = 'Independencia'
DECLARE @calle nvarchar(max) = ''
DECLARE @numIn smallInt = 2045
DECLARE @numEx smallInt = 0
--Variables Telefonos--
DECLARE @telefono bigint = 83459687
DECLARE @tipotel uniqueidentifier = '9878564309'
--Variables RFC--
DECLARE @rfc varchar(25) = 'BRMAT980511'

INSERT INTO Personas(id_persona, id_tipoDePersona) 
values (@idperso, @tipo)

INSERT INTO Telefonos_personas(id_telefono, id_nombreDispositivo,id_persona,telefono)
values(@idTel, @tipotel, @idperso,@telefono)

INSERT INTO Direcciones(id_direccion,id_persona,pais,estado,ciudad,colonia,calle,num_interno, num_externo) 
values(@IdDir,@idperso,@pais,@estado,@ciudad,@colonia,@calle,@numIn,@numEx)

INSERT INTO RFC(id_rfc,id_persona,rfc)
values(@idRfc, @idperso, @rfc)

INSERT INTO Clientes (id_cliente, id_persona, id_telefono, id_direccion, id_rfc, nombre, apellido_paterno, apellido_materno)
values(@idCli, @idperso, @idTel, @IdDir, @idRfc, @nom, @apP, @apM)

-- -------------------------------------------------------------------------------------------------

DECLARE @id uniqueidentifier = NEWID()
DECLARE @idTel uniqueidentifier = NEWID()
DECLARE @IdDir uniqueidentifier = NEWID()
DECLARE @idRfc uniqueidentifier = NEWID()

--Variables a Modificar--
DECLARE @nom varchar(50) = 'Brayan'
DECLARE @correo nvarchar(max) = ''
DECLARE @tipo uniqueidentifier = @provedor
--Variables Direcciones--
DECLARE @pais varchar(35) = 'Mexico'
DECLARE @estado varchar(50) = 'Nuevo Leon'
DECLARE @ciudad varchar(50) = 'Monterrey'
DECLARE @colonia varchar(50) = 'Independencia'
DECLARE @calle nvarchar(max) = ''
DECLARE @numIn smallInt = 2045
DECLARE @numEx smallInt = 0
--Variables Telefonos--
DECLARE @telefono bigint = 83459687
DECLARE @tipotel uniqueidentifier = @cel
--Variables RFC--
DECLARE @rfc varchar(25) = 'BRMAT980511'

INSERT INTO Personas(id_persona, id_tipoDePersona) 
values (@idperso, @tipo)

INSERT INTO Telefonos_personas(id_telefono, id_nombreDispositivo,id_persona,telefono)
values(@idTel, @tipotel, @idperso,@telefono)

INSERT INTO Direcciones(id_direccion,id_persona,pais,estado,ciudad,colonia,calle,num_interno, num_externo) 
values(@IdDir,@idperso,@pais,@estado,@ciudad,@colonia,@calle,@numIn,@numEx)

INSERT INTO RFC(id_rfc,id_persona,rfc)
values(@idRfc, @idperso, @rfc)

INSERT INTO Provedores(id_provedor, id_persona, id_telefono, id_direccion, id_rfc, nombre,correo)
values(@id, @idperso, @idTel, @IdDir, @idRfc, @nom, @correo)

