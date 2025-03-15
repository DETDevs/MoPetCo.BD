-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para listar los servicios
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Servicio_Listar]
    @IdServicio INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdServicios, Titulo, SubTitulo, Incluye, Descripcion
        FROM Servicios
        WHERE (@IdServicio IS NULL OR IdServicios = @IdServicio);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END