-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para listar los precios de los servicios
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Precio_Listar]
    @IdPrecio      INT = NULL,
    @IdServicio    INT = NULL,
    @IdRangoPrecio INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdPrecio, Monto, IdRangoPrecio, IdServicio
        FROM Precio
        WHERE (@IdPrecio IS NULL OR IdPrecio = @IdPrecio)
        AND (@IdServicio IS NULL OR IdServicio = @IdServicio)
        AND (@IdRangoPrecio IS NULL OR IdRangoPrecio = @IdRangoPrecio);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END