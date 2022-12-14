GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/09/2022 02:29:28 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[Sucursal] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Prefijo] [char](5) NULL,
	[Relacion] [varchar](20) NOT NULL,
	[Direccion] [varchar](100) NULL,
	[DireccionNumero] [varchar](20) NULL,
	[DireccionNumeroInt] [varchar](20) NULL,
	[Delegacion] [varchar](100) NULL,
	[GLN] [varchar](50) NULL,
	[Colonia] [varchar](100) NULL,
	[Poblacion] [varchar](30) NULL,
	[Estado] [varchar](30) NULL,
	[Pais] [varchar](100) NULL,
	[CodigoPostal] [varchar](15) NULL,
	[Telefonos] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[Estatus] [char](15) NOT NULL,
	[UltimoCambio] [datetime] NULL,
	[RFC] [varchar](20) NULL,
	[RegistroPatronal] [varchar](20) NULL,
	[Encargado] [varchar](100) NULL,
	[Alta] [datetime] NULL,
	[Region] [varchar](50) NULL,
	[CentralRegional] [bit] NULL,
	[EnLinea] [bit] NULL,
	[SucursalPrincipal] [int] NULL,
	[ListaPreciosEsp] [varchar](20) NULL,
	[Cajeros] [bit] NULL,
	[CentroCostos] [varchar](20) NULL,
	[OperacionContinua] [bit] NULL,
	[ZonaEconomica] [varchar](30) NULL,
	[Grupo] [varchar](50) NULL,
	[AlmacenPrincipal] [char](10) NULL,
	[Servidor] [varchar](50) NULL,
	[BaseDatos] [varchar](50) NULL,
	[Usuario] [varchar](10) NULL,
	[ZonaImpuesto] [varchar](30) NULL,
	[CajaCentral] [varchar](10) NULL,
	[wMovVentas] [varchar](20) NULL,
	[wAlmacen] [varchar](10) NULL,
	[wAgente] [varchar](10) NULL,
	[wUsuario] [varchar](10) NULL,
	[wUEN] [int] NULL,
	[wConcepto] [varchar](50) NULL,
	[CRTipoCredito] [varchar](20) NULL,
	[Cliente] [varchar](10) NULL,
	[Categoria] [varchar](50) NULL,
	[Acreedor] [varchar](10) NULL,
	[LocalidadCNBV] [varchar](10) NULL,
	[Tipo] [varchar](50) NULL,
	[FechaApertura] [datetime] NULL,
	[VencimientoContrato] [datetime] NULL,
	[Metros] [float] NULL,
	[CostoBase] [varchar](50) NULL,
	[UltimaSincronizacion] [datetime] NULL,
	[IP] [varchar](20) NULL,
	[IPDinamica] [bit] NULL,
	[IPPuerto] [int] NULL,
	[ComunicacionEncriptada] [bit] NULL,
	[PropreEstatus] [varchar](15) NULL,
	[ProprePorcentajeNormal] [float] NULL,
	[PropreMarca] [varchar](30) NULL,
	[CFDFlex] [bit] NULL,
	[noCertificado] [varchar](20) NULL,
	[Llave] [varchar](255) NULL,
	[ContrasenaSello] [varchar](100) NULL,
	[CertificadoBase64] [text] NULL,
	[RutaCertificado] [varchar](255) NULL,
	[LiberaAut] [bit] NULL,
	[MapaLatitud] [float] NULL,
	[MapaLongitud] [float] NULL,
	[MapaPrecision] [int] NULL,
	[BloquearCobroTarjeta] [bit] NULL,
	[FiscalRegimen] [varchar](30) NULL,
	[FiscalZona] [varchar](30) NULL,
	[ReferenciaIntelisisService] [varchar](50) NULL,
	[SucursalLDI] [varchar](20) NULL,
	[eCommerce] [bit] NULL,
	[eCommerceOffLine] [bit] NULL,
	[eCommerceSucursal] [varchar](10) NULL,
	[eCommerceImagenes] [varchar](50) NULL,
	[eCommerceAlmacen] [varchar](10) NULL,
	[eCommerceListaPrecios] [varchar](20) NULL,
	[eCommercePedido] [varchar](20) NULL,
	[eCommerceEstrategiaDescuento] [varchar](20) NULL,
	[eCommerceArticuloFlete] [varchar](20) NULL,
	[eCommerceTipoConsecutivo] [varchar](20) NULL,
	[eCommerceTipoConsecutivoFact] [varchar](20) NULL,
	[eCommerceCondicion] [varchar](50) NULL,
	[eCommerceCajero] [varchar](10) NULL,
	[eCommerceCteCat] [varchar](50) NULL,
	[eCommerceAgente] [varchar](10) NULL,
	[eCommerceSincroniza] [bit] NULL,
	[eCommerceImpuestoIncluido] [bit] NULL,
	[POSMensajeLimiteCaja] [bit] NULL,
	[HOST] [varchar](20) NULL,
	[POSLimiteCaja] [float] NULL,
	[ParamAccDirIntelisisMES] [varchar](255) NULL,
	[eCommerceConsultaExistencias] [bit] NULL,
	[eCommerceURL] [varchar](100) NULL,
	[eCommerceEnvolturaOmision] [int] NULL,
	[eCommerceCRModo] [varchar](20) NULL,
	[eCommerceCRArticulo] [varchar](20) NULL,
	[eCommerceCRArticuloAplica] [varchar](20) NULL,
	[eCommerceCRMinimo] [float] NULL,
	[eCommerceCRMaximo] [float] NULL,
	[eCommerceCRTipo] [varchar](50) NULL,
	[eCommerceCRConcepto] [varchar](50) NULL,
	[EnviaCorreo] [bit] NULL,
	[Perfil] [varchar](20) NULL,
	[Remitente] [varchar](255) NULL,
	[BDMES] [varchar](50) NULL,
	[MapaUbicacion] [varchar](100) NULL,
	[PinPadUsuario] [varchar](50) NULL,
	[PinPadContrasena] [varchar](50) NULL,
	[PinPadMoneda] [varchar](50) NULL,
	[Directora] [varchar](10) NULL,
	[Supervisor] [varchar](100) NULL,
	[JefeSector] [varchar](100) NULL,
	[Sector] [varchar](10) NULL,
	[Zona] [varchar](10) NULL,
	[DifHorariaVerano] [float] NULL,
	[DifHorariaInvierno] [float] NULL,
 CONSTRAINT [priSuc] PRIMARY KEY CLUSTERED 
