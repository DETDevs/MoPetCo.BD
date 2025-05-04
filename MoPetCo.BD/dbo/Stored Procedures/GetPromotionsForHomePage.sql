-- ======================================================================
-- Author:        Douglas Hernández
-- Create date:   03/05/2025
-- Description:   SP para obtener las promociones de la pagina de inicio
-- ======================================================================
CREATE PROCEDURE [dbo].GetPromotionsForHomePage
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT * FROM Promotions
        WHERE ShowOnHomePage = 1
        ORDER BY CreatedAt DESC;
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END