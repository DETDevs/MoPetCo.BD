CREATE TABLE [dbo].[Promotions](
	[PromotionId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](100) NULL,
	[ShadowColorClass] [nvarchar](50) NULL,
	[BgColorClass] [nvarchar](50) NULL,
	[TextColor] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](255) NULL,
	[ShowOnHomePage] [bit] NULL,
	[ShowOnPromotionsPage] [bit] NULL,
	[CreatedAt] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Promotions] ADD PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((0)) FOR [ShowOnHomePage]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((1)) FOR [ShowOnPromotionsPage]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
