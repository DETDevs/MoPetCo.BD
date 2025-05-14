-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar el precio de un servicio
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Precio_Guardar]
    @Monto         DECIMAL(10,2),
    @IdRangoPrecio INT,
    @IdServicio    INT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Precio (Monto, IdRangoPrecio, IdServicio)
        VALUES (@Monto, @IdRangoPrecio, @IdServicio);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END