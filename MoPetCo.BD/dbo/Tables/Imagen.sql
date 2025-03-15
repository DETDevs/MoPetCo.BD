CREATE TABLE [dbo].[Imagen]
(
	IdImagen INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion TEXT NOT NULL,
    UrlImagen VARCHAR(500) NOT NULL
)
