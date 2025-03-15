-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar un video
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Video_Guardar]
    @Descripcion TEXT,
    @UrlVideo    VARCHAR(500)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Video (Descripcion, UrlVideo)
        VALUES (@Descripcion, @UrlVideo);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END