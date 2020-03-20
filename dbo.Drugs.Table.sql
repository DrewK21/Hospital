USE [Hospital]
GO
/****** Object:  Table [dbo].[Drugs]    Script Date: 20.03.2020 15:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Drugs](
	[Код_лекарства] [bigint] IDENTITY(1,1) NOT NULL,
	[Наименование] [varchar](50) NOT NULL,
	[Показания] [varchar](50) NOT NULL,
	[Противопоказания] [varchar](50) NOT NULL,
	[Упаковка] [varchar](50) NOT NULL,
	[Стоимость] [money] NOT NULL,
 CONSTRAINT [PK_Drugs] PRIMARY KEY CLUSTERED 
(
	[Код_лекарства] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
