CREATE TABLE [dbo].[RangoPeso]
(
	IdRango INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL, -- Ej: Small, ExtraSmall
    PesoMin DECIMAL(5,2) NOT NULL,
    PesoMax DECIMAL(5,2) NOT NULL
)
