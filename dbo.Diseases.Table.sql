USE [Hospital]
GO
/****** Object:  Table [dbo].[Diseases]    Script Date: 20.03.2020 15:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diseases](
	[Код_болезни] [bigint] IDENTITY(1,1) NOT NULL,
	[Наименование] [varchar](50) NOT NULL,
	[Симптомы] [varchar](50) NOT NULL,
	[Продолжительность] [varchar](50) NOT NULL,
	[Последствия] [varchar](50) NULL,
	[Код_лекарства_1] [int] NOT NULL,
	[Код_лекарства_2] [int] NOT NULL,
	[Код_лекарства_3] [int] NOT NULL,
 CONSTRAINT [PK_Diseases] PRIMARY KEY CLUSTERED 
(
	[Код_болезни] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
