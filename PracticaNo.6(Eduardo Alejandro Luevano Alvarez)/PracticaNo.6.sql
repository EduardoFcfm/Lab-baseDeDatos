USE [Tacos]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 21/4/2018 23:24:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [uniqueidentifier] NULL,
	[nombre] [nchar](10) NULL
) ON [PRIMARY]
GO


select *from Cliente where nombre = 'alex'
select *from Direccion where calle = 'segunda'
select *from Empleado where  nombre = 'BENITO'
select *from Inventario  where Cantidad = '5kg'
select *from Local where Direccion = 'ESCOBEDO'

/* */

select distinct Direccion
from Empleado

select distinct municipio
 from Direccion

select distinct Direccion
 from local

select distinct Nombre
 from local

select distinct cantidad
 from Inventario

 /* */
select count ( Direccion )
from local where Direccion = 'ESCOBEDO'


select count ( Direccion )
from local where Direccion = 'SANPEDRO'

select count ( RFC )
 from Empleado where RFC = 'AMLO18'

 
select count ( RFC )
 from Empleado where RFC = 'BBB252'

select count ( municipio)
 from Direccion where municipio = 'Acapulco'

 /* */ 

select count (id_Local)
 from Local 
  having  count ( id_Local) > 0

select count ( idEmpleado )
from Empleado
having count (idEmpleado ) >2

  
select count (idDireccion)
 from Direccion 
  having  count ( idDireccion) > 0

select count ( Id_Producto )
from Inventario
having count (Id_Producto) > 1

select count ( id_Cliente )
from Cliente
having count ( Id_Cliente) > 1

/* */

select top 2 (cantidad)
from Inventario

select top 3 (idDireccion)
from Direccion

select top 1 (id_Producto)
from Inventario

select top 5 (id_Cliente)
from Cliente

select top 4 ( municipio )
from Direccion
