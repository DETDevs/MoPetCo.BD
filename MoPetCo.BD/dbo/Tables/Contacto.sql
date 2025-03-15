CREATE TABLE [dbo].[Contacto]
(
	IdContacto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Correo VARCHAR(255) NOT NULL,
    Direccion VARCHAR(255) NULL,
    Mensaje TEXT NOT NULL,
    FechaEnvio DATETIME DEFAULT GETDATE(),
    Estado VARCHAR(50) NOT NULL DEFAULT 'Pendiente' -- Indica si el mensaje ha sido respondido
)
