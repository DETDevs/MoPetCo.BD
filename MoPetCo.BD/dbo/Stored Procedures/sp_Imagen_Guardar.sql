-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar una imagen
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Imagen_Guardar]
    @Descripcion TEXT,
    @UrlImagen   VARCHAR(500)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Imagen (Descripcion, UrlImagen)
        VALUES (@Descripcion, @UrlImagen);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END