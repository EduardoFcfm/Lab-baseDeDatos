USE [Tacos]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 04/05/2018 05:12:23 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [uniqueidentifier] NULL,
	[nombre] [nchar](10) NULL
) ON [PRIMARY]
GO


CREATE VIEW INFORMACIONDEEMPLEADOS
AS
SELECT Nombre, RFC,Salario  FROM Empleado;
GO

SELECT * FROM INFORMACIONDEEMPLEADOS;

CREATE VIEW BODEGA
AS
SELECT Id_Producto, Caducidad FROM Inventario;
GO

SELECT * FROM BODEGA


CREATE VIEW UBICACION
AS
SELECT Direccion, Nombre FROM Local ;
GO


CREATE VIEW ENTREGA
AS 
SELECT id_orden, Precio FROM Pedido;
GO


SELECT idEmpleado 
from Empleado
LEFT JOIN Local
ON Empleado.idEmpleado = Local.Id_local;


SELECT idEmpleado
from Empleado
RIGHT JOIN Local
ON  Empleado.idEmpleado = Local.Id_local;

SELECT Empleado.Nombre ,  Local.Nombre
FROM Empleado FULL OUTER JOIN Local
ON Empleado.idEmpleado = Local.Id_local
ORDER BY Empleado.Nombre;
