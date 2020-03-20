USE [Hospital]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 20.03.2020 15:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workers](
	[Код сотрудника] [int] NOT NULL,
	[ФИО] [varchar](50) NOT NULL,
	[Возраст] [varchar](3) NOT NULL,
	[Пол] [varchar](50) NOT NULL,
	[Адрес] [varchar](50) NULL,
	[Телефон] [varchar](11) NULL,
	[Паспортные данные] [varchar](25) NULL,
	[Код должности] [int] NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[Код сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
