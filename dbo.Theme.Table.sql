USE [Hospital]
GO
/****** Object:  Table [dbo].[Theme]    Script Date: 20.03.2020 15:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Theme](
	[Код_должности] [bigint] IDENTITY(1,1) NOT NULL,
	[Наименование_должности] [varchar](50) NOT NULL,
	[Оклад] [money] NOT NULL,
	[Обязанности] [varchar](50) NOT NULL,
	[Требования] [varchar](25) NULL,
 CONSTRAINT [PK_Theme] PRIMARY KEY CLUSTERED 
(
	[Код_должности] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