(
	[Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Sucursal] ([Sucursal], [Nombre], [Prefijo], [Relacion], [Direccion], [DireccionNumero], [DireccionNumeroInt], [Delegacion], [GLN], [Colonia], [Poblacion], [Estado], [Pais], [CodigoPostal], [Telefonos], [Fax], [Estatus], [UltimoCambio], [RFC], [RegistroPatronal], [Encargado], [Alta], [Region], [CentralRegional], [EnLinea], [SucursalPrincipal], [ListaPreciosEsp], [Cajeros], [CentroCostos], [OperacionContinua], [ZonaEconomica], [Grupo], [AlmacenPrincipal], [Servidor], [BaseDatos], [Usuario], [ZonaImpuesto], [CajaCentral], [wMovVentas], [wAlmacen], [wAgente], [wUsuario], [wUEN], [wConcepto], [CRTipoCredito], [Cliente], [Categoria], [Acreedor], [LocalidadCNBV], [Tipo], [FechaApertura], [VencimientoContrato], [Metros], [CostoBase], [UltimaSincronizacion], [IP], [IPDinamica], [IPPuerto], [ComunicacionEncriptada], [PropreEstatus], [ProprePorcentajeNormal], [PropreMarca], [CFDFlex], [noCertificado], [Llave], [ContrasenaSello], [CertificadoBase64], [RutaCertificado], [LiberaAut], [MapaLatitud], [MapaLongitud], [MapaPrecision], [BloquearCobroTarjeta], [FiscalRegimen], [FiscalZona], [ReferenciaIntelisisService], [SucursalLDI], [eCommerce], [eCommerceOffLine], [eCommerceSucursal], [eCommerceImagenes], [eCommerceAlmacen], [eCommerceListaPrecios], [eCommercePedido], [eCommerceEstrategiaDescuento], [eCommerceArticuloFlete], [eCommerceTipoConsecutivo], [eCommerceTipoConsecutivoFact], [eCommerceCondicion], [eCommerceCajero], [eCommerceCteCat], [eCommerceAgente], [eCommerceSincroniza], [eCommerceImpuestoIncluido], [POSMensajeLimiteCaja], [HOST], [POSLimiteCaja], [ParamAccDirIntelisisMES], [eCommerceConsultaExistencias], [eCommerceURL], [eCommerceEnvolturaOmision], [eCommerceCRModo], [eCommerceCRArticulo], [eCommerceCRArticuloAplica], [eCommerceCRMinimo], [eCommerceCRMaximo], [eCommerceCRTipo], [eCommerceCRConcepto], [EnviaCorreo], [Perfil], [Remitente], [BDMES], [MapaUbicacion], [PinPadUsuario], [PinPadContrasena], [PinPadMoneda], [Directora], [Supervisor], [JefeSector], [Sector], [Zona], [DifHorariaVerano], [DifHorariaInvierno]) VALUES (0, N'Matriz', NULL, N'En Linea', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'0', N'', NULL, N'Alta           ', CAST(N'2012-11-22T15:31:04.000' AS DateTime), NULL, NULL, NULL, CAST(N'2012-07-31T00:00:00.000' AS DateTime), NULL, 0, 1, 0, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, N'ADMIN_MAVI', NULL, NULL, N'Pedido', NULL, NULL, NULL, NULL, NULL, N'Tesoreria', NULL, NULL, NULL, NULL, NULL, CAST(N'2012-07-31T00:00:00.000' AS DateTime), NULL, NULL, N'(Costo Reposicion)', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Sucursal] ([Sucursal], [Nombre], [Prefijo], [Relacion], [Direccion], [DireccionNumero], [DireccionNumeroInt], [Delegacion], [GLN], [Colonia], [Poblacion], [Estado], [Pais], [CodigoPostal], [Telefonos], [Fax], [Estatus], [UltimoCambio], [RFC], [RegistroPatronal], [Encargado], [Alta], [Region], [CentralRegional], [EnLinea], [SucursalPrincipal], [ListaPreciosEsp], [Cajeros], [CentroCostos], [OperacionContinua], [ZonaEconomica], [Grupo], [AlmacenPrincipal], [Servidor], [BaseDatos], [Usuario], [ZonaImpuesto], [CajaCentral], [wMovVentas], [wAlmacen], [wAgente], [wUsuario], [wUEN], [wConcepto], [CRTipoCredito], [Cliente], [Categoria], [Acreedor], [LocalidadCNBV], [Tipo], [FechaApertura], [VencimientoContrato], [Metros], [CostoBase], [UltimaSincronizacion], [IP], [IPDinamica], [IPPuerto], [ComunicacionEncriptada], [PropreEstatus], [ProprePorcentajeNormal], [PropreMarca], [CFDFlex], [noCertificado], [Llave], [ContrasenaSello], [CertificadoBase64], [RutaCertificado], [LiberaAut], [MapaLatitud], [MapaLongitud], [MapaPrecision], [BloquearCobroTarjeta], [FiscalRegimen], [FiscalZona], [ReferenciaIntelisisService], [SucursalLDI], [eCommerce], [eCommerceOffLine], [eCommerceSucursal], [eCommerceImagenes], [eCommerceAlmacen], [eCommerceListaPrecios], [eCommercePedido], [eCommerceEstrategiaDescuento], [eCommerceArticuloFlete], [eCommerceTipoConsecutivo], [eCommerceTipoConsecutivoFact], [eCommerceCondicion], [eCommerceCajero], [eCommerceCteCat], [eCommerceAgente], [eCommerceSincroniza], [eCommerceImpuestoIncluido], [POSMensajeLimiteCaja], [HOST], [POSLimiteCaja], [ParamAccDirIntelisisMES], [eCommerceConsultaExistencias], [eCommerceURL], [eCommerceEnvolturaOmision], [eCommerceCRModo], [eCommerceCRArticulo], [eCommerceCRArticuloAplica], [eCommerceCRMinimo], [eCommerceCRMaximo], [eCommerceCRTipo], [eCommerceCRConcepto], [EnviaCorreo], [Perfil], [Remitente], [BDMES], [MapaUbicacion], [PinPadUsuario], [PinPadContrasena], [PinPadMoneda], [Directora], [Supervisor], [JefeSector], [Sector], [Zona], [DifHorariaVerano], [DifHorariaInvierno]) VALUES (25, N'SANTA', N'', N'n/a', N'', N'', NULL, N'', NULL, N'', N'', N'', N'', N'', N'', NULL, N'Alta           ', CAST(N'2022-03-08T12:16:14.000' AS DateTime), N'', NULL, NULL, CAST(N'2012-07-31T00:00:00.000' AS DateTime), N'', 0, 1, 0, NULL, 1, N'SUCU0025', 0, N'B', N'MUEBLES AMERICA', N'V00025', NULL, NULL, N'ADMIN_MAVI', N'OCCIDENTE', NULL, N'Pedido', N'V00025', NULL, NULL, 1, NULL, N'Tesoreria', NULL, N'CAT 1', NULL, NULL, N'PISO', CAST(N'2007-02-20T00:00:00.000' AS DateTime), NULL, NULL, N'(Costo Reposicion)', NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, N'', NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [CentralRegional]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [EnLinea]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((1)) FOR [Cajeros]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [OperacionContinua]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ('Pedido') FOR [wMovVentas]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ('Tesoreria') FOR [CRTipoCredito]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ('(Costo Reposicion)') FOR [CostoBase]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [IPDinamica]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((1)) FOR [ComunicacionEncriptada]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [CFDFlex]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [LiberaAut]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [BloquearCobroTarjeta]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [eCommerce]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [eCommerceOffLine]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((1)) FOR [eCommerceSincroniza]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((1)) FOR [eCommerceImpuestoIncluido]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [POSMensajeLimiteCaja]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [eCommerceConsultaExistencias]
GO
ALTER TABLE [dbo].[Sucursal] ADD  DEFAULT ((0)) FOR [EnviaCorreo]
GO
