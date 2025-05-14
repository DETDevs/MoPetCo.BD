-- ======================================================================
-- Author:        Douglas Hernández
-- Create date:   03/05/2025
-- Description:   SP para obtener los subServicios y sus detalles
-- ======================================================================
CREATE PROCEDURE [dbo].[sp_SubServicioDetalles_Listar]
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRY
         
        SELECT 
            S.IdSubServicio, S.Titulo, S.SubTitulo, S.Incluye, S.Descripcion, S.icon, S.Icon AS Icon, S.UrImagen AS UrlImagen, S.IdServicio,
            P.IdPrecio, P.Monto, RP.IdRango, RP.Nombre, RP.PesoMin, RP.PesoMax
        FROM SubServicio S
        LEFT JOIN Precio P ON P.idsubservicio = S.idsubservicio
        LEFT JOIN RangoPeso RP ON RP.IdRango = P.IdRangoPrecio;

    END TRY
    BEGIN CATCH
        DECLARE @Numer INT, @Error VARCHAR(500);
        SET @Numer = ERROR_NUMBER();
        SET @Error = ERROR_MESSAGE();
        THROW 51051, @Error, 1;
    END CATCH
END
GO
