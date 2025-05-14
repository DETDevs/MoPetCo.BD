-- ======================================================
-- Author:        Douglas Hernández
-- Create date:   03/05/2025
-- Description:   SP para obtener guardar las promociones
-- ======================================================
CREATE PROCEDURE [dbo].[InsertPromotion]
    @Title NVARCHAR(100),
    @Description NVARCHAR(MAX),
    @Icon NVARCHAR(100),
    @ShadowColorClass NVARCHAR(50),
    @BgColorClass NVARCHAR(50),
    @TextColor NVARCHAR(50),
    @ImageUrl NVARCHAR(255),
    @ShowOnHomePage BIT,
    @ShowOnPromotionsPage BIT
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
        INSERT INTO Promotions (
            Title, 
            Description, 
            Icon, 
            ShadowColorClass,
            BgColorClass,
            TextColor,
            ImageUrl,
            ShowOnHomePage,
            ShowOnPromotionsPage)
        VALUES (
            @Title,
            @Description, 
            @Icon, 
            @ShadowColorClass,
            @BgColorClass, 
            @TextColor, 
            @ImageUrl,
            @ShowOnHomePage, 
            @ShowOnPromotionsPage);
    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END