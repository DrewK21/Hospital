USE [Hospital]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 20.03.2020 15:25:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Patients](
	[ФИО_пациента] [varchar](50) NOT NULL,
	[Возраст] [varchar](3) NOT NULL,
	[Продолжительность] [varchar](50) NOT NULL,
	[Пол] [varchar](15) NOT NULL,
	[Адрес] [varchar](50) NOT NULL,
	[Телефон] [varchar](11) NOT NULL,
	[Дата_обращения] [date] NOT NULL,
	[Код_болезни] [int] NOT NULL,
	[Код_сотрудника] [int] NOT NULL,
	[Результат_лечения] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
