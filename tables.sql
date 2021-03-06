USE [Hospital]
GO
/****** Object:  Table [dbo].[Diseases]    Script Date: 20.03.2020 13:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Drugs]    Script Date: 20.03.2020 13:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Patients]    Script Date: 20.03.2020 13:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Theme]    Script Date: 20.03.2020 13:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[Workers]    Script Date: 20.03.2020 13:05:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
SET IDENTITY_INSERT [dbo].[Drugs] ON 

INSERT [dbo].[Drugs] ([Код_лекарства], [Наименование], [Показания], [Противопоказания], [Упаковка], [Стоимость]) VALUES (1, N'Узбагоин', N'Стресс, повышенное давление', N'Сердечные заболевания, беременность', N'Таблетки', 5000.0000)
INSERT [dbo].[Drugs] ([Код_лекарства], [Наименование], [Показания], [Противопоказания], [Упаковка], [Стоимость]) VALUES (2, N'Ношпа', N'Диарея, тошнота', N'Беременные', N'Таблетки', 350.0000)
INSERT [dbo].[Drugs] ([Код_лекарства], [Наименование], [Показания], [Противопоказания], [Упаковка], [Стоимость]) VALUES (3, N'Терафлю', N'Температура, ОРВИ', N'Алергия, сердечные заболевания, дистрофия', N'Порошковый', 550.0000)
INSERT [dbo].[Drugs] ([Код_лекарства], [Наименование], [Показания], [Противопоказания], [Упаковка], [Стоимость]) VALUES (4, N'Нурофен', N'Жар', N'Внтуречерепное давление', N'Таблетки', 450.0000)
SET IDENTITY_INSERT [dbo].[Drugs] OFF
SET IDENTITY_INSERT [dbo].[Theme] ON 

INSERT [dbo].[Theme] ([Код_должности], [Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (3, N'Фармацевт', 45000.0000, N'Продажа лекарственных препаратов', N'Высшее образование')
INSERT [dbo].[Theme] ([Код_должности], [Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (4, N'Директор', 85000.0000, N'Управление аптекой', N'Высшее образование')
INSERT [dbo].[Theme] ([Код_должности], [Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (5, N'Уборщик', 15000.0000, N'Уборка помещений', N'Среднее образование')
INSERT [dbo].[Theme] ([Код_должности], [Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (6, N'Охранник', 25000.0000, N'Охрана территории', N'Военный билет')
INSERT [dbo].[Theme] ([Код_должности], [Наименование_должности], [Оклад], [Обязанности], [Требования]) VALUES (7, N'Менеджер HR', 45000.0000, N'Набор персонала', N'Высшее образование')
SET IDENTITY_INSERT [dbo].[Theme] OFF
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (1, N'Голубина Анна Семеновна', N'51', N'Женский', N'г. Мытищи ул. Петропавловския дом 1', N'89264508395', N'2548165894', 3)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (2, N'Голубценков Альберт Генадьевич', N'43', N'Мужской', N'г. Москва ул. Лужники д 2\3', N'88015867534', N'1485222566', 4)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (3, N'Соколова Виктория Дмитривна', N'25', N'Женский', N'Московская об., Леруанский проспект ', N'89775459622', N'4874847588', 3)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (4, N'Алдаков Магамед Алачеев', N'33', N'Мужчина', N'Айзербайджан', N'89445685248', N'7776695850', 5)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (5, N'Кузницов Владимир Викторович', N'54', N'Мужской', N'Деревня Вербилки', N'89635668555', N'5474858858', 6)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (6, N'Власова Галина Петровна', N'47', N'Женский', N'Московская об., г Мытищи, д 3', N'89659854562', N'4569855521', 5)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (7, N'Ваcников Дмитрий Михайлович', N'23', N'Мужской', N'г Москва, Сталинский проспект, д 1', N'89776564616', N'6996559983', 4)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (8, N'Кирюхин Михаил Юрьевич', N'18', N'Мужской', N'г. Москва, Апартаменты 4.', N'89772621679', N'3444586214', 7)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (9, N'Савина Юлия Борисовна', N'21', N'Женский', N'г. Москва, Апартаменты 4', N'87758458585', N'6555862215', 3)
INSERT [dbo].[Workers] ([Код сотрудника], [ФИО], [Возраст], [Пол], [Адрес], [Телефон], [Паспортные данные], [Код должности]) VALUES (10, N'Юдин Борис Семенович', N'28', N'Мужской', N'г. Москва, Юбилейный пр. д 7', N'89654255525', N'8545555858', 3)
