
GO
/****** Object:  Table [dbo].[CteEnviarA]    Script Date: 23/09/2022 07:07:51 p. m. ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CteEnviarA](
	[Cliente] [varchar](10) NOT NULL,
	[ID] [int] NOT NULL,
	--[Nombre] [varchar](100) NULL,
	--[Direccion] [varchar](100) NULL,
	--[DireccionNumero] [varchar](20) NULL,
	--[DireccionNumeroInt] [varchar](20) NULL,
	--[EntreCalles] [varchar](100) NULL,
	--[Plano] [varchar](15) NULL,
	--[Observaciones] [varchar](100) NULL,
	--[Colonia] [varchar](100) NULL,
	--[Delegacion] [varchar](100) NULL,
	--[Poblacion] [varchar](100) NULL,
	--[Estado] [varchar](30) NULL,
	--[Pais] [varchar](30) NULL,
	--[Zona] [varchar](30) NULL,
	--[Ruta] [varchar](50) NULL,
	--[CodigoPostal] [varchar](15) NULL,
	--[Telefonos] [varchar](100) NULL,
	--[Fax] [varchar](50) NULL,
	--[PedirTono] [bit] NOT NULL,
	--[Contacto1] [varchar](50) NULL,
	--[Contacto2] [varchar](50) NULL,
	--[Extencion1] [varchar](10) NULL,
	--[Extencion2] [varchar](10) NULL,
	--[eMail1] [varchar](50) NULL,
	--[eMail2] [varchar](50) NULL,
	--[eMailAuto] [bit] NULL,
	--[ZonaImpuesto] [varchar](30) NULL,
	--[Agente] [varchar](10) NULL,
	--[Clase] [varchar](15) NULL,
	--[Estatus] [varchar](15) NOT NULL,
	--[UltimoCambio] [datetime] NULL,
	--[Alta] [datetime] NULL,
	--[Mensaje] [varchar](50) NULL,
	--[FormaEnvio] [varchar](50) NULL,
	--[ListaPreciosEsp] [varchar](20) NULL,
	--[Proyecto] [varchar](50) NULL,
	--[Condicion] [varchar](50) NULL,
	--[Descuento] [varchar](30) NULL,
	--[ModificarVencimiento] [varchar](10) NULL,
	[Categoria] [varchar](50) NULL,
	--[Grupo] [varchar](50) NULL,
	--[Familia] [varchar](50) NULL,
	--[TieneMovimientos] [bit] NULL,
	--[Contrasena] [varchar](20) NULL,
	--[Clave] [varchar](10) NULL,
	--[SucursalEmpresa] [int] NULL,
	--[PersonalCobrador] [varchar](10) NULL,
	--[Almacen] [varchar](10) NULL,
	--[AlmacenVtasConsignacion] [varchar](10) NULL,
	--[wMovVentas] [varchar](20) NULL,
	--[Logico1] [bit] NOT NULL,
	--[Logico2] [bit] NOT NULL,
	--[Logico3] [bit] NOT NULL,
	--[TipoEmpaque] [varchar](50) NULL,
	--[Unidad] [varchar](50) NULL,
	--[Cadena] [varchar](50) NULL,
	--[Encargado] [varchar](100) NULL,
	--[GLN] [varchar](50) NULL,
	--[UENMAVI] [int] NULL,
	[SeccionCobranzaMAVI] [varchar](50) NULL
	--[RutaCobranzaMAVI] [varchar](50) NULL,
	--[Cargo] [varchar](50) NULL,
	--[ClaveInst] [varchar](30) NULL,
	--[Municipio] [varchar](50) NULL,
	--[Nomina] [varchar](30) NULL,
	--[Vale] [varchar](10) NULL,
	--[Puesto] [varchar](100) NULL,
	--[RFCInstitucion] [varchar](50) NULL,
	--[SeEnviaBuroCreditoMavi] [bit] NULL,
	--[NivelCobranzaMAVI] [varchar](100) NULL,
	--[CobraAval] [bit] NULL,
	--[AvalResponsable] [int] NULL,
	--[UsuarioModif] [varchar](10) NULL,
	--[MapaLatitud] [float] NULL,
	--[MapaLongitud] [float] NULL,
	--[MapaPrecision] [int] NULL,
	--[FiscalRegimen] [varchar](30) NULL,
	--[FueraLinea] [bit] NULL,
	--[FiscalZona] [varchar](30) NULL,
	--[GUID] [varchar](50) NOT NULL,
	--[TipoProceso] [varchar](50) NULL,
	--[TipoComite] [varchar](50) NULL,
	--[IdContabilidad] [varchar](6) NULL,
	--[ClaveEntidad] [varchar](10) NULL,
	--[Ambito] [varchar](50) NULL,
	--[EntidadIdContabilidad] [varchar](6) NULL,
	--[FormaPago] [varchar](50) NULL,
	--[Cuenta] [varchar](20) NULL,
	--[InstitucionFin] [varchar](20) NULL,
	--[MapaUbicacion] [varchar](100) NULL,
	--[CRMObjectId] [uniqueidentifier] NULL,
	--[CRMLastUpdate] [datetime] NULL,
	--[SerieMonedero] [varchar](20) NULL,
	--[NumRegIdTrib] [varchar](40) NULL,
	--[LeyendasFiscalesDisposicion] [varchar](250) NULL,
	--[LeyendasFiscalesNorma] [varchar](50) NULL,
	--[LeyendasFiscalesLeyenda] [varchar](max) NULL,
	--[DireccionMax] [text] NULL,
	--[CodigoRecomendador] [varchar](15) NULL,
	--[CodigoRecomendado] [varchar](15) NULL,
	--[MonederoRecomAplicado] [bit] NULL,
 CONSTRAINT [priCteEnviarA] PRIMARY KEY CLUSTERED 
(
	[Cliente] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]-- TEXTIMAGE_ON [PRIMARY]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [ID]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [PedirTono]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [eMailAuto]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [TieneMovimientos]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [Logico1]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [Logico2]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [Logico3]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT ((0)) FOR [FueraLinea]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT (newid()) FOR [GUID]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  DEFAULT (getdate()) FOR [CRMLastUpdate]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  CONSTRAINT [DF_CteEnviarA_CodigoRecomendador]  DEFAULT ('N/A') FOR [CodigoRecomendador]
--GO
--ALTER TABLE [dbo].[CteEnviarA] ADD  CONSTRAINT [DF_CteEnviarA_MonederoRecomAplicado]  DEFAULT ((0)) FOR [MonederoRecomAplicado]
--GO
--EXEC sys.sp_addextendedproperty @name=N'SerieMonedero', @value=N'Campo encargado de almacenar el numero de monedero virtual del cliente Referencia (TarjetaMonederoMAVI)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CteEnviarA', @level2type=N'COLUMN',@level2name=N'SerieMonedero'
--GO
--EXEC sys.sp_addextendedproperty @name=N'CodigoRecomendador', @value=N'Se guarda el CodigoRecomendador que pertenece al ciente en su respectivo canal de ventas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CteEnviarA', @level2type=N'COLUMN',@level2name=N'CodigoRecomendador'
--GO
--EXEC sys.sp_addextendedproperty @name=N'CodigoRecomendado', @value=N'Se guarda el CodigoRecomendador de quien recomendo al cliente en el respectivo canal de venta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CteEnviarA', @level2type=N'COLUMN',@level2name=N'CodigoRecomendado'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MonederoRecomAplicado', @value=N'Campo para identificar clientes que se genero un monedero x recomendado, por su primer compra en el canal de venta correspondiente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CteEnviarA', @level2type=N'COLUMN',@level2name=N'MonederoRecomAplicado'
--GO
