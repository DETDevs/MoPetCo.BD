-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para listar los videos
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Video_Listar]
    @IdVideo INT = NULL
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT IdVideo, Descripcion, UrlVideo
        FROM Video
        WHERE (@IdVideo IS NULL OR IdVideo = @IdVideo);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END