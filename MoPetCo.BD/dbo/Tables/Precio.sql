CREATE TABLE [dbo].[Precio]
(
	IdPrecio INT IDENTITY(1,1) PRIMARY KEY,
    Monto DECIMAL(10,2) NOT NULL,
    IdRangoPrecio INT NOT NULL,
    IdServicio INT NOT NULL,
    CONSTRAINT FK_Precio_Rango FOREIGN KEY (IdRangoPrecio) REFERENCES RangoPeso(IdRango) ON DELETE CASCADE,
    CONSTRAINT FK_Precio_Servicio FOREIGN KEY (IdServicio) REFERENCES Servicio(IdServicio) ON DELETE CASCADE
)
