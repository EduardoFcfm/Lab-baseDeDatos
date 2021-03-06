/*
1725077 López Fernández Alejandra
1670965 López Guerrero Luis Angel
1554719 Luevano Álvarez Eduardo Alejandro
1731484  Sánchez Hernández Israel
*/

USE [master]
GO
/****** Object:  Database [Tacos]    Script Date: 06/05/2018 07:21:06 a. m. ******/
CREATE DATABASE [Tacos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tacos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Tacos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tacos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Tacos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tacos] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tacos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tacos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tacos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tacos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tacos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tacos] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tacos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tacos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tacos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tacos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tacos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tacos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tacos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tacos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tacos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tacos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tacos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tacos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tacos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tacos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tacos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tacos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tacos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tacos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tacos] SET  MULTI_USER 
GO
ALTER DATABASE [Tacos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tacos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tacos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tacos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tacos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tacos] SET QUERY_STORE = OFF
GO
USE [Tacos]
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
USE [Tacos]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [uniqueidentifier] NOT NULL,
	[RFC] [nchar](10) NULL,
	[Nombre] [nchar](10) NULL,
	[Direccion] [nchar](10) NULL,
	[Salario] [nchar](10) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[INFORMACIONDEEMPLEADOS]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[INFORMACIONDEEMPLEADOS]
AS
SELECT Nombre, RFC,Salario  FROM Empleado
GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[Id_Producto] [uniqueidentifier] NOT NULL,
	[Cantidad] [nchar](10) NULL,
	[Caducidad] [nchar](10) NULL,
 CONSTRAINT [PK_Inventario] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[BODEGA]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[BODEGA]
