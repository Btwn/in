
GO
/****** Object:  Table [dbo].[Art]    Script Date: 23/09/2022 09:25:32 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Art](
	[Articulo] [varchar](20) NOT NULL,
	[Rama] [varchar](20) NULL,
	[Descripcion1] [varchar](100) NULL,
	[Descripcion2] [varchar](1000) NULL,
	[NombreCorto] [varchar](255) NULL,
	[Grupo] [varchar](50) NULL,
	[Categoria] [varchar](50) NULL,
	[CategoriaActivoFijo] [varchar](50) NULL,
	[Familia] [varchar](50) NULL,
	[Linea] [varchar](50) NULL,
	[Fabricante] [varchar](50) NULL,
	[ClaveFabricante] [varchar](50) NULL,
	--[Impuesto1] [float] NOT NULL,
	[Impuesto2] [float] NULL,
	[Impuesto3] [float] NULL,
	[Factor] [varchar](50) NULL,
	[Unidad] [varchar](50) NULL,
	[UnidadCompra] [varchar](50) NULL,
	[UnidadTraspaso] [varchar](50) NULL,
	[UnidadCantidad] [float] NULL,
	[TipoCosteo] [varchar](10) NULL,
	[Peso] [float] NULL,
	[Tara] [float] NULL,
	[Volumen] [float] NULL,
	--[Tipo] [varchar](20) NOT NULL,
	--[TipoOpcion] [varchar](20) NOT NULL,
	--[Accesorios] [bit] NOT NULL,
	--[Refacciones] [bit] NOT NULL,
	--[Sustitutos] [bit] NOT NULL,
	[Servicios] [bit] NULL,
	[Consumibles] [bit] NULL,
	--[MonedaCosto] [varchar](10) NOT NULL,
	--[MonedaPrecio] [varchar](10) NOT NULL,
	[MargenMinimo] [money] NULL,
	[PrecioLista] [money] NULL,
	[PrecioMinimo] [money] NULL,
	[FactorAlterno] [float] NULL,
	[PrecioAnterior] [money] NULL,
	[Utilidad] [varchar](50) NULL,
	[DescuentoCompra] [float] NULL,
	[Clase] [varchar](15) NULL,
	--[Estatus] [varchar](15) NOT NULL,
	[UltimoCambio] [datetime] NULL,
	[Alta] [datetime] NULL,
	--[Conciliar] [bit] NOT NULL,
	[Mensaje] [varchar](50) NULL,
	[Comision] [varchar](50) NULL,
	[Arancel] [varchar](50) NULL,
	[ArancelDesperdicio] [varchar](50) NULL,
	[ABC] [varchar](1) NULL,
	[Usuario] [varchar](10) NULL,
	[Precio2] [money] NULL,
	[Precio3] [money] NULL,
	[Precio4] [money] NULL,
	[Precio5] [money] NULL,
	[Precio6] [money] NULL,
	[Precio7] [money] NULL,
	[Precio8] [money] NULL,
	[Precio9] [money] NULL,
	[Precio10] [money] NULL,
	--[Refrigeracion] [bit] NOT NULL,
	--[TieneCaducidad] [bit] NOT NULL,
	[BasculaPesar] [bit] NULL,
	--[SeProduce] [bit] NOT NULL,
	[Situacion] [varchar](50) NULL,
	[SituacionFecha] [datetime] NULL,
	[SituacionUsuario] [varchar](10) NULL,
	[SituacionNota] [varchar](100) NULL,
	[EstatusPrecio] [varchar](15) NULL,
	[wMostrar] [bit] NULL,
	[Merma] [float] NULL,
	[Desperdicio] [float] NULL,
	[SeCompra] [bit] NULL,
	[SeVende] [bit] NULL,
	[EsFormula] [bit] NULL,
	[TiempoEntrega] [int] NULL,
	[TiempoEntregaUnidad] [varchar](10) NULL,
	[TiempoEntregaSeg] [int] NULL,
	[TiempoEntregaSegUnidad] [varchar](10) NULL,
	[LoteOrdenar] [varchar](30) NULL,
	[CantidadOrdenar] [float] NULL,
	[MultiplosOrdenar] [float] NULL,
	[InvSeguridad] [float] NULL,
	[ProdRuta] [varchar](20) NULL,
	[AlmacenROP] [varchar](10) NULL,
	[CategoriaProd] [varchar](50) NULL,
	[ProdCantidad] [float] NULL,
	[ProdUsuario] [varchar](10) NULL,
	[ProdPasoTotal] [int] NULL,
	[ProdMovGrupo] [varchar](50) NULL,
	[ProdEstacion] [varchar](10) NULL,
	--[ProdOpciones] [bit] NOT NULL,
	[ProdVerConcentracion] [bit] NULL,
	[ProdVerCostoAcumulado] [bit] NULL,
	[ProdVerMerma] [bit] NULL,
	[ProdVerDesperdicio] [bit] NULL,
	[ProdVerPorcentaje] [bit] NULL,
	[RevisionUltima] [datetime] NULL,
	[RevisionUsuario] [varchar](10) NULL,
	[RevisionFrecuencia] [int] NULL,
	[RevisionFrecuenciaUnidad] [varchar](10) NULL,
	[RevisionSiguiente] [datetime] NULL,
	[ProdMov] [varchar](20) NULL,
	[TipoCompra] [varchar](20) NULL,
	[TieneMovimientos] [bit] NULL,
	[Registro1] [varchar](20) NULL,
	[Registro1Vencimiento] [datetime] NULL,
	[AlmacenEspecificoVenta] [varchar](10) NULL,
	[AlmacenEspecificoVentaMov] [varchar](20) NULL,
	[RutaDistribucion] [varchar](50) NULL,
	[CostoEstandar] [float] NULL,
	[CostoReposicion] [float] NULL,
	[EstatusCosto] [varchar](15) NULL,
	[Margen] [money] NULL,
	[Proveedor] [varchar](10) NULL,
	[NivelAcceso] [varchar](50) NULL,
	[Temporada] [varchar](50) NULL,
	[SolicitarPrecios] [bit] NULL,
	[AutoRecaudacion] [varchar](30) NULL,
	[Concepto] [varchar](50) NULL,
	[Cuenta] [varchar](20) NULL,
	[Retencion1] [float] NULL,
	[Retencion2] [float] NULL,
	[Retencion3] [float] NULL,
	[Espacios] [bit] NULL,
	[EspaciosEspecificos] [bit] NULL,
	[EspaciosSobreventa] [float] NULL,
	[EspaciosNivel] [varchar](50) NULL,
	[EspaciosMinutos] [int] NULL,
	[EspaciosBloquearAnteriores] [bit] NULL,
	[EspaciosHoraD] [varchar](5) NULL,
	[EspaciosHoraA] [varchar](5) NULL,
	[SerieLoteInfo] [bit] NULL,
	[CantidadMinimaVenta] [float] NULL,
	[CantidadMaximaVenta] [float] NULL,
	[EstimuloFiscal] [float] NULL,
	[OrigenPais] [varchar](50) NULL,
	[OrigenLocalidad] [varchar](50) NULL,
	[Incentivo] [money] NULL,
	[FactorCompra] [float] NULL,
	[Horas] [float] NULL,
	[ISAN] [bit] NULL,
	[ExcluirDescFormaPago] [bit] NULL,
	[EsDeducible] [bit] NULL,
	[Peaje] [money] NULL,
	[CodigoAlterno] [varchar](50) NULL,
	[TipoCatalogo] [varchar](20) NULL,
	[AnexosAlFacturar] [bit] NULL,
	[CaducidadMinima] [int] NULL,
	[Actividades] [bit] NULL,
	[ValidarPresupuestoCompra] [varchar](20) NULL,
	[SeriesLotesAutoOrden] [varchar](20) NULL,
	[LotesFijos] [bit] NULL,
	[LotesAuto] [bit] NULL,
	[Consecutivo] [int] NULL,
	[TipoEmpaque] [varchar](50) NULL,
	[Modelo] [varchar](4) NULL,
	[Version] [varchar](50) NULL,
	[TieneDireccion] [bit] NULL,
	[Direccion] [varchar](100) NULL,
	[DireccionNumero] [varchar](20) NULL,
	[DireccionNumeroInt] [varchar](20) NULL,
	[EntreCalles] [varchar](100) NULL,
	[Plano] [varchar](15) NULL,
	[Observaciones] [varchar](100) NULL,
	[Colonia] [varchar](100) NULL,
	[Delegacion] [varchar](100) NULL,
	[Poblacion] [varchar](100) NULL,
	[Estado] [varchar](30) NULL,
	[Pais] [varchar](30) NULL,
	[CodigoPostal] [varchar](15) NULL,
	[Ruta] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[ClaveVehicular] [varchar](20) NULL,
	[TipoVehiculo] [varchar](20) NULL,
	[DiasLibresIntereses] [int] NULL,
	[PrecioLiberado] [bit] NULL,
	[ValidarCodigo] [bit] NULL,
	[Presentacion] [varchar](50) NULL,
	[GarantiaPlazo] [int] NULL,
	[CostoIdentificado] [bit] NULL,
	[CantidadTarima] [float] NULL,
	[UnidadTarima] [varchar](50) NULL,
	[MinimoTarima] [float] NULL,
	[DepartamentoDetallista] [int] NULL,
	[TratadoComercial] [varchar](50) NULL,
	[CuentaPresupuesto] [varchar](20) NULL,
	[ProgramaSectorial] [varchar](50) NULL,
	[PedimentoClave] [varchar](5) NULL,
	[PedimentoRegimen] [varchar](5) NULL,
	[Permiso] [varchar](20) NULL,
	[PermisoRenglon] [varchar](20) NULL,
	[Cuenta2] [varchar](20) NULL,
	[Cuenta3] [varchar](20) NULL,
	[Impuesto1Excento] [bit] NULL,
	[CalcularPresupuesto] [bit] NULL,
	[InflacionPresupuesto] [float] NULL,
	[Excento2] [bit] NULL,
	[Excento3] [bit] NULL,
	[SincroID] [timestamp] NULL,
	[SincroC] [int] NULL,
	[Capital] [float] NULL,
	[FechaUltimoMov] [datetime] NULL,
	[UltimoMov] [varchar](100) NULL,
	[MarcaE] [varchar](50) NULL,
	[ModeloE] [varchar](50) NULL,
	[LineaE] [varchar](50) NULL,
	[NombreLargoE] [varchar](1000) NULL,
	[Volumetrico] [float] NULL,
	[MetaPalabras1E] [varchar](500) NULL,
	[MetaDescripcion1E] [varchar](500) NULL,
	[MetaPalabras2E] [varchar](500) NULL,
	[MetaDescripcion2E] [varchar](500) NULL,
	[MetaPalabras3E] [varchar](500) NULL,
	[MetaDescripcion3E] [varchar](500) NULL,
	[CtaCliente] [varchar](9) NULL,
	[TipoEntradaMavi] [varchar](15) NULL,
	[espadre] [bit] NULL,
	[codigopadre] [varchar](11) NULL,
	[FechaLanzamiento] [datetime] NULL,
	[FechaVigencia] [datetime] NULL,
	[ISBN] [varchar](50) NULL,
	[ContUso] [varchar](20) NULL,
	[ContUso2] [varchar](20) NULL,
	[ContUso3] [varchar](20) NULL,
	[NivelToleranciaCosto] [varchar](10) NULL,
	[ToleranciaCosto] [money] NULL,
	[ToleranciaCostoInferior] [money] NULL,
	[ObjetoGasto] [varchar](10) NULL,
	[ObjetoGastoRef] [varchar](10) NULL,
	[ClavePresupuestalImpuesto1] [varchar](50) NULL,
	[Estructura] [varchar](50) NULL,
	[TipoImpuesto1] [varchar](10) NULL,
	[TipoImpuesto2] [varchar](10) NULL,
	[TipoImpuesto3] [varchar](10) NULL,
	[TipoImpuesto4] [varchar](10) NULL,
	[TipoImpuesto5] [varchar](10) NULL,
	[TipoRetencion1] [varchar](10) NULL,
	[TipoRetencion2] [varchar](10) NULL,
	[TipoRetencion3] [varchar](10) NULL,
	--[Calificacion] [smallint] NOT NULL,
	[ClavePresupuestalRetencion1] [varchar](50) NULL,
	[SAUX] [bit] NULL,
	[INFORClavePrincipal] [varchar](20) NULL,
	[INFORStockMinimo] [float] NULL,
	[INFORStockMaximo] [float] NULL,
	[INFORPrefijo] [varchar](20) NULL,
	[INFORSufijo] [varchar](20) NULL,
	[CodigoEstructura] [varchar](20) NULL,
	[TipoVariante] [varchar](5) NULL,
	[INFORTipo] [varchar](50) NULL,
	[INFORCuarentena] [int] NULL,
	[INFORClavePlanta] [varchar](8) NULL,
	[INFORTrazabilidad] [bit] NULL,
	[INFORLotificacionPropia] [bit] NULL,
	[INFORUltimoNumeroLote] [int] NULL,
	[INFORUnidadesMaximaLote] [int] NULL,
	[INFORTieneNoSerie] [bit] NULL,
	[INFORSMR] [float] NULL,
	[INFORTipoDeAsignacion] [varchar](20) NULL,
	[INFORNoSerie] [varchar](20) NULL,
	[INFORFormato] [varchar](20) NULL,
	[INFORAlmacenProd] [varchar](20) NULL,
	[ReferenciaIntelisisService] [varchar](50) NULL,
	[EsFactory] [bit] NULL,
	[AltoTarima] [float] NULL,
	[LargoTarima] [float] NULL,
	[AnchoTarima] [float] NULL,
	[TaraTarima] [float] NULL,
	[VolumenTarima] [float] NULL,
	[PesoTarima] [float] NULL,
	[CantidadCamaTarima] [float] NULL,
	[CamasTarima] [float] NULL,
	[EstibaMaxima] [int] NULL,
	[ControlArticulo] [varchar](20) NULL,
	[DiasControlCaducidad] [int] NULL,
	[EstibaMismaFecha] [bit] NULL,
	[TipoRotacion] [varchar](10) NULL,
	[PermiteEstibar] [bit] NULL,
	[EmidaRecargaTelefonica] [bit] NULL,
	[EmidaTiempoAire] [bit] NULL,
	[LDI] [bit] NULL,
	[LDIServicio] [varchar](20) NULL,
	[POSForma] [varchar](50) NULL,
	[ArticuloWeb] [varchar](255) NULL,
	[TarimasReacomodar] [int] NULL,
	[CantidadPresentacion] [float] NULL,
	--[MFATipoDeducibilidad] [varchar](50) NOT NULL,
	[MaterialPeligroso] [bit] NULL,
	[POSAgenteDetalle] [varchar](20) NULL,
	[TipoArticulo] [int] NULL,
	[AlmMesComs] [varchar](10) NULL,
	[MinimoCompra] [float] NULL,
	[StockMinimo] [float] NULL,
	[StockMaximo] [float] NULL,
	[SMR] [int] NULL,
	[CRMObjectId] [uniqueidentifier] NULL,
	[DescripcionHTML] [varchar](max) NULL,
	[CFDIRetClave] [varchar](2) NULL,
	[CFDIRetIEPSImpuesto] [varchar](10) NULL,
	[IncluyeVineta] [bit] NULL,
	[EsCombustible] [bit] NULL,
	[ProdRitmo] [float] NULL,
	[Tono] [varchar](20) NULL,
	[ProdProceso] [varchar](20) NULL,
	[ProdConsecutivo] [varchar](10) NULL,
	[Recuperacion] [bit] NULL,
	[RutaArticulo] [bit] NULL,
	[ProdTipoArt] [varchar](20) NULL,
	[ProdRutaSecuencial] [bit] NULL,
	[ProdTiempoProceso] [float] NULL,
	[ProdCapacidadInstalada] [float] NULL,
	[ProdCapacidadReal] [float] NULL,
	[AlmacenDES] [varchar](10) NULL,
	[ProdDestajoBulto] [float] NULL,
	[CESumarizaEnFactura] [bit] NULL,
	[CENoAplicaBeca] [bit] NULL,
	[CENoAplicaPorcMat] [bit] NULL,
	[IEDU] [bit] NULL,
	[MesEnIEDU] [bit] NULL,
	[ProdEstructuraFam] [bit] NULL,
	[vicMedida] [float] NULL,
	[vicUso] [varchar](50) NULL,
	[vicNegociacion] [varchar](50) NULL,
	[vicInmueble] [varchar](50) NULL,
	[vicArea] [varchar](50) NULL,
	[vicSubArea] [varchar](10) NULL,
	[vicIndiviso] [float] NULL,
	[vicFactor1] [float] NULL,
	[vicFactor2] [float] NULL,
	[vicFactor3] [float] NULL,
	[vicMesesRelComer] [int] NULL,
	[vicFechaEstimOper] [datetime] NULL,
	[vicPromPlanos] [bit] NULL,
	[vicPropio] [bit] NULL,
	[vicComplemento] [bit] NULL,
	[vicContratoID] [varchar](50) NULL,
	[vicPredial] [varchar](50) NULL,
	[vicNivel] [varchar](10) NULL,
	[vicSubNivel] [varchar](10) NULL,
	[vicContratoIDCargoExcepcion] [varchar](50) NULL,
	[vicEstatus] [varchar](15) NULL,
	[vicMedidaEstimada] [float] NULL,
	[TieneContrato] [bit] NULL,
	[Comentarios] [text] NULL,
	[Proyecto] [varchar](50) NULL,
	[HTML] [text] NULL,
	[VicContratoID2] [int] NULL,
	[vicEstatus2] [varchar](15) NULL,
	[vicImporte1] [money] NULL,
	[vicImporte2] [money] NULL,
	[vicImporte3] [money] NULL,
	[vicOrigen] [varchar](10) NULL,
	[PrecioVentaM2] [money] NULL,
	[vicFechaAlta] [datetime] NULL,
	[vicVenta] [bit] NULL,
	[vicRenta] [bit] NULL,
	[vicRentaSVenta] [bit] NULL,
	[vicCompra] [bit] NULL,
	[vicSubArrendamiento] [bit] NULL,
	[vicIntermediario] [bit] NULL,
	[vicArrendamiento] [bit] NULL,
	[vicCostoObra] [money] NULL,
	[vicCostoTerreno] [money] NULL,
	[ID_CuadroBasico] [int] NULL,
	[CostoPromedioPCP] [float] NULL,
	--[EditarNombreEcommerce] [bit] NOT NULL,
	[DescripcionLargaVIU] [varchar](1000) NULL,
	[DescripcionLargaMAVI] [varchar](1000) NULL,
	[TipoLiquidacion] [varchar](5) NULL,
 CONSTRAINT [priArt] PRIMARY KEY CLUSTERED 
(
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] --TEXTIMAGE_ON [PRIMARY]
GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('Normal') FOR [Tipo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('No') FOR [TipoOpcion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Accesorios]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Refacciones]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Sustitutos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Servicios]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Consumibles]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Conciliar]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Refrigeracion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [TieneCaducidad]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [BasculaPesar]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SeProduce]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('NUEVO') FOR [EstatusPrecio]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [wMostrar]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SeCompra]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SeVende]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EsFormula]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [ProdCantidad]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('(Mismo)') FOR [ProdUsuario]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [ProdPasoTotal]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdOpciones]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdVerConcentracion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdVerCostoAcumulado]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdVerMerma]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdVerDesperdicio]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdVerPorcentaje]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('(por omision)') FOR [ProdMov]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [TieneMovimientos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('SINCAMBIO') FOR [EstatusCosto]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SolicitarPrecios]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Espacios]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EspaciosEspecificos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('Dia') FOR [EspaciosNivel]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((60)) FOR [EspaciosMinutos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [EspaciosBloquearAnteriores]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SerieLoteInfo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1.0)) FOR [FactorCompra]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ISAN]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ExcluirDescFormaPago]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EsDeducible]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('Resurtible') FOR [TipoCatalogo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [AnexosAlFacturar]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Actividades]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('No') FOR [ValidarPresupuestoCompra]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('(Empresa)') FOR [SeriesLotesAutoOrden]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [LotesFijos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [LotesAuto]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [TieneDireccion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [PrecioLiberado]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ValidarCodigo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [CostoIdentificado]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Impuesto1Excento]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [CalcularPresupuesto]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Excento2]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Excento3]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [SincroC]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('(Empresa)') FOR [NivelToleranciaCosto]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Calificacion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [SAUX]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EsFactory]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((1)) FOR [EstibaMaxima]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT (NULL) FOR [ControlArticulo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT (NULL) FOR [DiasControlCaducidad]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EstibaMismaFecha]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [PermiteEstibar]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EmidaRecargaTelefonica]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EmidaTiempoAire]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [LDI]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('deducible') FOR [MFATipoDeducibilidad]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [MaterialPeligroso]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [TipoArticulo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ('Impuesto 2') FOR [CFDIRetIEPSImpuesto]
--GO
--ALTER TABLE [dbo].[Art] ADD  CONSTRAINT [DF_Art_IncluyeVineta]  DEFAULT ((0)) FOR [IncluyeVineta]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [EsCombustible]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [Recuperacion]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [RutaArticulo]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdRutaSecuencial]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [CESumarizaEnFactura]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [CENoAplicaBeca]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [CENoAplicaPorcMat]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [IEDU]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [MesEnIEDU]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [ProdEstructuraFam]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [vicPromPlanos]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [vicPropio]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [vicComplemento]
--GO
--ALTER TABLE [dbo].[Art] ADD  DEFAULT ((0)) FOR [TieneContrato]
--GO
--ALTER TABLE [dbo].[Art] ADD  CONSTRAINT [DF_Art_EditarNombreEcommerce]  DEFAULT ((0)) FOR [EditarNombreEcommerce]
--GO
--EXEC sys.sp_addextendedproperty @name=N'FechaLanzamiento', @value=N'En este Campo se guardara la fecha en la cual se da de alta un artículo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'FechaLanzamiento'
--GO
--EXEC sys.sp_addextendedproperty @name=N'FechaVigencia', @value=N'En este Campo se guardara la fecha para saber cuando será descontinuado un artículo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'FechaVigencia'
--GO
--EXEC sys.sp_addextendedproperty @name=N'IncluyeVineta', @value=N'Bit que define si se le incluira la viñeta (1) o no (0)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'IncluyeVineta'
--GO
--EXEC sys.sp_addextendedproperty @name=N'CostoPromedioPCP', @value=N'Indica el Costo Promedio del articulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'CostoPromedioPCP'
--GO
--EXEC sys.sp_addextendedproperty @name=N'EditarNombreEcommerce', @value=N'Indica si se puede editar el nombre ecommerce del articulo de manera manual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'EditarNombreEcommerce'
--GO
--EXEC sys.sp_addextendedproperty @name=N'DescripcionLargaVIU', @value=N'Descripcion Larga del articulo para tienda virtual VIU' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'DescripcionLargaVIU'
--GO
--EXEC sys.sp_addextendedproperty @name=N'DescripcionLargaMAVI', @value=N'Descripcion Larga del articulo para tienda virtual MAVI' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'DescripcionLargaMAVI'
--GO
--EXEC sys.sp_addextendedproperty @name=N'TipoLiquidacion', @value=N'Asignacion de tipo Liquidacion, si es vacio no es liquidacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Art', @level2type=N'COLUMN',@level2name=N'TipoLiquidacion'
--GO
