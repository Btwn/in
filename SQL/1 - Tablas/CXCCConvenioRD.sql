
GO
/****** Object:  Table [dbo].[CXCCConvenioRD]    Script Date: 23/09/2022 08:00:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CXCCConvenioRD](
	[IdConvenioRD] [int] /*IDENTITY(1,1) */NOT NULL,
	[Cliente] [varchar](10) NULL,
	[Agente] [varchar](10) NULL,
	[FechaAlta] [datetime] NULL,
	[Estatus] [varchar](30) NULL,
	[Categoria] [varchar](50) NULL,
	[Folio] [int] NULL,
	[SaldoCapital] [money] NULL,
	[Moratorios] [money] NULL,
	[AdeudoTotal] [money] NULL,
	[Division] [varchar](40) NULL,
	[Periodicidad] [varchar](15) NULL,
	[NumPagos] [int] NULL,
	[PorcApertura] [decimal](18, 2) NULL,
	[PorcBonifCapital] [int] NULL,
	[PorcBonifIM] [int] NULL,
	[DVMax] [int] NULL,
	[DIMax] [int] NULL,
	[CteFolio] [varchar](10) NULL,
	[FacturacionMin] [datetime] NULL,
	[ImporteLiquida] [money] NULL,
	[ImporteApertura] [money] NULL,
	[ImportePago] [money] NULL,
	[FechaFin] [datetime] NULL,
	[FechaEstatus] [datetime] NULL,
	[MovID] [varchar](20) NULL,
	[CanalVenta] [int] NULL,
	[TipoConvenio] [varchar](20) NULL,
	[ImporteSaldoCapitalBonif] [money] NULL,
	[Telefono] [bigint] NOT NULL,
	[TelefonoRevisado] [bit] NULL,
	[Plazo] [varchar](30) NULL,
	[AutorizacionEspecial] [bit] NULL,
 CONSTRAINT [PK_CXCCConvenioRD_IdConvenioRD] PRIMARY KEY CLUSTERED 
(
	[IdConvenioRD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CXCCConvenioRD] ADD  CONSTRAINT [DF_CXCCConvenioRD_Telefono]  DEFAULT ((0)) FOR [Telefono]
GO
--EXEC sys.sp_addextendedproperty @name=N'IdConvenioRD', @value=N'Identificador del Convenio RD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'IdConvenioRD'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Cliente', @value=N'Cuenta del Cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Cliente'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Agente', @value=N'Nómina del Agente que apertura el Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Agente'
--GO
--EXEC sys.sp_addextendedproperty @name=N'FechaAlta', @value=N'Fecha de Alta del Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'FechaAlta'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Estatus', @value=N'Estatus del Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Estatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Categoria', @value=N'Categoría de Venta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Categoria'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Folio', @value=N'Folio del Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Folio'
--GO
--EXEC sys.sp_addextendedproperty @name=N'SaldoCapital', @value=N'Saldo Capital antes de la Reestructura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'SaldoCapital'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Moratorios', @value=N'Interés Moratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Moratorios'
--GO
--EXEC sys.sp_addextendedproperty @name=N'AdeudoTotal', @value=N'Adeudo Total' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'AdeudoTotal'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Division', @value=N'Division de Cobranza' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Division'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Periodicidad', @value=N'Periodicidad de Pago' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Periodicidad'
--GO
--EXEC sys.sp_addextendedproperty @name=N'NumPagos', @value=N'Número de Pagos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'NumPagos'
--GO
--EXEC sys.sp_addextendedproperty @name=N'PorcApertura', @value=N'Porcentaje de Apertura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'PorcApertura'
--GO
--EXEC sys.sp_addextendedproperty @name=N'PorcBonifCapital', @value=N'Porcentaje de Bonificación Capital' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'PorcBonifCapital'
--GO
--EXEC sys.sp_addextendedproperty @name=N'PorcBonifIM', @value=N'Porcentaje de Interés Moratorio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'PorcBonifIM'
--GO
--EXEC sys.sp_addextendedproperty @name=N'DVMax', @value=N'Máximo de Dias Vencidos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'DVMax'
--GO
--EXEC sys.sp_addextendedproperty @name=N'DIMax', @value=N'Máximo de Días Inactivos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'DIMax'
--GO
--EXEC sys.sp_addextendedproperty @name=N'CteFolio', @value=N'Cuenta del Cliente al que se generó un Folio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'CteFolio'
--GO
--EXEC sys.sp_addextendedproperty @name=N'FacturacionMin', @value=N'Fecha de Facturación más antigua' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'FacturacionMin'
--GO
--EXEC sys.sp_addextendedproperty @name=N'ImporteLiquida', @value=N'Importe a liquidar Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'ImporteLiquida'
--GO
--EXEC sys.sp_addextendedproperty @name=N'ImporteApertura', @value=N'Importe de Apertura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'ImporteApertura'
--GO
--EXEC sys.sp_addextendedproperty @name=N'ImportePago', @value=N'Importe de los Pagos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'ImportePago'
--GO
--EXEC sys.sp_addextendedproperty @name=N'FechaFin', @value=N'Fecha Fin del Convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'FechaFin'
--GO
--EXEC sys.sp_addextendedproperty @name=N'FechaEstatus', @value=N'Campo para saber la fecha en la que se actualizó el estatus del convenio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'FechaEstatus'
--GO
--EXEC sys.sp_addextendedproperty @name=N'MovID', @value=N'Campo para saber el movimiento factura al cual pertenece el ConvenioRD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'MovID'
--GO
--EXEC sys.sp_addextendedproperty @name=N'TipoConvenio', @value=N'Campo que especifica el tipo de convenio guardado.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'TipoConvenio'
--GO
--EXEC sys.sp_addextendedproperty @name=N'ImporteSaldoCapitalBonif', @value=N'Campo donde se guarda el importe del saldo capital bonificado = SaldoCapital*(PorcBonifCapital/100).' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'ImporteSaldoCapitalBonif'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Telefono', @value=N'Campo Telefono de contacto del cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Telefono'
--GO
--EXEC sys.sp_addextendedproperty @name=N'TelefonoRevisado', @value=N'Bandera que se mantiene nula mientras el registro no sea tomado por el SP_RM1138ActualizacionTelesJOB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'TelefonoRevisado'
--GO
--EXEC sys.sp_addextendedproperty @name=N'Plazo', @value=N'Campo que contiene el plazo para el convenio.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'Plazo'
--GO
--EXEC sys.sp_addextendedproperty @name=N'AutorizacionEspecial', @value=N'Bandera de establece si se aplico autorizacion para modificar el porcentaje de apertura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD', @level2type=N'COLUMN',@level2name=N'AutorizacionEspecial'
--GO
--EXEC sys.sp_addextendedproperty @name=N'CXCCConvenioRD', @value=N'Almacena los Convenios de Reestructuración de Deuda' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CXCCConvenioRD'
--GO
