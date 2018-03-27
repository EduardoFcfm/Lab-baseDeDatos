USE [Tacos]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 27/3/2018 01:00:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [uniqueidentifier] NULL,
	[nombre] [nchar](10) NULL
) ON [PRIMARY]
GO


  INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'Alejandro' )

  INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'PEPE' )

   INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'JUAN ' )

    INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'REGULO' )

    INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'RODOLFO' )

	INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'alex' )

   INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'Rob' )

   INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'ileana' )

    INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'samantha' )

    INSERT INTO Cliente ( Id_Cliente, nombre ) values  ( newid(), 'paola' )

	DELETE FROM Cliente WHERE Nombre = 'Alejandro'

	DELETE FROM Cliente WHERE Nombre = 'RODOLFO'

	DELETE FROM Cliente WHERE Nombre = 'PEPE'
	
	DELETE FROM Cliente WHERE Nombre = 'JUAN'

	DELETE FROM Cliente WHERE Nombre = 'REGULO'

	select *from cliente


	
USE [Tacos]
GO

/****** Object:  Table [dbo].[Direccion]    Script Date: 27/3/2018 01:12:06 ******/
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
 
 select *from Direccion


  insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(),'primera', '1111', ' ', 'Monterrey', 'Nuevo Leon', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(),'segunda', '2222', 'A', 'Monterrey', 'Nuevo Leon', 'Mexico') 

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'tercera', '3333', 'A', 'Apodaca', 'Nuevo Leon', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'cuarta', '4444', '', 'Escobedo', 'Nuevo Leon', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'quinta', '5555', ' ', 'Tequila', 'Jalisco', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(),'sexta', '6666', '9', 'Arandas', 'Jalisco','Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'septima', '7777', '' , 'Acapulco', 'Guerrero', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'octava', '8888', '', 'Acapulco', 'Guerrero', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'novena', '999', '' ,'Puebla', 'Puebla', 'Mexico')

    insert into Direccion (idDireccion, calle, numeroExterior, numeroInterior, municipio, estado, pais)
  values (newid(), 'decima', '1010', 'A', 'Garcia', 'Nuevo Leon', 'Mexico')

  delete from Direccion where numeroInterior = '9'

  delete from Direccion where municipio = 'Puebla'

  delete from Direccion where estado = 'Jalisco'

  delete from Direccion where numeroExterior < 2000

  delete from Direccion where municipio = 'Apodaca'

USE [Tacos]
GO

/****** Object:  Table [dbo].[Empleado]    Script Date: 27/3/2018 13:18:32 ******/
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



  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'LUGA99', 'JUAN PEREZ', 'MONTERREY', '1500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'AAAA01', 'AZAEL', 'MONTERREY', '1500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'BBB252', 'BENITO', 'OAXACA', '3500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'DT25', 'DONALD', 'U.S.A.', '1')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'AMLO18', 'ANDRESMAN', 'CHIAPAS', '5500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'RAPAN18', 'RICARDO', 'D.F.', '1500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'PRI18', 'MEADE', 'D.F.', '4500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'IND18', 'MARGARITA', 'MICHOACAN', '1500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'IND218', 'JAIME', 'NUEVO LEON', '1500')

  insert into Empleado (idEmpleado, RFC, Nombre, Direccion, Salario)
  values
  ( newid(), 'LOP18', 'ENRIQUE', 'D.F.', '1500')


	DELETE FROM Empleado WHERE Nombre = 'MEADE'

	DELETE FROM Empleado WHERE Direccion = 'MONTERREY'

	DELETE FROM Empleado WHERE RFC = 'LOP18'

	DELETE FROM Empleado WHERE Nombre = 'AZAEL'

	DELETE FROM EMPLEADO WHERE Direccion = 'U.S.A.'

	SELECT *FROM Empleado

USE [Tacos]
GO

