-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar listar las imagenes
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Imagen_Listar]
    @IdImagen INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdImagen, Descripcion, UrlImagen
        FROM Imagen
        WHERE (@IdImagen IS NULL OR IdImagen = @IdImagen);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END