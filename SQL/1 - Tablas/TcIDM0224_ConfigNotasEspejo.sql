
GO
/****** Object:  Table [dbo].[TcIDM0224_ConfigNotasEspejo]    Script Date: 23/09/2022 06:10:34 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TcIDM0224_ConfigNotasEspejo](
	[MovCargo] [varchar](20) NOT NULL,
	[ConceptoCargo] [varchar](50) NOT NULL,
	[MovCredito] [varchar](20) NOT NULL,
	[ConceptoCredito] [varchar](50) NOT NULL,
	[ConceptoCargoNuevo] [varchar](50) NOT NULL,
	[FechaDesde] [datetime] NOT NULL,
 CONSTRAINT [PK_ConfiguracionNotasCreditoEspejo] PRIMARY KEY CLUSTERED 
(
	[MovCargo] ASC,
	[ConceptoCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo', N'CARGO ADMINISTRATIVO', N'Nota Credito', N'CANC CARGO ADMVO', N'COBRO CARGO ADMVO', CAST(N'2017-12-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo', N'GTOS ADJUDICACION', N'Nota Credito', N'CANC GTOS ADJUDICACION', N'COBRO GTOS ADJUD', CAST(N'2014-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo', N'GTOS COBRANZA', N'Nota Credito', N'CANCELA GTOS COBRANZA', N'COBRO GTOS COBRANZA', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo', N'GTOS DE LOCALIZACION', N'Nota Credito', N'CANC GTOS LOCALIZACION', N'COBRO GTOS LOCAL', CAST(N'2014-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo', N'INTERVENCION', N'Nota Credito', N'CANC INTERVENCION', N'COBRO INTERVENCION', CAST(N'2020-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo Mayoreo', N'GTOS ADJUDICACION', N'Nota Credito Mayoreo', N'CANC GTOS ADJUDICACION', N'COBRO GTOS ADJUD', CAST(N'2017-12-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo VIU', N'GTOS ADJUDICACION', N'Nota Credito VIU', N'CANC GTOS ADJUDICACION', N'COBRO GTOS ADJUD', CAST(N'2014-10-01T00:00:00.000' AS DateTime))
INSERT [dbo].[TcIDM0224_ConfigNotasEspejo] ([MovCargo], [ConceptoCargo], [MovCredito], [ConceptoCredito], [ConceptoCargoNuevo], [FechaDesde]) VALUES (N'Nota Cargo VIU', N'GTOS DE LOCALIZACION', N'Nota Credito VIU', N'CANC GTOS LOCALIZACION', N'COBRO GTOS LOCAL', CAST(N'2014-10-01T00:00:00.000' AS DateTime))
GO