AS
SELECT Id_Producto, Caducidad FROM Inventario;
GO
/****** Object:  Table [dbo].[Local]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Local](
	[Id_local] [uniqueidentifier] NOT NULL,
	[Direccion] [nchar](10) NULL,
	[Nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[Id_local] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[UBICACION]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[UBICACION]
AS
SELECT Direccion, Nombre FROM Local ;
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id_Orden] [uniqueidentifier] NOT NULL,
	[Precio] [money] NULL,
	[Cantidad] [nchar](10) NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id_Orden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ENTREGA]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ENTREGA]
AS 
SELECT id_orden, Precio FROM Pedido;
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [uniqueidentifier] NULL,
	[nombre] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direccion]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direccion](
	[idDireccion] [uniqueidentifier] NULL,
	[calle] [nchar](10) NULL,
	[numeroExterior] [nchar](10) NULL,
	[numeroInterior] [nchar](10) NOT NULL,
	[municipio] [nchar](10) NULL,
	[estado] [nchar](10) NULL,
	[pais] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nombre]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nombre](
	[idNombre] [uniqueidentifier] NULL,
	[primerNombre] [nchar](10) NULL,
	[segundoNombre] [nchar](10) NOT NULL,
	[apellidoPaterno] [nchar](10) NULL,
	[apellidoMaterno] [nchar](10) NULL,
	[nacionalidad] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[bodeguita]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[bodeguita]
	@Id_Producto nchar(10),
	@Caducidad  nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Id_Producto, Caducidad
	FROM Inventario
	WHERE Id_Producto = @Id_Producto AND Caducidad = @Caducidad

GO
/****** Object:  StoredProcedure [dbo].[InfoEmpleados]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InfoEmpleados]
	@primerNombre nchar(10),
	@segundoNombre nchar(10),
	@apellidoPaterno nchar(10),
	@apellidoMaterno nchar(10)
AS
	SET NOCOUNT ON;
	SELECT primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno
	FROM Nombre
	WHERE primerNombre = @primerNombre AND segundoNombre = @segundoNombre AND apellidoPaterno = @apellidoPaterno  AND apellidoMaterno = @apellidoMaterno

GO
/****** Object:  StoredProcedure [dbo].[ParaLlevar]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ParaLlevar]
	@Precio nchar(10),
	@Cantidad nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Precio, Cantidad
	FROM Pedido
	WHERE Precio = @Precio AND Cantidad = @Cantidad

GO
/****** Object:  StoredProcedure [dbo].[recursosHuamnos]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[recursosHuamnos]
      @Nombre  nchar(10),
	  @RFC     nchar(10)

AS
   set nocount on;
   SELECT Nombre, RFC, Salario
   FROM Empleado
   WHERE Nombre = @Nombre  AND RFC = @RFC
  
GO
/****** Object:  StoredProcedure [dbo].[recursosHuamnos1]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[recursosHuamnos1]
      @Nombre  nchar(10),
	  @RFC     nchar(10)

AS
   set nocount on;
   SELECT Nombre, RFC,Salario
   FROM Empleado
   WHERE Nombre = @Nombre  AND RFC = @RFC
  
GO
/****** Object:  StoredProcedure [dbo].[UBICACIONDENEGOCIOS]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UBICACIONDENEGOCIOS]
	@Direccion nchar(10),
	@Nombre nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Direccion, Nombre
	FROM Local
	WHERE Direccion = @Direccion AND Nombre = @Nombre

GO
/****** Object:  DdlTrigger [TR_Seguridad]    Script Date: 06/05/2018 07:21:06 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
       CREATE TRIGGER [TR_Seguridad]
       ON DATABASE FOR DROP_TABLE, ALTER_TABLE
       AS
       BEGIN
         RAISERROR ('No está permitido borrar ni modificar tablas !' , 16, 1)
         ROLLBACK TRANSACTION

       END
GO
ENABLE TRIGGER [TR_Seguridad] ON DATABASE
GO
USE [master]
GO
ALTER DATABASE [Tacos] SET  READ_WRITE 
GO


CREATE DATABASE Proyecto_Base_datos

USE Proyecto_Base_datos

CREATE TABLE Empleado (
	RFC varchar(50)  PRIMARY KEY,
	nombre varchar(20) NOT NULL,
	ApellidoPa varchar(20) NOT NULL,
	ApellidoMa varchar(20) NOT NULL,
	Calle varchar(30) NOT NULL,
	Colonia varchar(30) NOT NULL,
	Numero int,
	Salario money,
	Puesto varchar(20)
);

CREATE TABLE Repartidor(
	RepartidorID int PRIMARY KEY,
	Licencia varchar(30),
	num_Ordenes int, 
	RFC varchar(50) FOREIGN KEY REFERENCES Empleado(RFC)
);

CREATE TABLE Inventario(
	ProductoID int PRIMARY KEY,
	Nombre varchar(30),
	Cantidad varchar(10),
	Descontinuado int
);

CREATE TABLE Pedido(
	OrdenID int PRIMARY KEY,
);

CREATE TABLE Cliente(
	ClienteID int PRIMARY KEY,
	nombre varchar(20),
);

CREATE TABLE Cliente_Local(
	Num_Mesa int,
	ClienteID int FOREIGN KEY REFERENCES Cliente(ClienteID)
);

CREATE TABLE Cliente_Domicilio(
	Calle varchar(50),
	Colonia varchar(50),
	Numero int,
	Telefono varchar(20),
	ClienteID int FOREIGN KEY REFERENCES Cliente(ClienteID)
);

CREATE TABLE Proveedor(
	ProveedorID int PRIMARY KEY,
	Compañia varchar(30),
	producto varchar(30)
);

CREATE TABLE Menu(
	PlatilloID int PRIMARY KEY,
	Platillo varchar(30),
	Precio int,
	Ingredientes varchar(50)
);

CREATE TABLE Ordena(
	OrdenID int FOREIGN KEY REFERENCES Pedido(OrdenID),
	ClienteID int FOREIGN KEY REFERENCES Cliente(ClienteID),
	Fecha varchar(15) null,
	CONSTRAINT pk_Ordena PRIMARY KEY (OrdenID,ClienteID)
);


CREATE TABLE Entrega(
	RepartidorID int FOREIGN KEY REFERENCES Repartidor(RepartidorID),
	OrdenID int FOREIGN KEY REFERENCES Pedido(OrdenID),
	Tipo_entrega varchar(40) null,
	Fecha varchar(15),
	CONSTRAINT pk_Entrega_orden PRIMARY KEY (RepartidorID, OrdenID)
);

CREATE TABLE Surte(
	ProductoID int FOREIGN KEY REFERENCES Inventario(ProductoID),
	ProveedorID int FOREIGN KEY REFERENCES Proveedor(ProveedorID),
	Cantidad varchar(25),
	Fecha varchar(25),
	CONSTRAINT pk_Surte PRIMARY KEY (ProductoID,ProveedorID)
);

CREATE TABLE Consumo(
	ProductoID int FOREIGN KEY REFERENCES Inventario(ProductoID),
	PlatilloID int FOREIGN KEY REFERENCES Menu(PlatilloID),
	Cantidad_Consumida varchar(25),
	CONSTRAINT pk_Consumo PRIMARY KEY (ProductoID, PlatilloID)
);

CREATE TABLE Menu_Pedido(
	PlatilloID int FOREIGN KEY REFERENCES Menu(PlatilloID),
	OrdenID int FOREIGN KEY REFERENCES Pedido(OrdenID),
	Cantidad varchar(30),
	Precio money
);

/*-EMPLEADOS---------------------------------------------------------------------------------*/

