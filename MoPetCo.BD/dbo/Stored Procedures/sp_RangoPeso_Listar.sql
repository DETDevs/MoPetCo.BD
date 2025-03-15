-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para listar los rangos de peso
-- ========================================================
CREATE PROCEDURE [dbo].[sp_RangoPeso_Listar]
    @IdRango INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdRango, Nombre, PesoMin, PesoMax
        FROM RangoPeso
        WHERE (@IdRango IS NULL OR IdRango = @IdRango);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END