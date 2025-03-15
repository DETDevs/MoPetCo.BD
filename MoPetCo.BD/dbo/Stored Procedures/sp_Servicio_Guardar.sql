﻿-- ========================================================
-- Author:        Douglas Hernández
-- Create date:   14/03/2025
-- Description:   SP para guardar un servicio
-- ========================================================
CREATE PROCEDURE [dbo].[sp_Servicio_Guardar]
    @Titulo      VARCHAR(255),
    @SubTitulo   VARCHAR(255) = NULL,
    @Incluye     TEXT,
    @Descripcion TEXT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Servicios (Titulo, SubTitulo, Incluye, Descripcion)
        VALUES (@Titulo, @SubTitulo, @Incluye, @Descripcion);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END