INSERT Empleado  VALUES ( 'SAHI9907139E2' ,'Israel','Sanchez','Hernandez','Matoralez','Huertos',202,2000,'Repartidor') /*Repartidor*/
INSERT Empleado  VALUES ( 'LOGL9711052E3','Luis Angel','López','Guerrero','Cenzontle','Golondrinas',218,2500,'Cocinero') /*Cocinero*/
INSERT Empleado  VALUES ( 'TOBP9803055Z1','Paulina Lizeth','Torres','Badillo','Villa andalucia','Villas Oriente',202,2500,'Cocinero') /*Cocinero*/
INSERT Empleado  VALUES ( 'MORR900510555','Ricardo','Morales','Rodriguez','molinos','san roque', 201,2600,'Repartidor') /*Repartidor*/
INSERT Empleado  VALUES ( 'GOBJ830829PP5','Juana','Gonzales','Blanco','Calle sabino','Los morales',443,1800,'Empleado General') /*EmpleadoGENERAL*/
INSERT Empleado  VALUES ( 'VACL820408E97','Leonardo','Vazques','Cruz','Aaron Sáenz','Nuevo San Sebastian',123,1950,'Repartidor') /*Repartidor*/
INSERT Empleado  VALUES	('RASE990705SY5','Elizabeth','Ramirez','Saldaña','Lago Miramar','Centrika',219,2200,'Cocinero') /*Cocinero*/
INSERT Empleado VALUES ('CAPJ990913US6','Jesus Noe','Cavazos','Perez','Manuel Andrade','La Florida', 2467,2000,'Repartidor') /*Repartidor*/
INSERT Empleado Values ('ZALH000610EN4','Hector','Zavala','López','Zacatecas','Independencia',725,2564.50,'Empleado General') /*EmpleadoGENERAL*/
INSERT Empleado VALUES ('LEAM860509V38','Miguel Angel','leones','Alvarado','Jalapa','Mitras Nte',311,1750.50,'Empleado General') /*EmpleadoGENERAL*/

SELECT*FROM Empleado

/*-Repartidores ---------------------------------------------------------------------------*/
INSERT Repartidor VALUES (1,'LC21-123',3,'SAHI9907139E2')
INSERT Repartidor VALUES (2,'Lp32-421',5,'MORR900510555')
INSERT Repartidor VALUES (3,'LKM2-987',2,'VACL820408E97')
INSERT Repartidor VALUES (4,'LOE6-342',4,'CAPJ990913US6')

SELECT*FROM Repartidor

/*-Inventario----------------------------------------------------------------*/

INSERT Inventario VALUES(1,'Tomate','5 kg.',0)
INSERT Inventario VALUES(2,'Cebolla','6 kg.',0)
INSERT Inventario VALUES(3,'Jalapeño','5 Kg.',1)
INSERT Inventario VALUES(4,'Lechuga','10 Pza',0)
INSERT Inventario VALUES(5,'Carne Cerdo','14 KG.',0)
INSERT Inventario VALUES(6,'Pulpa Molida','10 kg',0)
INSERT Inventario VALUES(7,'Chicharron Cerdo','16 KG',0)
INSERT Inventario VALUES(8,'Frijoles','12 KG',0)
INSERT Inventario VALUES(9,'Tortillas','25 Ptz',0)
INSERT Inventario VALUES(10,'aceite','8 L.',0)
INSERT Inventario VALUES(11,'limon','2 kg.',1)
INSERT Inventario VALUES(12,'Refrescos','10 cajas',0)
INSERT Inventario VALUES(13,'cilantro','8 ramos',1)

SELECT*FROM Inventario

/*Pedido-----------------------------------------------------------------*/

INSERT Pedido VALUES (1)
INSERT Pedido VALUES (2)
INSERT Pedido VALUES (3)
INSERT Pedido VALUES (4)

SELECT*FROM Pedido

/*Cliente-----------------------------------------------------------------*/

