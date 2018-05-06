CREATE PROCEDURE recursosHuamnos
      @Nombre  nchar(10),
	  @RFC     nchar(10)

AS
   set nocount on;
   SELECT Nombre, RFC
   FROM Empleado
   WHERE Nombre = @Nombre  AND RFC = @RFC
  
 GO

CREATE PROCEDURE  bodeguita
	@Id_Producto nchar(10),
	@Caducidad  nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Id_Producto, Caducidad
	FROM Inventario
	WHERE Id_Producto = @Id_Producto AND Caducidad = @Caducidad

GO

CREATE PROCEDURE UBICACIONDENEGOCIOS
	@Direccion nchar(10),
	@Nombre nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Direccion, Nombre
	FROM Local
	WHERE Direccion = @Direccion AND Nombre = @Nombre

GO

CREATE PROCEDURE ParaLlevar
	@Precio nchar(10),
	@Cantidad nchar(10)
AS
	SET NOCOUNT ON;
	SELECT Precio, Cantidad
	FROM Pedido
	WHERE Precio = @Precio AND Cantidad = @Cantidad

GO

CREATE PROCEDURE InfoEmpleados
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

CREATE TRIGGER TR_Seguridad
     ON DATABASE FOR DROP_TABLE, ALTER_TABLE
 AS
       BEGIN
         RAISERROR ('No está permitido borrar ni modificar tablas !' , 16, 1)
         ROLLBACK TRANSACTION

END

