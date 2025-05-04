CREATE TABLE [dbo].[SubServicio](
	[IdSubServicio] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NOT NULL,
	[SubTitulo] [varchar](255) NULL,
	[Incluye] [text] NOT NULL,
	[Descripcion] [text] NOT NULL,
	[icon] [varchar](255) NULL,
	[UrImagen] [varchar](255) NULL,
	[IdServicio] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
