CREATE TABLE [dbo].[Contacto](
	[IdContacto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Correo] [varchar](255) NOT NULL,
	[Direccion] [varchar](255) NULL,
	[Mensaje] [text] NOT NULL,
	[FechaEnvio] [datetime] NULL,
	[Estado] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacto] ADD PRIMARY KEY CLUSTERED 
(
	[IdContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contacto] ADD  DEFAULT (getdate()) FOR [FechaEnvio]
GO