INSERT Cliente VALUES (1,'Jose') /*Local*/
INSERT Cliente VALUES (2,'Elizabeth') /*Domicilio*/
INSERT Cliente VALUES (3,'Ricardo') /*Domicilio*/
INSERT Cliente VALUES (4,'Miguel') /*Local*/
INSERT Cliente VALUES (5,'Sarahi') /*Local*/
INSERT Cliente VALUES (6,'diana') /*Domicilio*/
INSERT Cliente VALUES (7,'Rafael') /*Domicilio*/

SELECT*FROM Cliente

/*Cliente_Local-----------------------------------------------------------------*/

INSERT Cliente_Local VALUES (1,1)
INSERT Cliente_Local VALUES (2,4)
INSERT Cliente_Local VALUES (3,5)

SELECT * FROM Cliente_Local

/*Cliente_Domicilio-----------------------------------------------------------------*/

INSERT Cliente_Domicilio VALUES ('Calle Garibaldi','Centro', 210,'82-40-46-84',2)
INSERT Cliente_Domicilio Values ('Calle Zaragoza','Centro' , 243, '11-22-33-44',3)
INSERT Cliente_Domicilio VALUES ('Calle Washington','Centro',345,'82-48-96-52',6)
INSERT Cliente_Domicilio VALUES ('Calle 5 mayo','Centro',220,'81-2649-4587',7)

SELECT*FROM Cliente_Domicilio

/*Ordena-----------------------------------------------------------------*/

INSERT Ordena VALUES (1,1,'03/05/2018')
INSERT Ordena VALUES (2,2,'03/05/2018')
INSERT Ordena VALUES (3,3,'03/05/2018')
INSERT Ordena VALUES (4,4,'04/05/2018')
INSERT Ordena VALUES (5,5,'04/05/2018')
INSERT Ordena VALUES (6,6,'04/05/2018')
INSERT Ordena VALUES (7,7,'05/06/2018')

SELECT * FROM Ordena

/*Proveedor-----------------------------------------------------------------*/

INSERT Proveedor VALUES (1,'Central Carnes','Productos carne')
INSERT Proveedor VALUES (2,'Central de abastos','Frutas y verduras')
INSERT proveedor VALUES (3,'Tortilleria La Mexiana','Tortilla etc.')
INSERT Proveedor VALUES (4,'Coca Cola', 'Refrescos')

SELECT * FROM Proveedor

/*Surte-----------------------------------------------------------------*/

INSERT Surte VALUES (1,2,'2 Kg.','04/05/2018')
INSERT Surte VALUES (2,2,'5 Kg.','04/05/2018')
INSERT Surte VALUES (12,4,'4 cajas','04/05/2018')
INSERT Surte VALUES (4,2,'10 pza','04/05/2018')
INSERT Surte VALUES (6,1,'4 Kg.','05/05/2018')
INSERT Surte VALUES (7,1,'8 Kg.','05/05/2018')
INSERT Surte VALUES (12,4,'4 cajas','05/05/2018')

SELECT * FROM Surte

/*Menu-----------------------------------------------------------------*/

INSERT Menu VALUES (1,'Burrito de Asado',20,'Carne puerco,chile cascabel,tortilla,lechuga')
INSERT Menu VALUES (2,'Burrito Picadillo ',20,'Carne molida de res, papa,Tortilla, lechuga')
INSERT Menu VALUES (3,'Burrito Chicharron',20,'Chicharron Cerdo, chile cascabel,Tortilla,Lechuga')
INSERT Menu VALUES (4,'Burrito Deshebrada',20,'Carne res deshebrada, papa,Tortilla, Lechuga')
INSERT Menu VALUES (5,'Burrito Barbacoa',25,'Carne labio novillo, especias, tortilla, lechuga')

SELECT * FROM  Menu

/*Consumo-----------------------------------------------------------------*/

INSERT Consumo VALUES (6,2,'5 kg.')
INSERT Consumo VALUES (7,3,'4 kg.')
INSERT Consumo VALUES (5,1,'6 kg.')
INSERT Consumo VALUES (1,1,'1 pza')

SELECT * FROM Consumo

/*Menu_Pedido-----------------------------------------------------------------*/

INSERT Menu_Pedido VALUES (1, 1, '2 burritos asado', 40)
INSERT Menu_Pedido VALUES (5,2,'3 burritos barbacoa',75)
INSERT Menu_Pedido VALUES (4,3,'1 burrito deshebrada',20)
INSERT Menu_Pedido VALUES (2,4,'1 burrito Picadillo',20)

SELECT * FROM Menu_Pedido


