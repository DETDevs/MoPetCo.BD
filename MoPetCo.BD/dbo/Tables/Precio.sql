CREATE TABLE [dbo].[Precio](
	[IdPrecio] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [varchar](50) NOT NULL,
	[IdRangoPrecio] [int] NOT NULL,
	[IdServicio] [int] NULL,
	[IdSubServicio] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Precio] ADD PRIMARY KEY CLUSTERED 
(
	[IdPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Rango] FOREIGN KEY([IdRangoPrecio])
REFERENCES [dbo].[RangoPeso] ([IdRango])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Rango]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Servicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicio] ([IdServicio])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Servicio]
GO
