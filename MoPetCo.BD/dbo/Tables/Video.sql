CREATE TABLE [dbo].[Video]
(
	IdVideo INT IDENTITY(1,1) PRIMARY KEY,
    Descripcion TEXT NOT NULL,
    UrlVideo VARCHAR(500) NOT NULL
)
