-- ==========================================================================
-- Author:        Douglas Hernández
-- Create date:   03/05/2025
-- Description:   SP para obtener las promociones de la pagina de promociones
-- ==========================================================================
CREATE PROCEDURE [dbo].[GetPromotionsForPromotionsPage]
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        SELECT p.PromotionId, p.Title, p.[Description], p.ImageUrl FROM Promotions p
        WHERE p.ShowOnPromotionsPage = 1
        ORDER BY CreatedAt DESC;
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END