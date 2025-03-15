-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar el rango de peso
-- ========================================================
CREATE PROCEDURE [dbo].[sp_RangoPeso_Guardar]
    @Nombre  VARCHAR(50),
    @PesoMin DECIMAL(5,2),
    @PesoMax DECIMAL(5,2)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO RangoPeso (Nombre, PesoMin, PesoMax)
        VALUES (@Nombre, @PesoMin, @PesoMax);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END