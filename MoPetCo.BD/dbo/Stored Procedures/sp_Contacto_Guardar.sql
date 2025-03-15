-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar el registro del contacto
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Contacto_Guardar]
    @Nombre       VARCHAR(255),
    @Correo       VARCHAR(255),
    @Direccion    VARCHAR(255) = NULL,
    @Mensaje      TEXT,
    @FechaEnvio   DATETIME = NULL,
    @Estado       VARCHAR(50) = 'Pendiente'
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        IF @FechaEnvio IS NULL
            SET @FechaEnvio = GETDATE();

        INSERT INTO Contacto (Nombre, Correo, Direccion, Mensaje, FechaEnvio, Estado)
        VALUES (@Nombre, @Correo, @Direccion, @Mensaje, @FechaEnvio, @Estado);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END