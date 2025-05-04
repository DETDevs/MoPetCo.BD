-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Last modification:   03/05/2025
-- Description:   SP para guardar un video
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Video_Guardar]
    @Descripcion TEXT,
    @UrlVideo    VARCHAR(500),
    @Tipo VARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Video (Descripcion, UrlVideo, Tipo)
        VALUES (@Descripcion, @UrlVideo, @Tipo);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END