CREATE TABLE [dbo].[Servicio]
(
	IdServicio INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    SubTitulo VARCHAR(255) NULL,
    Incluye TEXT NOT NULL,
    Descripcion TEXT NOT NULL
)