/****** Object:  Table [dbo].[Inventario]    Script Date: 27/3/2018 13:29:16 ******/
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

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '1kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '3kg', '06-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '5kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '3kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '1.5kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '1.8kg', '11-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '6kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '5kg', '05-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '6kg', '11-04-2018')

	INSERT INTO Inventario ( Id_Producto, Cantidad, Caducidad)
	VALUES ( newid(), '8.3kg', '05-04-2018')
    
	delete from Inventario where Caducidad = '04-04-2018'

	delete from Inventario where cantidad = '1kg'

	delete from Inventario where Cantidad = '1.8kg'

	delete from Inventario where Cantidad = '8.3kg'

	delete from Inventario  where Cantidad = '6kg'

	SELECT	*FROM Inventario 

USE [Tacos]
GO

/****** Object:  Table [dbo].[Local]    Script Date: 27/3/2018 13:41:45 ******/
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

 INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'MONTERREY', 'TACOSRAFA')

 
 INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'SANICOLAS', 'TACORAFA#2')

 
 INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'APODACA', 'TACORAFA#3')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'ESCOBEDO', 'TACORAFA#4')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'GARCIA', 'TACORAFA#5')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'SANPEDRO', 'TACORAFA#6')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'ZUAZUA', 'TACORAFA#7')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'SANTACATA', 'TACORAFA#8')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'GUADALUPE', 'TACORAFA#9')

  INSERT INTO Local (Id_local, Direccion, Nombre)
 VALUES ( NEWID(),'JUAREZ', 'TACORFA#10')



DELETE FROM Local WHERE Direccion = 'MONTERREY'

DELETE FROM Local WHERE Direccion = 'JUAREZ'

DELETE FROM LOCAL WHERE Direccion = 'SANTACATA'

DELETE FROM LOCAL WHERE Direccion = 'GUADALUPE'

DELETE FROM LOCAL WHERE Nombre = 'TACORAFA#8'
 
 SELECT *FROM Local

USE [Tacos]
GO

/****** Object:  Table [dbo].[Nombre]    Script Date: 27/3/2018 14:00:23 ******/
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

  
   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   (newid(), 'eduardo', 'alejando', 'luevano', 'alvarez', 'mexicano')
  
   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'enrique', '', 'lopez', 'diaz', 'mexicano')
  
   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   (newid(), 'andres', 'manuel','lopez','obrador', 'mexicano')

   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'jose', 'antonio', 'meade', 'koban', 'mexicano')

   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'ricardo', ' ', 'anaya', 'pan', 'mexicano')

   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'jose', '', 'gunk', 'jose','estadounidense')

   INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid() , 'confort', '', 'chevy', 'monza', 'estadounidense')
   
      INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'javier', '' , 'hernandez', 'chicharito', 'mexicano')
   
      INSERT INTO Nombre (idNombre, primerNombre, segundoNombre, apellidoPaterno, apellidoMaterno, nacionalidad)
   values
   ( newid(), 'david', '' ,'beckame', 'futbol', 'ingles')

   delete from Nombre  where nacionalidad = 'estadounidense'

   delete from nombre where primerNombre = 'Eduardo'

   delete from Nombre where segundoNombre = 'Manueal'

   delete from nombre where apellidoPaterno = 'Luevano'

   delete from Nombre where apellidoMaterno = 'pan'

   delete from nombre where primerNombre = 'jose'

   delete from nombre where segundoNombre = 'jose'
   select *from Nombre
   
USE [Tacos]
GO

/****** Object:  Table [dbo].[Pedido]    Script Date: 27/3/2018 14:19:10 ******/
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


	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '200', '2 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '100', '1 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '300', '3 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '200', '6 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '500', '7 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '250', '3 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '330', '4 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '700', '9 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '900', '12 ordenes')

	
	insert into Pedido ( Id_Orden , Precio , Cantidad )
	values
	(newid(), '200', '1 ordenes')

    delete from Pedido where Precio = '200'

	delete from Pedido where Precio = '250'

	delete from Pedido where Cantidad = '7 ordenes'

	delete from Pedido where Cantidad = '12 ordenes'

	delete from pedido where precio = '100'

	select *from pedido

