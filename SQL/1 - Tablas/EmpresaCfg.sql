
GO
/****** Object:  Table [dbo].[EmpresaCfg]    Script Date: 24/09/2022 09:00:15 a. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaCfg](
	[Empresa] [varchar](5) NOT NULL,
	[FormaCosteo] [varchar](20) NULL,
	[TipoCosteo] [varchar](20) NULL,
	[SugerirCostoDev] [varchar](20) NULL,
	[SugerirCostoArtServicio] [varchar](20) NULL,
	[CosteoNivelSubCuenta] [bit] NULL,
	[PreciosNivelSubCuenta] [bit] NULL,
	[CosteoActividades] [varchar](20) NULL,
	[ToleranciaCosto] [money] NULL,
	[ToleranciaTipoCosto] [varchar](20) NULL,
	[ValidarMargenMinimo] [varchar](20) NULL,
	[SeriesLotesMayoreo] [bit] NOT NULL,
	[Partidas] [bit] NOT NULL,
	[SeriesLotesAutoCampo] [varchar](20) NULL,
	[SeriesLotesAutoOrden] [varchar](20) NULL,
	[SeriesImprimirMov] [bit] NOT NULL,
	[SeriesImprimirProp] [bit] NOT NULL,
	[PresentacionAutoOrden] [varchar](20) NULL,
	[CB] [bit] NOT NULL,
	[CBSerieLote] [bit] NULL,
	[CBSubCodigos] [bit] NOT NULL,
	[CBSubCuentas] [bit] NOT NULL,
	[CBPreguntarCantidad] [bit] NULL,
	[CBProcesarLote] [bit] NOT NULL,
	[CxcAplicaAutoOrden] [varchar](20) NULL,
	[CxpAplicaAutoOrden] [varchar](20) NULL,
	[PedidosReservar] [bit] NOT NULL,
	[PedidosReservarEsp] [bit] NULL,
	[PedidosReservarLineaCompleta] [bit] NULL,
	[FacturasPendientes] [bit] NOT NULL,
	[CompraConsignacion] [varchar](20) NULL,
	[CompraCostoSugerido] [varchar](20) NULL,
	[CompraDescImporte] [bit] NOT NULL,
	[CompraVentaSinIVA] [bit] NOT NULL,
	[CompraVerClaveProveedor] [bit] NOT NULL,
	[VentaDescImporte] [bit] NOT NULL,
	[VentaChecarCredito] [varchar](20) NULL,
	[VentaPedidosDisminuyenCredito] [bit] NULL,
	[VentaBloquearMorosos] [varchar](20) NULL,
	[VentaLiquidaIntegral] [bit] NOT NULL,
	[VentaLiquidaIntegralCxc] [bit] NULL,
	[BackOrders] [bit] NOT NULL,
	[BackOrdersNivel] [varchar](20) NULL,
	[VentaSurtirDemas] [bit] NOT NULL,
	[VentaPrecios] [int] NULL,
	[VentaIncentivos] [bit] NULL,
	[VentaListaPrecios] [varchar](20) NULL,
	[VentaConfirmarServicios] [bit] NOT NULL,
	[VentaConfirmarContratos] [bit] NOT NULL,
	[VentaContratosImpuesto] [float] NULL,
	[VentaContratosArticulo] [varchar](20) NULL,
	[VentaServiciosRequiereTareas] [bit] NOT NULL,
	[VentaServiciosTareaOmision] [varchar](50) NULL,
	[VentaServiciosAutoOP] [bit] NULL,
	[VentaServiciosValidarID] [bit] NULL,
	[VentaDefCantidad] [float] NULL,
	[VentaPaquetes] [bit] NOT NULL,
	[VentaPreciosImpuestoIncluido] [bit] NOT NULL,
	[VentaComisionesCobradas] [bit] NOT NULL,
	[ComisionBase] [varchar](20) NOT NULL,
	[ComisionEspecial] [bit] NOT NULL,
	[VentaLimiteRenFacturas] [int] NULL,
	[VentaLimiteRenFacturasVMOS] [bit] NULL,
	[VentaTEEstandar] [int] NULL,
	[VentaTEEstandarTipoDias] [varchar](10) NULL,
	[VentaTEEstandarRecorrerDomingo] [bit] NULL,
	[InvPaquetes] [bit] NOT NULL,
	[InvPrestamosGarantias] [bit] NOT NULL,
	[InvEntradasSinCosto] [bit] NOT NULL,
	[InvSugererirCompra] [varchar](20) NULL,
	[CxcProntoPagoTasaDiaria] [bit] NULL,
	[CxcProntoPagoTasa] [float] NULL,
	[CxpProntoPagoTasaDiaria] [bit] NULL,
	[CxpProntoPagoTasa] [float] NULL,
	[CxcMoratoriosTasa] [float] NULL,
	[CxcRefinanciamientoTasa] [float] NULL,
	[CxcAutoAjuste] [money] NULL,
	[CxcAutoAjusteMov] [money] NULL,
	[CxcFormaCobroDA] [varchar](50) NULL,
	[CxcDARef] [bit] NULL,
	[CxcFormaCobroVales] [varchar](50) NULL,
	[CxpProntoPago] [bit] NULL,
	[CxcProntoPago] [bit] NOT NULL,
	[CxcProntoPagoConcepto] [varchar](50) NULL,
	[CxpAutoAjuste] [money] NULL,
	[CxpAutoAjusteMov] [money] NULL,
	[CxcControlEfectivo] [bit] NOT NULL,
	[CxcTopeEfectivoAuto] [money] NULL,
	[CxcFormaCobroTarjetas] [varchar](50) NULL,
	[CxcArticuloTarjetasDef] [varchar](20) NULL,
	[CxcAlmacenTarjetasDef] [varchar](10) NULL,
	[CxcValidarPrecioTarjetas] [bit] NULL,
	[CxpProntoPagoConcepto] [varchar](50) NULL,
	[CxpControlEfectivo] [bit] NOT NULL,
	[CxpTopeEfectivoAuto] [money] NULL,
	[ChequesPendientes] [bit] NOT NULL,
	[eChequesPendientes] [bit] NOT NULL,
	[ChequesDirectos] [bit] NULL,
	[FormaPagoCambio] [varchar](50) NULL,
	[CtaFormato] [varchar](20) NULL,
	[CteFormato] [varchar](20) NULL,
	[ArtFormato] [varchar](20) NULL,
	[PersonalFormato] [varchar](20) NULL,
	[CentrosCostosFormato] [varchar](20) NULL,
	[ContMoneda] [varchar](20) NULL,
	[ContVerificarPosicion] [bit] NOT NULL,
	[ContVerificarIVA] [bit] NOT NULL,
	[ContCentrosCostos] [bit] NOT NULL,
	[ContCentrosCostosVerificarPos] [bit] NOT NULL,
	[ContTablaINPC] [varchar](50) NULL,
	[TablaISAN] [varchar](50) NULL,
	[ImporteISANLujo] [money] NULL,
	[TablaISANLujo] [varchar](50) NULL,
	[ContUsoInv] [bit] NOT NULL,
	[ContUsoCompras] [bit] NOT NULL,
	[ContUsoGastos] [bit] NOT NULL,
	[ContUsoVentas] [bit] NOT NULL,
	[ContUsoDinero] [bit] NOT NULL,
	[ContUsoCxc] [bit] NOT NULL,
	[ContUsoCxp] [bit] NOT NULL,
	[ContUsoFormato] [varchar](20) NULL,
	[CtaContabilidad] [varchar](20) NULL,
	[CtaActivo] [varchar](20) NULL,
	[CtaPasivo] [varchar](20) NULL,
	[CtaCapital] [varchar](20) NULL,
	[CtaResultados] [varchar](20) NULL,
	[CtaIngresos] [varchar](20) NULL,
	[CtaCostoDirecto] [varchar](20) NULL,
	[CtaGastosOperacion] [varchar](20) NULL,
	[CtaOtrosGastosProductos] [varchar](20) NULL,
	[CtaImpuestos] [varchar](20) NULL,
	[CtaOrden] [varchar](20) NULL,
	[AutorizarRequisiciones] [bit] NOT NULL,
	[EmbarqueAfectarCobros] [bit] NOT NULL,
	[EmbarqueCobrarDemas] [bit] NULL,
	[EmbarqueModificarVencimiento] [bit] NULL,
	[AFRevaluarDepreciacion] [bit] NOT NULL,
	[AFAfectarDinero] [bit] NOT NULL,
	[AFMantenimientoPendiente] [bit] NOT NULL,
	[NomOmision] [varchar](50) NULL,
	[NomOmisionPeriodo] [varchar](20) NULL,
	[NomBeneficiario] [varchar](50) NULL,
	[NomISRSimplificado] [bit] NULL,
	[NomSugerirSDI] [bit] NULL,
	[NomConceptoSDI] [varchar](50) NULL,
	[NomSugerirAumentoVacaciones] [bit] NULL,
	[NomConceptoAumentoVacaciones] [varchar](50) NULL,
	[NomAfectarAumentoVacaciones] [bit] NULL,
	[NomModificarFechaNomina] [bit] NULL,
	[TablaVacaciones] [varchar](50) NULL,
	[AsisteToleraEntrada] [int] NULL,
	[AsisteToleraSalida] [int] NULL,
	[AsisteGenerarFaltas] [bit] NULL,
	[AsisteGenerarRetardos] [bit] NULL,
	[AsisteGenerarHorasExtras] [bit] NULL,
	[RHControlPlazas] [varchar](20) NULL,
	[RHPlaza] [bit] NOT NULL,
	[CambioTasa] [float] NULL,
	[NotasBorrador] [bit] NOT NULL,
	[InvFisicoConteo] [int] NULL,
	[ValidarPrecios] [varchar](20) NULL,
	[CxcPlazo1] [int] NULL,
	[CxcPlazo2] [int] NULL,
	[CxcPlazo3] [int] NULL,
	[CxcPlazo4] [int] NULL,
	[GastoAfecta] [varchar](20) NULL,
	[AlmacenDestinoEntregaGarantia] [varchar](10) NULL,
	[CxpPlazo1] [int] NULL,
	[CxpPlazo2] [int] NULL,
	[CxpPlazo3] [int] NULL,
	[CxpPlazo4] [int] NULL,
	[CosteoSeries] [bit] NULL,
	[CosteoLotes] [bit] NULL,
	[ArtRevision] [bit] NULL,
	[CancelarOtroMesFactura] [bit] NULL,
	[CancelarFactura] [varchar](20) NULL,
	[CancelarFacturaFecha] [varchar](20) NULL,
	[CancelarFacturaFisicamente] [bit] NULL,
	[EmbarqueEstadoPendiente] [varchar](50) NULL,
	[EmbarqueEstadoTransito] [varchar](50) NULL,
	[TransferirDemas] [bit] NOT NULL,
	[CxcDocAutoFolio] [varchar](20) NULL,
	[CxpDocAutoFolio] [varchar](20) NULL,
	[CxcDocAnticipoAutoFolio] [varchar](20) NULL,
	[CxpDocAnticipoAutoFolio] [varchar](20) NULL,
	[CxcAnticipoEfectivo] [bit] NOT NULL,
	[CxpAnticipoEfectivo] [bit] NOT NULL,
	[Cajeros] [bit] NULL,
	[ClienteFacturaVMOS] [varchar](10) NULL,
	[EstatusFacturaVMOS] [varchar](15) NULL,
	[AsignarConsecutivoFacturaVMOS] [bit] NULL,
	[CxpMoratoriosTasa] [float] NULL,
	[CxcRecargosConcepto] [varchar](50) NULL,
	[CxpRecargosConcepto] [varchar](50) NULL,
	[FormaPagoOmision] [varchar](50) NULL,
	[FormaCobroOmision] [varchar](50) NULL,
	[CxpRecorrerVencimiento] [varchar](20) NULL,
	[CxcRecorrerVencimiento] [varchar](20) NULL,
	[FormaPagoRequerida] [bit] NULL,
	[MonedaCosteo] [varchar](10) NULL,
	[MonedaCosteoNivelArticulo] [bit] NULL,
	[CambioOperacionRelevante] [money] NULL,
	[CambioMonedaRelevante] [varchar](10) NULL,
	[CambioCategoriaRelevante1] [varchar](50) NULL,
	[CambioCategoriaRelevante2] [varchar](50) NULL,
	[CambioDiasRemesas] [int] NULL,
	[CompraPaquetes] [bit] NULL,
	[EmbarqueGenerarGastoTarifas] [bit] NULL,
	[EmbarqueAfectarGastoTarifas] [bit] NULL,
	[DineroDesgloseObligatorio] [bit] NULL,
	[DineroAfectarComision] [bit] NULL,
	[CancelarFacturaReservarPedido] [bit] NULL,
	[Texto1] [varchar](50) NULL,
	[Fecha1] [datetime] NULL,
	[Fecha2] [datetime] NULL,
	[CompraVerClaveIdioma] [bit] NULL,
	[InvVerClaveIdioma] [bit] NULL,
	[VentaVerClaveIdioma] [bit] NULL,
	[CBDirAlmacen] [bit] NOT NULL,
	[NomCCRequerido] [bit] NULL,
	[VentaAnticipoCredito] [bit] NULL,
	[CompraAnticipoCredito] [bit] NULL,
	[DineroContX] [varchar](20) NULL,
	[DineroControlarSobregiros] [bit] NULL,
	[VentaSugerirSaldoFavorID] [bit] NULL,
	[VentaCobroRedondeoDecimales] [int] NULL,
	[ContMovPresupuesto] [bit] NULL,
	[ContReservarPresupuesto] [bit] NULL,
	[ContValidarPresupuesto] [bit] NULL,
	[ContNivelPresupuesto] [varchar](20) NULL,
	[CompraProveedorRequisicion] [bit] NULL,
	[VentaActualizarPrecioMoneda] [bit] NULL,
	[EspaciosNivel] [varchar](50) NULL,
	[EspaciosSobreventa] [float] NULL,
	[EspaciosMinutos] [int] NULL,
	[EspaciosBloquearAnteriores] [bit] NULL,
	[EspaciosHoraD] [varchar](5) NULL,
	[EspaciosHoraA] [varchar](5) NULL,
	[EspaciosCfg] [varchar](20) NULL,
	[EspaciosAsignacion] [bit] NULL,
	[CentroCostosRamas] [bit] NULL,
	[CentroCostosValidar] [bit] NULL,
	[ContMoneda2] [varchar](10) NULL,
	[ContMoneda2Auto] [bit] NULL,
	[CompraValidarArtProv] [bit] NULL,
	[InvConfirmarSolicitudes] [bit] NULL,
	[VentaServicioSituacionTipo] [bit] NULL,
	[KmsxMes] [int] NULL,
	[AFConceptoDepreciacion] [varchar](50) NULL,
	[AFAcreedorDepreciacion] [varchar](10) NULL,
	[CompraAutoEndoso] [bit] NULL,
	[CompraAutoEndosoEmpresas] [bit] NULL,
	[CompraAutoEndosoWS] [bit] NULL,
	[CompraAutoEndosoWSDL] [varchar](255) NULL,
	[CompraAutoEndosoMovs] [bit] NULL,
	[CompraAutoEndosoAutoCargos] [bit] NULL,
	[NomDiasDesfasoIncidencias] [int] NULL,
	[NomPremios] [bit] NULL,
	[ContMultiSucursal] [bit] NULL,
	[ContCtaCliente] [bit] NULL,
	[ContCtaProveedor] [bit] NULL,
	[ContCtaAlmacen] [bit] NULL,
	[ContCtaPersonal] [bit] NULL,
	[ContCtaDinero] [bit] NULL,
	[ContCtaFormaPago] [bit] NULL,
	[ContCtaArticulo] [bit] NULL,
	[NomValidarReferencias] [bit] NULL,
	[CompraProrrateada] [bit] NULL,
	[CompraProrrateadaRedondeo] [int] NULL,
	[DineroAutoFaltanteSobrante] [bit] NULL,
	[FormaPagoEfectivo] [varchar](50) NULL,
	[CxcDescContado] [bit] NULL,
	[CxcDescContadoDias] [int] NULL,
	[CxcDescContadoPorcentaje] [float] NULL,
	[CxcValidarDescPPMorosos] [bit] NULL,
	[ContPermitirCancelacionOrigen] [bit] NULL,
	[DineroFaltanteModulo] [varchar](5) NULL,
	[DineroConciliarPorSucursales] [bit] NULL,
	[PrecioMinimoNivelSucursal] [bit] NULL,
	[ContToleraciaRedondeo] [float] NULL,
	[NomPorcentajeSubsidio] [float] NULL,
	[CRAcreedor] [varchar](10) NULL,
	[CRClase] [varchar](50) NULL,
	[CRSubClase] [varchar](50) NULL,
	[CRFormaPago] [varchar](50) NULL,
	[CRCorteCajaCentralMax] [int] NULL,
	[CRValidarCorteSaldoCero] [bit] NULL,
	[CRValidarCorteZSaldoCero] [bit] NULL,
	[CRAfectarAuto] [bit] NULL,
	[CREstatusSinAfectar] [varchar](15) NULL,
	[CRCerrarDiaAuto] [bit] NULL,
	[CRValidarFolio] [bit] NULL,
	[ArtRedondeo] [varchar](20) NULL,
	[VentaRestringirArtBloqueados] [bit] NULL,
	[CompraRestringirArtBloquedos] [bit] NULL,
	[VentaLimiteCreditoNivelGrupo] [bit] NULL,
	[VentaLimiteCreditoNivelUEN] [bit] NULL,
	[VentaAnexosAlFacturar] [bit] NULL,
	[CompraValidarPresupuesto] [varchar](20) NULL,
	[CompraValidarPresupuestoFR] [bit] NULL,
	[ContCuentaCierre] [varchar](20) NULL,
	[VentaEndoso] [bit] NULL,
	[AFSugerirSerieEntrada] [bit] NULL,
	[AFConsecutivo] [int] NULL,
	[VentaPPIndirectos] [bit] NULL,
	[EmbarqueBaseProrrateo] [varchar](20) NULL,
	[VentaRefSerieLotePedidos] [bit] NULL,
	[VentaArrastrarSerieLote] [bit] NULL,
	[ACFactorCapacidadPago] [float] NULL,
	[ACClienteDevengados] [varchar](10) NULL,
	[ACProveedorDevengados] [varchar](10) NULL,
	[ACCobroIntereses] [varchar](20) NULL,
	[VentaVerDescripcionExtra] [bit] NULL,
	[CompraVerDescripcionExtra] [bit] NULL,
	[DineroCorteSDPorFormaPago] [bit] NULL,
	[CompraConcentrarEntrada] [bit] NULL,
	[EmbarqueEliminarDetalle] [bit] NULL,
	[CRVentaDescripcionExtra] [bit] NULL,
	[CRVentaPrecio] [bit] NULL,
	[CRVentaDescuentoLinea] [bit] NULL,
	[CRAgente] [bit] NULL,
	[CRSoporte] [bit] NULL,
	[CRInvFisico] [bit] NULL,
	[CRCaja] [bit] NULL,
	[CRCxc] [bit] NULL,
	[CRSugerirDescuento] [bit] NULL,
	[CRSugerirPrecio] [bit] NULL,
	[VentaComisionVariable] [bit] NULL,
	[ContArticulo] [bit] NULL,
	[NConsumoSugerir] [bit] NULL,
	[NConsumoArtDeducible] [varchar](20) NULL,
	[NConsumoArtCoAseguro] [varchar](20) NULL,
	[NConsumoArtAjusteCobertura] [varchar](20) NULL,
	[CRTransferencias] [bit] NULL,
	[CosteoMultipleSimultaneo] [bit] NULL,
	[ExistenciaAlterna] [bit] NULL,
	[ExistenciaAlternaSerieLote] [bit] NULL,
	[Posiciones] [bit] NULL,
	[ACRetencionPF] [float] NULL,
	[VentaPerdidaAuto] [bit] NULL,
	[CompraPerdidaAuto] [bit] NULL,
	[EmbarqueDesembarquesParciales] [bit] NULL,
	[AsisteJornadasNocturnas] [bit] NULL,
	[ACReciprocidad] [float] NULL,
	[ImportacionImpuesto1Acreedor] [varchar](10) NULL,
	[ImportacionImpuesto1Concepto] [varchar](50) NULL,
	[ImportacionImpuesto2Acreedor] [varchar](10) NULL,
	[ImportacionImpuesto2Concepto] [varchar](50) NULL,
	[ACAjusteConceptoValorResidual] [varchar](50) NULL,
	[ACAjusteConceptoImpuestoAd] [varchar](50) NULL,
	[CRPrestamoCxc] [bit] NULL,
	[ACPlazoDias] [varchar](20) NULL,
	[VentaVerDatosOC] [bit] NULL,
	[CRVentaMov] [bit] NULL,
	[CRVentaMovID] [bit] NULL,
	[CRZonaImpuestoNivelCte] [bit] NULL,
	[AFDepreciacionAnualAjustada] [bit] NULL,
	[ACAcreedorEnDisposiciones] [bit] NULL,
	[DineroPagoConciliado] [bit] NULL,
	[AsisteRegistroCantidad] [bit] NULL,
	[AsisteRegistroEstadoAvance] [bit] NULL,
	[AsisteVerCostoHora] [bit] NULL,
	[AsisteCargarTiempoActConcluida] [bit] NULL,
	[AsisteCargarTiempoActCancelada] [bit] NULL,
	[DineroValidarMovImpuesto] [bit] NULL,
	[ACLineaCreditoExpress] [bit] NULL,
	[CreditoTipoAmortizacion] [varchar](20) NULL,
	[CreditoTipoTasa] [varchar](20) NULL,
	[NomDiasMes] [float] NULL,
	[NomComplemento] [bit] NULL,
	[NomComplementoTope] [money] NULL,
	[NomComplementoPremios] [float] NULL,
	[NomComplementoRetencion] [float] NULL,
	[DineroInversionIntereses] [varchar](20) NULL,
	[AsisteRecurso] [bit] NULL,
	[ProyCrearProyecto] [varchar](20) NULL,
	[ProyActividadAsunto] [varchar](20) NULL,
	[ProyFechaRevision] [varchar](20) NULL,
	[ProyDiasIndicador1] [int] NULL,
	[ProyIndicador1Liberados] [bit] NULL,
	[ProyFasesInformativas] [bit] NULL,
	[VentaProveedorRef] [bit] NULL,
	[VentaPrecioMoneda] [bit] NULL,
	[CRProcesoDistribuido] [bit] NULL,
	[CRServidorOperaciones] [varchar](50) NULL,
	[CRBaseDatosOperaciones] [varchar](50) NULL,
	[DineroAfectarComisionIVA] [bit] NULL,
	[ProyAsunto] [varchar](20) NULL,
	[PropreMVMayoreoAutomatico] [float] NULL,
	[PropreFolioUltimoAnexo] [int] NULL,
	[PropreFechaUltimoAnexo] [datetime] NULL,
	[ProprePrefijoGAmpliado] [varchar](10) NULL,
	[ProprePorcentajeDescuento1] [float] NULL,
	[ProprePorcentajeDescuento2] [float] NULL,
	[ProprePorcentajeDescuento3] [float] NULL,
	[PropreDiferenciaPrecioMayoreo] [float] NULL,
	[ProprePorcentajeMayoreo2] [float] NULL,
	[PropreMaxMargenPlazoMeses] [int] NULL,
	[PropreMaxMargenPrecMinPlazo1] [float] NULL,
	[PropreNombrePrecioIntermedio] [varchar](50) NULL,
	[MVMayoreoAutomatico] [float] NULL,
	[NomSugerirDisminuirVacaciones] [bit] NULL,
	[NomConceptoDisminuirVacaciones] [varchar](50) NULL,
	[NomAfectarDisminuirVacaciones] [bit] NULL,
	[CentroCostos2Venta] [bit] NULL,
	[CentroCostos2VentaD] [bit] NULL,
	[CentroCostos2Gasto] [bit] NULL,
	[CentroCostos2GastoD] [bit] NULL,
	[CentroCostos2Compra] [bit] NULL,
	[CentroCostos2CompraD] [bit] NULL,
	[CentroCostos3Venta] [bit] NULL,
	[CentroCostos3VentaD] [bit] NULL,
	[CentroCostos3Gasto] [bit] NULL,
	[CentroCostos3GastoD] [bit] NULL,
	[CentroCostos3Compra] [bit] NULL,
	[CentroCostos3CompraD] [bit] NULL,
	[VisualizarArrastre] [bit] NULL,
	[RHAutorizarPlazas] [bit] NULL,
	[MoverNotasAuto] [bit] NULL,
	[ACPermitirMovFechaAnterior] [bit] NULL,
	[DineroConciliarEstatus] [bit] NULL,
	[RHValidarAF] [varchar](20) NULL,
	[RHIDSE] [bit] NOT NULL,
	[RHIDSERuta] [varchar](255) NULL,
	[PermiteCompletarEnAvances] [bit] NULL,
	[ContCuentaCuadre] [varchar](20) NULL,
	[ContToleranciaCuadre] [float] NULL,
	[EmbarqueSugerirCobros] [bit] NULL,
	[ACFacturarInteresesAlCobro] [bit] NULL,
	[ACFacturarInteresesMov] [varchar](20) NULL,
	[ACFacturarInteresesConcepto] [varchar](20) NULL,
	[ACFacturarMoratoriosMov] [varchar](20) NULL,
	[ACFacturarMoratoriosConcepto] [varchar](20) NULL,
	[ACBonificarQuitasAlCobro] [bit] NULL,
	[ACBonificarQuitasMov] [varchar](20) NULL,
	[ACBonificarQuitasConcepto] [varchar](20) NULL,
	[ACBonificarQuitasMoraMov] [varchar](20) NULL,
	[ACBonificarQuitasMoraConcepto] [varchar](20) NULL,
	[VentaPerdidaAutoPorcentaje] [float] NULL,
	[CompraPerdidaAutoPorcentaje] [float] NULL,
	[ProyGenerarInvAlAfectar] [bit] NULL,
	[ProyGenerarInvPorActividad] [bit] NULL,
	[ProyGenerarInvTiempo] [int] NOT NULL,
	[ProyGenerarInvTiempoUnidad] [varchar](20) NOT NULL,
	[ToleranciaCostoInferior] [money] NULL,
	[ValidarOrdenCompraTolerancia] [bit] NULL,
	[CompraValidarPresupuestoMov] [varchar](15) NULL,
	[CompraValidarPresupuestoCC] [bit] NULL,
	[CompraValidarPresupuestoCant] [bit] NULL,
	[WMSSugerirEntarimado] [bit] NULL,
	[WMSInventarioTarimas] [bit] NULL,
	[CPComprometido2] [bit] NULL,
	[CPDevengado2] [bit] NULL,
	[CxcIntransferibleTarjeta] [bit] NULL,
	[CxcCaducidadTarjeta] [bit] NULL,
	[CxcCaducidadTarjetaFecha] [datetime] NULL,
	[CPSepararImpuestos] [bit] NULL,
	[CPClavePresupuestalImpuesto1] [varchar](50) NULL,
	[CPClavePresupuestalImpuesto2] [varchar](50) NULL,
	[CPClavePresupuestalImpuesto3] [varchar](50) NULL,
	[PersonalCostoHoraFactor] [float] NULL,
	[OrganizacionNivelDetalle] [bit] NULL,
	[CompraCostoConImpuesto] [bit] NULL,
	[VentaMovImpuestoDesdeRemision] [bit] NULL,
	[CPClavePresupuestalRetencion1] [varchar](50) NULL,
	[CPClavePresupuestalRetencion2] [varchar](50) NULL,
	[CPClavePresupuestalRetencion3] [varchar](50) NULL,
	[SAUXConsumo] [varchar](20) NULL,
	[DineroProrrateoMovImpuesto] [bit] NULL,
	[FacturaGlobalPeriodo] [bit] NULL,
	[CentroCostos2AF] [bit] NULL,
	[CentroCostos3AF] [bit] NULL,
	[AFGastoConCategoriaAF] [bit] NULL,
	[ACConsiderarInflacionIVA] [bit] NULL,
	[ACMonedaCalculoInflacionIVA] [varchar](10) NULL,
	[AFGenerarGastoCfg] [varchar](20) NULL,
	[AFGenerarGasto] [bit] NULL,
	[AjustesAutomaticosMES] [bit] NULL,
	[ReservarSolicitudesFacory] [bit] NULL,
	[ToleranciaAjuste] [float] NULL,
	[WMSAndenSurtidoContacto] [bit] NULL,
	[WMSDispararReacomodos] [bit] NULL,
	[WMSPermitirReacomodosDomicilio] [bit] NULL,
	[WMSLeerPosicionOrigen] [bit] NULL,
	[WMSRotacionArticulo] [bit] NULL,
	[WMSTipoAcomodador] [varchar](50) NULL,
	[WMSValidarZona] [bit] NULL,
	[WMSMovilTarea] [varchar](20) NULL,
	[GenerarNCAlProcesar] [bit] NULL,
	[ArtTarjetaServicio] [varchar](20) NULL,
	[HorasExtrasCompletas] [bit] NOT NULL,
	[HerramientaHorasExtra] [bit] NOT NULL,
	[CompraCostearDCporMovimiento] [bit] NOT NULL,
	[WMSReacomodoSurtido] [bit] NULL,
	[WMSPorcentajeMinimoADom] [float] NULL,
	[WMSPCKUbicacion] [bit] NULL,
	[ProyEnviarTareaGestion] [bit] NOT NULL,
	[ProyTareaEstado] [varchar](30) NULL,
	[AsistDescansolaborado] [bit] NULL,
	[AsistDiaFestivolaborado] [bit] NULL,
	[AsistDomingoLaborado] [bit] NULL,
	[IntelMESInterfase] [bit] NULL,
	[IntelMESInterfaseRuta] [varchar](200) NULL,
	[PosicionArticulo] [bit] NULL,
	[DesentarimarPedido] [bit] NULL,
	[InvRestringirArtBloqueados] [bit] NULL,
	[vicVentaCatDepRefdo] [varchar](50) NULL,
 CONSTRAINT [priEmpresaCfg] PRIMARY KEY CLUSTERED 
(
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_FormaCosteo_2]  DEFAULT ('Empresa') FOR [FormaCosteo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_TipoCosteo_3]  DEFAULT ('Promedio') FOR [TipoCosteo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_SugerirCostoDev_4]  DEFAULT ('Promedio') FOR [SugerirCostoDev]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_SugerirCostoArtServicio_5]  DEFAULT ('No') FOR [SugerirCostoArtServicio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CosteoNivelSubCuenta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [PreciosNivelSubCuenta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Tiempo Estandar') FOR [CosteoActividades]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((15.0)) FOR [ToleranciaCosto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ToleranciaTipoCosto_10]  DEFAULT ('Promedio') FOR [ToleranciaTipoCosto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ValidarMargenMinimo_11]  DEFAULT ('No') FOR [ValidarMargenMinimo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [SeriesLotesMayoreo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [Partidas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_SeriesLotesAutoCampo_14]  DEFAULT ('Numero') FOR [SeriesLotesAutoCampo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_SeriesLotesAutoOrden_15]  DEFAULT ('ASCENDENTE') FOR [SeriesLotesAutoOrden]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [SeriesImprimirMov]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [SeriesImprimirProp]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_PresentacionAutoOrden_18]  DEFAULT ('Unidades Primero') FOR [PresentacionAutoOrden]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CB]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBSerieLote]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBSubCodigos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBSubCuentas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBPreguntarCantidad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBProcesarLote]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CxcAplicaAutoOrden_25]  DEFAULT ('Fecha Vencimiento') FOR [CxcAplicaAutoOrden]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CxpAplicaAutoOrden_26]  DEFAULT ('Fecha Vencimiento') FOR [CxpAplicaAutoOrden]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [PedidosReservar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [PedidosReservarEsp]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [PedidosReservarLineaCompleta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [FacturasPendientes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CompraConsignacion_31]  DEFAULT ('No') FOR [CompraConsignacion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CompraCostoSugerido_32]  DEFAULT ('Ultimo') FOR [CompraCostoSugerido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraDescImporte]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CompraVentaSinIVA]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraVerClaveProveedor]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaDescImporte]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_VentaChecarCredito_37]  DEFAULT ('Pedido') FOR [VentaChecarCredito]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPedidosDisminuyenCredito]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_VentaBloquearMorosos_39]  DEFAULT ('No') FOR [VentaBloquearMorosos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaLiquidaIntegral]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaLiquidaIntegralCxc]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [BackOrders]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_BackOrdersNivel_43]  DEFAULT ('Cliente') FOR [BackOrdersNivel]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaSurtirDemas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaPrecios]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaIncentivos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaConfirmarServicios]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaConfirmarContratos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((15.0)) FOR [VentaContratosImpuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaServiciosRequiereTareas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaServiciosAutoOP]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaServiciosValidarID]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaDefCantidad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPaquetes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPreciosImpuestoIncluido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaComisionesCobradas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ComisionBase_60]  DEFAULT ('Venta') FOR [ComisionBase]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ComisionEspecial]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaLimiteRenFacturasVMOS]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_VentaTEEstandarTipoDias_65]  DEFAULT ('Habiles') FOR [VentaTEEstandarTipoDias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaTEEstandarRecorrerDomingo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvPaquetes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvPrestamosGarantias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvEntradasSinCosto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcProntoPagoTasaDiaria]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxpProntoPagoTasaDiaria]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxcAutoAjuste]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxcAutoAjusteMov]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Deposito Anticipado') FOR [CxcFormaCobroDA]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcDARef]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Vales') FOR [CxcFormaCobroVales]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxpProntoPago]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcProntoPago]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxpAutoAjuste]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxpAutoAjusteMov]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcControlEfectivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((50.0)) FOR [CxcTopeEfectivoAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Tarjetas') FOR [CxcFormaCobroTarjetas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxcValidarPrecioTarjetas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxpControlEfectivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((50.0)) FOR [CxpTopeEfectivoAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ChequesPendientes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [eChequesPendientes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [ChequesDirectos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaFormato_100]  DEFAULT ('999-99-999;2') FOR [CtaFormato]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ContMoneda_105]  DEFAULT ('Pesos') FOR [ContMoneda]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [ContVerificarPosicion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContVerificarIVA]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCentrosCostos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCentrosCostosVerificarPos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('INPC') FOR [ContTablaINPC]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('ISAN') FOR [TablaISAN]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoInv]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoCompras]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoGastos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoVentas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoDinero]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoCxc]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContUsoCxp]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaContabilidad_122]  DEFAULT ('A') FOR [CtaContabilidad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaActivo_123]  DEFAULT ('B') FOR [CtaActivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaPasivo_124]  DEFAULT ('H') FOR [CtaPasivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaCapital_125]  DEFAULT ('Q') FOR [CtaCapital]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaResultados_126]  DEFAULT ('R') FOR [CtaResultados]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaIngresos_127]  DEFAULT ('S') FOR [CtaIngresos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaCostoDirecto_128]  DEFAULT ('T') FOR [CtaCostoDirecto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaGastosOperacion_129]  DEFAULT ('U') FOR [CtaGastosOperacion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaOtrosGastosProductos_130]  DEFAULT ('U2') FOR [CtaOtrosGastosProductos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaImpuestos_131]  DEFAULT ('U3') FOR [CtaImpuestos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CtaOrden_132]  DEFAULT ('X') FOR [CtaOrden]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AutorizarRequisiciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueAfectarCobros]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueCobrarDemas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueModificarVencimiento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AFRevaluarDepreciacion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AFAfectarDinero]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AFMantenimientoPendiente]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Normal') FOR [NomOmision]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Quincenal') FOR [NomOmisionPeriodo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomISRSimplificado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [NomSugerirSDI]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('SDI') FOR [NomConceptoSDI]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [NomSugerirAumentoVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Aumento Vacaciones') FOR [NomConceptoAumentoVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomAfectarAumentoVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [NomModificarFechaNomina]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Vacaciones') FOR [TablaVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((5)) FOR [AsisteToleraEntrada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AsisteToleraSalida]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteGenerarFaltas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteGenerarRetardos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteGenerarHorasExtras]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('No') FOR [RHControlPlazas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [RHPlaza]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NotasBorrador]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [InvFisicoConteo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ValidarPrecios_161]  DEFAULT ('No') FOR [ValidarPrecios]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((15)) FOR [CxcPlazo1]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((30)) FOR [CxcPlazo2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((60)) FOR [CxcPlazo3]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((90)) FOR [CxcPlazo4]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_GastoAfecta_166]  DEFAULT ('Dinero') FOR [GastoAfecta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((15)) FOR [CxpPlazo1]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((30)) FOR [CxpPlazo2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((60)) FOR [CxpPlazo3]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((90)) FOR [CxpPlazo4]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CosteoSeries]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CosteoLotes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ArtRevision]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CancelarOtroMesFactura]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Cambio Mes') FOR [CancelarFactura]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Fecha Cancelacion') FOR [CancelarFacturaFecha]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CancelarFacturaFisicamente]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Pendiente') FOR [EmbarqueEstadoPendiente]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Transito') FOR [EmbarqueEstadoTransito]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [TransferirDemas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcAnticipoEfectivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxpAnticipoEfectivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [Cajeros]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_EstatusFacturaVMOS_190]  DEFAULT ('CONCLUIDO') FOR [EstatusFacturaVMOS]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsignarConsecutivoFacturaVMOS]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('No') FOR [CxpRecorrerVencimiento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('No') FOR [CxcRecorrerVencimiento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [FormaPagoRequerida]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_MonedaCosteo_200]  DEFAULT ('Pesos') FOR [MonedaCosteo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [MonedaCosteoNivelArticulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((10000)) FOR [CambioOperacionRelevante]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_CambioMonedaRelevante_203]  DEFAULT ('Dolar') FOR [CambioMonedaRelevante]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Persona Moral') FOR [CambioCategoriaRelevante1]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Persona Fisica') FOR [CambioCategoriaRelevante2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraPaquetes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueGenerarGastoTarifas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueAfectarGastoTarifas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroDesgloseObligatorio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroAfectarComision]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CancelarFacturaReservarPedido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraVerClaveIdioma]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvVerClaveIdioma]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaVerClaveIdioma]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CBDirAlmacen]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomCCRequerido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaAnticipoCredito]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAnticipoCredito]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Encabezado') FOR [DineroContX]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroControlarSobregiros]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaSugerirSaldoFavorID]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((2)) FOR [VentaCobroRedondeoDecimales]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContMovPresupuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContReservarPresupuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContValidarPresupuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Detalle') FOR [ContNivelPresupuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraProveedorRequisicion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaActualizarPrecioMoneda]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Dia') FOR [EspaciosNivel]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((60)) FOR [EspaciosMinutos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [EspaciosBloquearAnteriores]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Empresa') FOR [EspaciosCfg]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EspaciosAsignacion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostosRamas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostosValidar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_ContMoneda2_243]  DEFAULT ('(No)') FOR [ContMoneda2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [ContMoneda2Auto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraValidarArtProv]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvConfirmarSolicitudes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaServicioSituacionTipo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1500)) FOR [KmsxMes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAutoEndoso]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAutoEndosoEmpresas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAutoEndosoWS]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAutoEndosoMovs]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraAutoEndosoAutoCargos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomDiasDesfasoIncidencias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomPremios]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContMultiSucursal]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaCliente]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaProveedor]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaAlmacen]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaPersonal]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaDinero]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaFormaPago]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContCtaArticulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomValidarReferencias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraProrrateada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraProrrateadaRedondeo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroAutoFaltanteSobrante]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Efectivo') FOR [FormaPagoEfectivo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcDescContado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CxcDescContadoDias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcValidarDescPPMorosos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContPermitirCancelacionOrigen]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  CONSTRAINT [DF_EmpresaCfg_DineroFaltanteModulo_277]  DEFAULT ('AGENT') FOR [DineroFaltanteModulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroConciliarPorSucursales]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [PrecioMinimoNivelSucursal]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0.2)) FOR [ContToleraciaRedondeo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((100)) FOR [NomPorcentajeSubsidio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CRCorteCajaCentralMax]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRValidarCorteSaldoCero]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRValidarCorteZSaldoCero]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CRAfectarAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('SINAFECTAR') FOR [CREstatusSinAfectar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CRCerrarDiaAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRValidarFolio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaRestringirArtBloqueados]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraRestringirArtBloquedos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaLimiteCreditoNivelGrupo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaLimiteCreditoNivelUEN]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaAnexosAlFacturar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('No') FOR [CompraValidarPresupuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraValidarPresupuestoFR]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaEndoso]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AFSugerirSerieEntrada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPPIndirectos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Importe') FOR [EmbarqueBaseProrrateo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaRefSerieLotePedidos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [VentaArrastrarSerieLote]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Devengados') FOR [ACCobroIntereses]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaVerDescripcionExtra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraVerDescripcionExtra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroCorteSDPorFormaPago]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CompraConcentrarEntrada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueEliminarDetalle]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRVentaDescripcionExtra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRVentaPrecio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRVentaDescuentoLinea]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CRAgente]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRSoporte]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRInvFisico]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRCaja]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRCxc]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRSugerirDescuento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRSugerirPrecio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaComisionVariable]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ContArticulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NConsumoSugerir]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRTransferencias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [CosteoMultipleSimultaneo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ExistenciaAlterna]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ExistenciaAlternaSerieLote]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [Posiciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPerdidaAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraPerdidaAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueDesembarquesParciales]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteJornadasNocturnas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRPrestamoCxc]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Naturales') FOR [ACPlazoDias]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaVerDatosOC]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRVentaMov]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRVentaMovID]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRZonaImpuestoNivelCte]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AFDepreciacionAnualAjustada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACAcreedorEnDisposiciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroPagoConciliado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteRegistroCantidad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteRegistroEstadoAvance]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteVerCostoHora]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteCargarTiempoActConcluida]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteCargarTiempoActCancelada]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroValidarMovImpuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACLineaCreditoExpress]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((30)) FOR [NomDiasMes]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomComplemento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Retiro') FOR [DineroInversionIntereses]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AsisteRecurso]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Proyecto') FOR [ProyCrearProyecto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Abierto') FOR [ProyActividadAsunto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Servidor') FOR [ProyFechaRevision]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ProyIndicador1Liberados]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ProyFasesInformativas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaProveedorRef]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaPrecioMoneda]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CRProcesoDistribuido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [DineroAfectarComisionIVA]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Abierto') FOR [ProyAsunto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [NomSugerirDisminuirVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Vacaciones Disfrutadas') FOR [NomConceptoDisminuirVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [NomAfectarDisminuirVacaciones]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2Venta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2VentaD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2Gasto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2GastoD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2Compra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2CompraD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3Venta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3VentaD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3Gasto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3GastoD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3Compra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3CompraD]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VisualizarArrastre]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [RHAutorizarPlazas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [MoverNotasAuto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACPermitirMovFechaAnterior]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroConciliarEstatus]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Baja') FOR [RHValidarAF]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [RHIDSE]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [PermiteCompletarEnAvances]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [EmbarqueSugerirCobros]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACFacturarInteresesAlCobro]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACBonificarQuitasAlCobro]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ProyGenerarInvAlAfectar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ProyGenerarInvPorActividad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((7)) FOR [ProyGenerarInvTiempo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Dia') FOR [ProyGenerarInvTiempoUnidad]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ValidarOrdenCompraTolerancia]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Entrada Compra') FOR [CompraValidarPresupuestoMov]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraValidarPresupuestoCC]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraValidarPresupuestoCant]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSSugerirEntarimado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSInventarioTarimas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CPComprometido2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CPDevengado2]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcIntransferibleTarjeta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CxcCaducidadTarjeta]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CPSepararImpuestos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [OrganizacionNivelDetalle]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraCostoConImpuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [VentaMovImpuestoDesdeRemision]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('(Sol. Pendiente)') FOR [SAUXConsumo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DineroProrrateoMovImpuesto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [FacturaGlobalPeriodo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos2AF]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CentroCostos3AF]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [AFGastoConCategoriaAF]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ACConsiderarInflacionIVA]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSAndenSurtidoContacto]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSDispararReacomodos]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSPermitirReacomodosDomicilio]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [WMSLeerPosicionOrigen]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSRotacionArticulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Agente') FOR [WMSTipoAcomodador]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [WMSValidarZona]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('Flujo y Prioridad') FOR [WMSMovilTarea]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [GenerarNCAlProcesar]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [HorasExtrasCompletas]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [HerramientaHorasExtra]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [CompraCostearDCporMovimiento]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSReacomodoSurtido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [WMSPCKUbicacion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [ProyEnviarTareaGestion]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ('No comenzada') FOR [ProyTareaEstado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AsistDescansolaborado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AsistDiaFestivolaborado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [AsistDomingoLaborado]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [IntelMESInterfase]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((1)) FOR [PosicionArticulo]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [DesentarimarPedido]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT ((0)) FOR [InvRestringirArtBloqueados]
GO
ALTER TABLE [dbo].[EmpresaCfg] ADD  DEFAULT (NULL) FOR [vicVentaCatDepRefdo]
GO

INSERT INTO EmpresaCfg(Empresa,CxcMoratoriosTasa) VALUES('MAVI',0.0010)


