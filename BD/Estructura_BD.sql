USE [contribuyenteComprobante]
GO
/****** Object:  Schema [Comprobantes]    Script Date: 11/7/2022 6:59:37 PM ******/
CREATE SCHEMA [Comprobantes]
GO
/****** Object:  Schema [Contribuyentes]    Script Date: 11/7/2022 6:59:37 PM ******/
CREATE SCHEMA [Contribuyentes]
GO
/****** Object:  Schema [logs]    Script Date: 11/7/2022 6:59:37 PM ******/
CREATE SCHEMA [logs]
GO
/****** Object:  Table [Comprobantes].[comprobantesFiscales]    Script Date: 11/7/2022 6:59:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Comprobantes].[comprobantesFiscales](
	[pk_ComprobanteFiscal] [int] IDENTITY(1,1) NOT NULL,
	[fk_rncCedula] [char](13) NULL,
	[eNCF] [varchar](13) NULL,
	[monto] [numeric](10, 2) NULL,
	[itbis18] [numeric](10, 2) NULL,
	[act] [bit] NULL,
	[creat_at] [datetime] NULL,
	[update_at] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_ComprobanteFiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Contribuyentes].[contribuyente]    Script Date: 11/7/2022 6:59:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Contribuyentes].[contribuyente](
	[pk_Contribuyente] [int] IDENTITY(1,1) NOT NULL,
	[rncCedula] [char](13) NULL,
	[nombre] [varchar](25) NULL,
	[tipo] [varchar](25) NULL,
	[estatus] [varchar](8) NULL,
	[creat_at] [datetime] NULL,
	[update_at] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[pk_Contribuyente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [logs].[logsErrorContribuyentes]    Script Date: 11/7/2022 6:59:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [logs].[logsErrorContribuyentes](
	[pkLogError] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[creat_at] [datetime] NULL,
	[update_at] [varchar](20) NULL,
	[act] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[pkLogError] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Comprobantes].[comprobantesFiscales] ON 
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (1, N'98754321012  ', N'E310000000001', CAST(200.00 AS Numeric(10, 2)), CAST(36.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T12:52:56.447' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (2, N'98754321013  ', N'E310000006031', CAST(3240.00 AS Numeric(10, 2)), CAST(374.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T16:31:57.070' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (3, N'98754321013  ', N'E310000000031', CAST(320.00 AS Numeric(10, 2)), CAST(374.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T16:32:45.697' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (4, N'98754321012  ', N'E310000000831', CAST(320.00 AS Numeric(10, 2)), CAST(384.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T16:33:25.450' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (5, N'98754321012  ', N'E310050000831', CAST(3270.00 AS Numeric(10, 2)), CAST(3884.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T16:33:40.393' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Comprobantes].[comprobantesFiscales] ([pk_ComprobanteFiscal], [fk_rncCedula], [eNCF], [monto], [itbis18], [act], [creat_at], [update_at]) VALUES (6, N'98754321012  ', N'E310000000002', CAST(1000.00 AS Numeric(10, 2)), CAST(180.00 AS Numeric(10, 2)), 1, CAST(N'2022-11-07T16:53:43.047' AS DateTime), N'Nov  7 2022 12:52PM')
GO
SET IDENTITY_INSERT [Comprobantes].[comprobantesFiscales] OFF
GO
SET IDENTITY_INSERT [Contribuyentes].[contribuyente] ON 
GO
INSERT [Contribuyentes].[contribuyente] ([pk_Contribuyente], [rncCedula], [nombre], [tipo], [estatus], [creat_at], [update_at]) VALUES (1, N'98754321012  ', N'JUAN PEREZ', N'PERSONA FISICA', N'activo', CAST(N'2022-11-07T12:52:10.697' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Contribuyentes].[contribuyente] ([pk_Contribuyente], [rncCedula], [nombre], [tipo], [estatus], [creat_at], [update_at]) VALUES (2, N'98754321013  ', N'JUANA ALICIA', N'PERSONA FISICA', N'activo', CAST(N'2022-11-07T12:52:10.697' AS DateTime), N'Nov  7 2022 12:52PM')
GO
INSERT [Contribuyentes].[contribuyente] ([pk_Contribuyente], [rncCedula], [nombre], [tipo], [estatus], [creat_at], [update_at]) VALUES (3, N'123456789    ', N'"FARMACIA TU SALUD', N'PERSONA JURIDICA', N'inactivo', CAST(N'2022-11-07T16:52:34.847' AS DateTime), N'Nov  7 2022 12:52PM')
GO
SET IDENTITY_INSERT [Contribuyentes].[contribuyente] OFF
GO
SET IDENTITY_INSERT [logs].[logsErrorContribuyentes] ON 
GO
INSERT [logs].[logsErrorContribuyentes] ([pkLogError], [Descripcion], [creat_at], [update_at], [act]) VALUES (1, N'3', CAST(N'2022-11-07T18:42:54.947' AS DateTime), N'4', 1)
GO
SET IDENTITY_INSERT [logs].[logsErrorContribuyentes] OFF
GO
ALTER TABLE [Comprobantes].[comprobantesFiscales] ADD  CONSTRAINT [DF_comprobantesFiscales_act]  DEFAULT ((1)) FOR [act]
GO
ALTER TABLE [Comprobantes].[comprobantesFiscales] ADD  CONSTRAINT [DF_comprobantesFiscales_creat_at]  DEFAULT (getdate()) FOR [creat_at]
GO
ALTER TABLE [Contribuyentes].[contribuyente] ADD  CONSTRAINT [DF_contribuyente_estatus]  DEFAULT ('activo') FOR [estatus]
GO
ALTER TABLE [Contribuyentes].[contribuyente] ADD  CONSTRAINT [DF_contribuyente_creat_at]  DEFAULT (getdate()) FOR [creat_at]
GO
ALTER TABLE [logs].[logsErrorContribuyentes] ADD  CONSTRAINT [DF_logsErrorContribuyentes_creat_at]  DEFAULT (getdate()) FOR [creat_at]
GO
ALTER TABLE [logs].[logsErrorContribuyentes] ADD  CONSTRAINT [DF_logsErrorContribuyentes_act]  DEFAULT ((1)) FOR [act]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tabla contiene la informacion de los comprobantes fiscales.' , @level0type=N'SCHEMA',@level0name=N'Comprobantes', @level1type=N'TABLE',@level1name=N'comprobantesFiscales'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contiene la informacion de los contribuyente' , @level0type=N'SCHEMA',@level0name=N'Contribuyentes', @level1type=N'TABLE',@level1name=N'contribuyente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registra los logs para el modulo listado de contribuyentes.' , @level0type=N'SCHEMA',@level0name=N'logs', @level1type=N'TABLE',@level1name=N'logsErrorContribuyentes'
GO
