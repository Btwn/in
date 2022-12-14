
GO
/****** Object:  Table [dbo].[TablaStD]    Script Date: 23/09/2022 02:18:04 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TablaStD](
	[TablaSt] [varchar](50) NOT NULL,
	[Nombre] [varchar](250) NOT NULL,
	[Valor] [varchar](250) NULL,
 CONSTRAINT [priTablaStD] PRIMARY KEY CLUSTERED 
(
	[TablaSt] ASC,
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'LIMITE CREDITO COBRO', N'LIMITE CREDITO COBRO', N'1')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'CFG PRELIMINAR COBRO', N'LIQUIDA COMPLETO', N'1')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'CFG PRELIMINAR COBRO', N'VALIDA SESIÓN', N'1')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'CFG PRELIMINAR COBRO', N'VALIDA TARJETA', N'1')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'ACD00001SHMRECORDATORIONIP', N'PCOBRO', N'SI')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'ACD00001SHMRECORDATORIONIP', N'PVENTA', N'SI')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'ACD00001SHMRECORDATORIONIP', N'SHMBF', N'SI')
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Credilana', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Factura', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Factura VIU', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Nota Cargo', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Nota Cargo VIU', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Prestamo Personal', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'MOVIMIENTOS COBRO X POLITICA', N'Refinanciamiento', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'PRELIMINAR PSW DIMAS', N'VENTP_GERA', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'PRELIMINAR PSW DIMAS', N'VENTP_LIMA', NULL)
INSERT [dbo].[TablaStD] ([TablaSt], [Nombre], [Valor]) VALUES (N'PRELIMINAR PSW DIMAS', N'VENTP_USRB', NULL)



