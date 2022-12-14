
GO
/****** Object:  Table [dbo].[VentaD]    Script Date: 23/09/2022 09:17:40 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaD](
	[ID] [int] NOT NULL,
	[Renglon] [float] NOT NULL,
	[RenglonSub] [int] NOT NULL,
	[RenglonID] [int] NULL,
	[RenglonTipo] [char](1) NULL,
	[Cantidad] [float] NULL,
	[Almacen] [varchar](10) NULL,
	[EnviarA] [int] NULL,
	[Codigo] [varchar](30) NULL,
	[Articulo] [varchar](20) NOT NULL,
	[SubCuenta] [varchar](50) NULL,
	[Precio] [float] NULL,
	[PrecioSugerido] [float] NULL,
	[DescuentoTipo] [char](1) NULL,
	[DescuentoLinea] [float] NULL,
	[DescuentoImporte] [money] NULL,
	[Impuesto1] [float] NULL,
	[Impuesto2] [float] NULL,
	[Impuesto3] [float] NULL,
	[DescripcionExtra] [varchar](100) NULL,
	[Costo] [money] NULL,
	[CostoActividad] [money] NULL,
	[Paquete] [int] NULL,
	[ContUso] [varchar](20) NULL,
	[Comision] [money] NULL,
	[Aplica] [varchar](20) NULL,
	[AplicaID] [varchar](20) NULL,
	[CantidadPendiente] [float] NULL,
	[CantidadReservada] [float] NULL,
	[CantidadCancelada] [float] NULL,
	[CantidadOrdenada] [float] NULL,
	[CantidadEmbarcada] [float] NULL,
	[CantidadA] [float] NULL,
	[Unidad] [varchar](50) NULL,
	[Factor] [float] NULL,
	[CantidadInventario] [float] NULL,
	[SustitutoArticulo] [varchar](20) NULL,
	[SustitutoSubCuenta] [varchar](50) NULL,
	[FechaRequerida] [datetime] NULL,
	[HoraRequerida] [varchar](5) NULL,
	[Instruccion] [varchar](50) NULL,
	[Agente] [varchar](10) NULL,
	[Departamento] [int] NULL,
	[UltimoReservadoCantidad] [float] NULL,
	[UltimoReservadoFecha] [datetime] NULL,
	[Sucursal] [int] NOT NULL,
	[PoliticaPrecios] [varchar](255) NULL,
	[SucursalOrigen] [int] NULL,
	[AutoLocalidad] [varchar](5) NULL,
	[UEN] [int] NULL,
	[Espacio] [varchar](10) NULL,
	[CantidadAlterna] [float] NULL,
	[PrecioMoneda] [varchar](10) NULL,
	[PrecioTipoCambio] [float] NULL,
	[Estado] [varchar](30) NULL,
	[ServicioNumero] [float] NULL,
	[AgentesAsignados] [int] NULL,
	[AFArticulo] [varchar](20) NULL,
	[AFSerie] [varchar](50) NULL,
	[ExcluirPlaneacion] [bit] NULL,
	[Anexo] [bit] NULL,
	[AjusteCosteo] [money] NULL,
	[CostoUEPS] [money] NULL,
	[CostoPEPS] [money] NULL,
	[UltimoCosto] [money] NULL,
	[PrecioLista] [money] NULL,
	[DepartamentoDetallista] [int] NULL,
	[PresupuestoEsp] [bit] NULL,
	[Posicion] [varchar](10) NULL,
	[Puntos] [money] NULL,
	[CantidadObsequio] [float] NULL,
	[OfertaID] [int] NULL,
	[ProveedorRef] [varchar](10) NULL,
	[TransferirA] [varchar](10) NULL,
	[ArtEstatus] [varchar](15) NULL,
	[ArtSituacion] [varchar](50) NULL,
	[ExcluirISAN] [bit] NULL,
	[Financiamiento] [float] NULL,
	[PropreListaID] [int] NULL,
	[IDCopiaMAVI] [int] NULL,
	[UsuarioDescuento] [varchar](30) NULL,
	[PrecioAnterior] [money] NULL,
	[MonxRedN1] [float] NULL,
	[MonxRedN2] [float] NULL,
	[MonxRedN3] [float] NULL,
	[MonxRedN4] [float] NULL,
	[MonxRedN5] [float] NULL,
	[MonxRedApli] [bit] NOT NULL,
	[ContUso2] [varchar](20) NULL,
	[ContUso3] [varchar](20) NULL,
	[CostoEstandar] [money] NULL,
	[Tarima] [varchar](20) NULL,
	[OrdenCompra] [varchar](20) NULL,
	[ABC] [varchar](50) NULL,
	[TipoImpuesto1] [varchar](10) NULL,
	[TipoImpuesto2] [varchar](10) NULL,
	[TipoImpuesto3] [varchar](10) NULL,
	[CostoPromedio] [money] NULL,
	[CostoReposicion] [money] NULL,
	[TipoComprobante]  AS (CONVERT([varchar](20),NULL)),
	[SustentoComprobante]  AS (CONVERT([varchar](20),NULL)),
	[TipoIdentificacion]  AS (CONVERT([varchar](20),NULL)),
	[DerechoDevolucion]  AS (CONVERT([bit],(0))),
	[Establecimiento]  AS (CONVERT([varchar](20),NULL)),
	[PuntoEmision]  AS (CONVERT([varchar](50),NULL)),
	[SecuencialSRI]  AS (CONVERT([varchar](50),NULL)),
	[AutorizacionSRI]  AS (CONVERT([varchar](50),NULL)),
	[VigenteA]  AS (CONVERT([datetime],NULL)),
	[SecuenciaRetencion]  AS (CONVERT([varchar](50),NULL)),
	[Comprobante]  AS (CONVERT([bit],(0))),
	[FechaContableMov]  AS (CONVERT([datetime],NULL)),
	[TipoRetencion1] [varchar](10) NULL,
	[TipoRetencion2] [varchar](10) NULL,
	[TipoRetencion3] [varchar](10) NULL,
	[Retencion1] [float] NULL,
	[Retencion2] [float] NULL,
	[Retencion3] [float] NULL,
	[AnticipoFacturado] [bit] NULL,
	[AnticipoMoneda] [varchar](10) NULL,
	[AnticipoTipoCambio] [float] NULL,
	[AnticipoRetencion] [float] NULL,
	[AplicaRenglon] [float] NULL,
	[RecargaTelefono] [varchar](10) NULL,
	[RecargaConfirmarTelefono] [varchar](10) NULL,
	[POSDesGlobal] [float] NULL,
	[POSDesLinea] [float] NULL,
	[ProcesadoID] [int] NULL,
	[LDICuenta] [varchar](50) NULL,
	[LDIReferencia] [varchar](50) NULL,
	[OfertaIDP1] [int] NULL,
	[OfertaIDP2] [int] NULL,
	[OfertaIDP3] [int] NULL,
	[OfertaIDG1] [int] NULL,
	[OfertaIDG2] [int] NULL,
	[OfertaIDG3] [int] NULL,
	[DescuentoP1] [float] NULL,
	[DescuentoP2] [float] NULL,
	[DescuentoP3] [float] NULL,
	[DescuentoG1] [float] NULL,
	[DescuentoG2] [float] NULL,
	[DescuentoG3] [float] NULL,
	[PorcentajeUtilidad] [float] NULL,
	[EmidaTelefono] [varchar](10) NULL,
	[EmidaConfirmarTelefono] [varchar](10) NULL,
	[MesLanzamiento] [varchar](100) NULL,
	[CRMObjectId] [uniqueidentifier] NULL,
	[ArtCambioClave] [varchar](50) NULL,
	[IdCampanaPromocion] [int] NULL,
	[Padre] [varchar](250) NULL,
	[TipoPromocion] [int] NULL,
 CONSTRAINT [priVentaD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[Renglon] ASC,
	[RenglonSub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [RenglonSub]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ('N') FOR [RenglonTipo]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ('%') FOR [DescuentoTipo]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((1.0)) FOR [Factor]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [Sucursal]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [SucursalOrigen]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [ExcluirPlaneacion]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [Anexo]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [PresupuestoEsp]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [ExcluirISAN]
GO
ALTER TABLE [dbo].[VentaD] ADD  CONSTRAINT [DF_VentaD_MonxRedApli]  DEFAULT ((0)) FOR [MonxRedApli]
GO
ALTER TABLE [dbo].[VentaD] ADD  DEFAULT ((0)) FOR [AnticipoFacturado]
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedN1', @value=N'Se registra el monto de monedero aplicado por dicho articulo al nivel 1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedN1'
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedN2', @value=N'Se registra el monto de monedero aplicado por dicho articulo al nivel 2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedN2'
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedN3', @value=N'Se registra el monto de monedero aplicado por dicho articulo al nuivel 3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedN3'
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedN4', @value=N'Se registra el monto de monedero aplicado por dicho articulo al nivel 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedN4'
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedN5', @value=N'Se registra el monto de monedero aplicado por dicho articulo al nivel 5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedN5'
GO
EXEC sys.sp_addextendedproperty @name=N'MonxRedApli', @value=N'Guardara el registro de si a dicha factura ya se Aplico monedero,  1=Si,  0=No' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'MonxRedApli'
GO
EXEC sys.sp_addextendedproperty @name=N'IdCampanaPromocion', @value=N'Campo para guardar el id de la promocion que se aplico (en caso de que el artículo tenga una promoción)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'IdCampanaPromocion'
GO
EXEC sys.sp_addextendedproperty @name=N'Padre', @value=N'Se cambia el tamaño del campo debido a que guardara x numero de padres' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'Padre'
GO
EXEC sys.sp_addextendedproperty @name=N'TipoPromocion', @value=N'Campo encargado de guardar el tipo de promocion que entro el articulo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VentaD', @level2type=N'COLUMN',@level2name=N'TipoPromocion'
GO
