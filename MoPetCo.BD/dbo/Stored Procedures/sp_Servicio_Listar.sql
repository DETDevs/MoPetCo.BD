-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Last modification:   03/05/2025
-- Description:   SP para listar los servicios
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Servicio_Listar]
    @IdServicio INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdServicio, Titulo, SubTitulo, Incluye, Descripcion, Icon, UrImagen
        FROM Servicio
        WHERE (@IdServicio IS NULL OR IdServicio = @IdServicio);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END