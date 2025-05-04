-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Last modification:   03/05/2025
-- Description:   SP para guardar un servicio
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Servicio_Guardar]
    @Titulo      VARCHAR(255),
    @SubTitulo   VARCHAR(255) = NULL,
    @Incluye     TEXT,
    @Descripcion TEXT,
    @UrlImagen VARCHAR(255),
    @Icon VARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Servicio (Titulo, SubTitulo, Incluye, Descripcion, UrImagen, icon)
        VALUES (@Titulo, @SubTitulo, @Incluye, @Descripcion, @UrlImagen, @UrlImagen);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END
GO
