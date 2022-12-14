
GO
/****** Object:  StoredProcedure [dbo].[SpCXCPreliminarDoctos]    Script Date: 23/09/2022 02:48:20 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
--====================================================================================================================================================================
--NOMBRE      : SpCXCPreliminarDoctos
--AUTOR      		: Jesus Del Toro Andrade
--FECHA CREACIÓN	: 02/07/2018
--DESARROLLO		: Preliminar de Cobro. 
--MODULO			: CXC
--DESCRIPCIÓN		: Procedimiento que retorna información de documentos padres de un cliente.
--EJEMPLO			: EXEC SpCXCPreliminarDoctos 'IntelisisTmp', 'C01431120', 1
--====================================================================================================================================================================
-- FECHA Y AUTOR MODIFICACION:    26/04/2019 Por: Jesus del Toro Andrade
-- Se agrega cheques devueltos
--====================================================================================================================================================================
-- FECHA Y AUTOR MODIFICACION:    11/09/2019 Por: Jesus del Toro Andrade
-- Se consideran los pagos a moratorios para la fecha de ultimo abono
--====================================================================================================================================================================
CREATE PROCEDURE [dbo].[SpCXCPreliminarDoctos] @BaseDatos varchar(20),
@Cliente varchar(10),
@Opcion int,
@CteFinal varchar(10) = NULL
AS
BEGIN
  SET ARITHABORT ON;

  DECLARE @SQL nvarchar(max)

  IF @Opcion = 1 --	Informacion de los movimientos
  BEGIN
    DECLARE @DVConf int,
            @DIConf int,
            @DVBonif int

    /*	--	TABLA PARA MOVIMIENTOS DEL CLIENTE	--	*/
    IF ISNULL(OBJECT_ID('Tempdb..#MovCxcTemp'), 0) != 0
      DROP TABLE #MovCxcTemp
    SELECT
      Cxc.Cliente,
      Cxc.ID,
      Cxc.Mov,
      Cxc.MovID,
      Cxc.Vencimiento,
      Cxc.Importe,
      Cxc.Impuestos,
      Cxc.Saldo,
      Cxc.Estatus,
      Cxc.PadreMAVI,
      Cxc.PadreIDMAVI,
      Cxc.ImpApoyoDima,
      Cxc.SaldoApoyoDima,
      Cxc.CobroCteFinal,
      Cxc.ClienteEnviarA,
      Cxc.SucursalOrigen,
      Cxc.Concepto,
      Cxc.Empresa,
      Cxc.FechaEmision,
      Cxc.Condicion,
      ISNULL(Cxc.CteFinal, '0') CteFinal,
      Cxc.BonifCC INTO #MovCxcTemp
    FROM Cxc WITH (NOLOCK)
    JOIN MovTipo MT WITH (NOLOCK)
      ON MT.Mov = Cxc.Mov
      AND MT.Modulo = 'CXC'
      AND MT.Clave IN ('CXC.F', 'CXC.CAP', 'CXC.CA', 'CXC.C', 'CXC.AE', 'CXC.D', 'CXC.CD')
    WHERE Cxc.Cliente = @Cliente
    AND Cxc.Estatus IN ('PENDIENTE', 'CONCLUIDO')

    IF NOT EXISTS (SELECT
        object_id
      FROM tempdb.sys.indexes
      WHERE name = 'idx_MovCxcTemp_PadreMAVI'
      AND OBJECT_ID('Tempdb..#MovCxcTemp') = OBJECT_ID)
      CREATE NONCLUSTERED INDEX idx_MovCxcTemp_PadreMAVI ON #MovCxcTemp (PadreMAVI)
      INCLUDE (Cliente, ID, Mov, MovID, Vencimiento, Importe, Impuestos, Saldo, Estatus, PadreIDMAVI, ImpApoyoDima, SaldoApoyoDima, CobroCteFinal, ClienteEnviarA, SucursalOrigen, Concepto, Empresa, FechaEmision, Condicion, CteFinal)

    IF NOT EXISTS (SELECT
        object_id
      FROM tempdb.sys.indexes
      WHERE name = 'idx_MovCxcTemp_Mov_MovID'
      AND OBJECT_ID('Tempdb..#MovCxcTemp') = OBJECT_ID)
      CREATE CLUSTERED INDEX idx_MovCxcTemp_Mov_MovID ON #MovCxcTemp (Mov, MovID)

    /*	--	TABLA PARA DOCUMENTOS HIJOS	--	*/
    IF ISNULL(OBJECT_ID('Tempdb..#DoctosHijos'), 0) != 0
      DROP TABLE #DoctosHijos
    CREATE TABLE #DoctosHijos (
      Cliente varchar(10) NULL,
      ID int NULL,
      Mov varchar(20) NULL,
      MovID varchar(20) NULL,
      Vencimiento datetime NULL,
      ImporteTotal money NULL,
      Saldo money NULL,
      Moratorios money NULL,
      Estatus varchar(15) NULL,
      DiasVencidos float NULL,
      PadreMAVI varchar(20) NULL,
      PadreIDMAVI varchar(20) NULL,
      BonifPP money NULL,
      BonifCC money NULL,
      ImpApoyoDima money NULL,
      SaldoApoyoDima money NULL,
      CobroCteFinal int NULL,
      ClienteEnviarA int NULL,
      SucursalOrigen int NULL,
      Concepto varchar(50) NULL,
      Empresa varchar(5) NULL,
      FechaEmision datetime NULL,
      Condicion varchar(50) NULL,
      CteFinal varchar(10) NULL
    )

    /*	--	TABLA PARA DOCUMENTOS PADRES	--	*/
    IF ISNULL(OBJECT_ID('Tempdb..#DoctosPadres'), 0) != 0
      DROP TABLE #DoctosPadres
    CREATE TABLE #DoctosPadres (
      Empresa varchar(5) NULL,
      Cliente varchar(10) NULL,
      ClienteEnviarA int NULL,
      Categoria varchar(50) NULL,
      ID int NULL,
      PadreMAVI varchar(20) NULL,
      PadreIDMAVI varchar(20) NULL,
      FechaEmision datetime NULL,
      Condicion varchar(50) NULL,
      PrimerVencimiento datetime NULL,
      FormaPagoTipo varchar(50) NULL,
      DAPeriodo char(15) NULL,
      DANumeroDocumentos int NULL,
      DescripcionArt varchar(100) NULL,
      ImporteVta money NULL,
      Enganche money NULL,
      Monedero money NULL,
      SucursalOrigen int NULL,
      CobroXPolitica varchar(2) NULL DEFAULT 'NO',
      UltimoPago datetime NULL,
      DiasInactivos int NULL,
      CteFinal varchar(10) NULL,
      NomCteFinal varchar(302) NULL,
      RfcCteFinal varchar(15) NULL,
      IdVta int NULL,
      DVCxcMavi int NULL,
      DICxcMavi int NULL
    )

    /*	--	CONSULTA DE DOCUMENTOS HIJOS	--	*/
    INSERT INTO #DoctosHijos (Cliente, ID, Mov, MovID, Vencimiento, ImporteTotal, Saldo, Estatus, DiasVencidos, PadreMAVI, PadreIDMAVI, BonifPP, BonifCC,
    ImpApoyoDima, SaldoApoyoDima, CobroCteFinal, ClienteEnviarA, SucursalOrigen, Concepto, Empresa, FechaEmision, Condicion, CteFinal)
      SELECT
        CP.Cliente,
        CP.ID,
        CP.Mov,
        CP.MovID,
        CP.Vencimiento,
        ImporteTotal = ISNULL(CP.Importe, 0) + ISNULL(CP.Impuestos, 0),
        Saldo = CP.Saldo,
        CP.Estatus,
        DiasVencidos =
                      CASE
                        WHEN CP.Estatus = 'PENDIENTE' THEN DATEDIFF(DAY, CP.Vencimiento, GETDATE())
                        ELSE 0
                      END,
        CP.PadreMAVI,
        CP.PadreIDMAVI,
        BonifPP = CP.Saldo,
        BonifCC = ISNULL(CP.BonifCC, 0),
        CP.ImpApoyoDima,
        CP.SaldoApoyoDima,
        CP.CobroCteFinal,
        CP.ClienteEnviarA,
        CP.SucursalOrigen,
        CP.Concepto,
        CP.Empresa,
        CP.FechaEmision,
        CP.Condicion,
        CP.CteFinal
      FROM #MovCxcTemp CP
      JOIN MovTipo MT WITH (NOLOCK)
        ON MT.Mov = CP.PadreMAVI
        AND MT.Modulo = 'CXC'
        AND MT.Clave IN ('CXC.F', 'CXC.CAP', 'CXC.CA', 'CXC.CD')
      WHERE (CP.Estatus = 'PENDIENTE'
      OR (CP.Estatus = 'CONCLUIDO'
      AND ISNULL(CP.CobroCteFinal, 0) IN (1, 2, 4)))

    IF ISNULL(@CteFinal, '0') != '0'
      DELETE #DoctosHijos
      WHERE CteFinal != ISNULL(@CteFinal, '0')

    IF EXISTS (SELECT TOP 1
        ID
      FROM #DoctosHijos)
    BEGIN	--EXISTS(SELECT TOP 1 ID FROM #DoctosHijos)
      IF EXISTS (SELECT TOP 1
          ID
        FROM #MovCxcTemp
        WHERE Mov LIKE 'Nota Cargo%'
        AND Concepto LIKE 'CANC COBRO%')
        DELETE #MovCxcTemp
        WHERE ID IN (SELECT
            CobroId = CAST(CASE
              WHEN CHARINDEX('_', REVERSE(M.Valor)) > 0 THEN RIGHT(M.Valor, (CHARINDEX('_', REVERSE(M.Valor))) - 1)
              ELSE NULL
            END AS int)
          FROM MovCampoExtra M WITH (NOLOCK)
          JOIN #MovCxcTemp CC
            ON M.ID = CC.ID
            AND M.CampoExtra IN ('NC_COBRO', 'NCV_COBRO', 'NCM_COBRO')
            AND M.Modulo = 'CXC'
            AND ISNULL(M.Valor, '') != ''
            AND CC.Estatus IN ('CONCLUIDO', 'PENDIENTE')
            AND CC.Mov LIKE 'Nota Cargo%'
            AND CC.Concepto LIKE 'CANC COBRO%')

      UPDATE DH
      SET DH.Moratorios = ROUND(dbo.Fn_MaviCalculaMoratorios(DH.ID), 2)
      FROM #DoctosHijos DH
      WHERE DH.Estatus = 'PENDIENTE'
      AND DH.DiasVencidos > 0

      /*	--	CALCULAR LA BONIFICACION CONSIDERANDO EL MAXIMO DE DIAS VENCIDOS EN CASO DE APLICAR POR EXTENDIDA	--	*/
      IF @BaseDatos != 'MAVICOB'
      BEGIN
		PRINT('Irrelevante para el ejemplo')
        --SELECT
        --  @DVBonif = MAX(MaxDV)
        --FROM MaviBonificacionConVencimiento WITH (NOLOCK)

        --UPDATE DH
        --SET DH.BonifPP = dbo.FN_MAVIRM0906CalculaBonifCC(DH.PadreMAVI, DH.PadreIDMAVI, 'Pago Puntual', DH.Mov, DH.MovID)
        --FROM #DoctosHijos DH
        --JOIN (SELECT
        --  Movimiento
        --FROM MaviBonificacionMoV WITH (NOLOCK)
        --GROUP BY Movimiento) MB
        --  ON MB.Movimiento = DH.PadreMAVI
        --WHERE DH.Estatus = 'PENDIENTE'
        --AND DH.DiasVencidos <= @DVBonif
      END

      /*	--	CONSULTA DE DOCUMENTOS PADRES	--	*/
      INSERT INTO #DoctosPadres (Empresa, ID, Cliente, FechaEmision, Condicion, PrimerVencimiento, ImporteVta, SucursalOrigen, ClienteEnviarA,
      DescripcionArt, PadreMAVI, PadreIDMAVI, CteFinal)
        SELECT
          C.Empresa,
          C.ID,
          C.Cliente,
          C.FechaEmision,
          C.Condicion,
          C.Vencimiento,
          ImporteVta = C.Importe + C.Impuestos,
          C.SucursalOrigen,
          C.ClienteEnviarA,
          C.Concepto,
          C.PadreMAVI,
          C.PadreIDMAVI,
          C.CteFinal
        FROM (SELECT
          DH.PadreMAVI,
          DH.PadreIDMAVI
        FROM #DoctosHijos DH
        GROUP BY DH.PadreMAVI,
                 DH.PadreIDMAVI) CP
        JOIN #MovCxcTemp C
          ON CP.PadreMAVI = C.Mov
          AND CP.PadreIDMAVI = C.MovID

      UPDATE CP
      SET CP.DVCxcMavi = CM.DiasVencActMAVI,
          CP.DICxcMavi = CM.DiasInacActMAVI
      FROM #DoctosPadres CP
      JOIN CxcMavi CM WITH (NOLOCK)
        ON CM.ID = CP.ID

      SELECT
        @DVConf = MIN(Conf.DV),
        @DIConf = MIN(Conf.DI)
      FROM TcIRM0906_ConfigDivisionYParam Conf WITH (NOLOCK)

      UPDATE DP
      SET DP.CobroXPolitica = dbo.FN_MAVIRM0906CobxPol(DP.ID)
      FROM #DoctosPadres DP
      WHERE DP.DVCxcMavi > @DVConf
      OR DP.DICxcMavi > @DIConf

      /*	--	CONSULTA Y TABLA PARA ULTIMO PAGO	--	*/
      IF ISNULL(OBJECT_ID('tempdb..#MaviUltimoPagoTemp'), 0) != 0
        DROP TABLE #MaviUltimoPagoTemp
      SELECT
        PadreMAVI,
        PadreIDMAVI,
        MAX(MaviUltimoPago) MaviUltimoPago INTO #MaviUltimoPagoTemp
      FROM (SELECT
        CP.PadreMAVI,
        CP.PadreIDMAVI,
        MAX(Cob.FechaEmision) MaviUltimoPago
      FROM #MovCxcTemp Cob
      JOIN MovTipo MT WITH (NOLOCK)
        ON MT.Mov = Cob.Mov
        AND MT.Modulo = 'CXC'
        AND MT.Clave = 'CXC.C'
        AND Cob.Estatus = 'CONCLUIDO'
      JOIN CxcD CobD WITH (NOLOCK)
        ON CobD.ID = Cob.ID
      JOIN #MovCxcTemp Doc
        ON Doc.Mov = CobD.Aplica
        AND Doc.MovID = CobD.AplicaID
        AND Doc.Estatus IN ('CONCLUIDO', 'PENDIENTE')
      JOIN #DoctosPadres CP
        ON CP.PadreMAVI = Doc.PadreMAVI
        AND CP.PadreIDMAVI = Doc.PadreIDMAVI
      GROUP BY CP.PadreMAVI,
               CP.PadreIDMAVI

      UNION

      SELECT
        SUBSTRING(MCE.Valor, 1, CHARINDEX('_', MCE.Valor, 1) - 1) PadreMAVI,
        SUBSTRING(MCE.Valor, CHARINDEX('_', MCE.Valor, 1) + 1, LEN(MCE.Valor)) PadreIDMAVI,
        MAX(Cob.FechaEmision) MaviUltimoPago
      FROM #MovCxcTemp Cob
      JOIN MovTipo MT WITH (NOLOCK)
        ON MT.Mov = Cob.Mov
        AND MT.Modulo = 'CXC'
        AND MT.Clave = 'CXC.C'
        AND Cob.Estatus = 'CONCLUIDO'
      JOIN CxcD CobD WITH (NOLOCK)
        ON CobD.ID = Cob.ID
      JOIN #MovCxcTemp Doc
        ON Doc.Mov = CobD.Aplica
        AND Doc.MovID = CobD.AplicaID
        AND Doc.Estatus IN ('CONCLUIDO', 'PENDIENTE')
        AND Doc.Concepto = 'MORATORIOS MENUDEO'
      JOIN MovTipo MTNC WITH (NOLOCK)
        ON MTNC.Mov = Doc.Mov
        AND MTNC.Modulo = 'CXC'
        AND MTNC.Clave = 'CXC.CA'
      JOIN MovCampoExtra MCE WITH (NOLOCK)
        ON MCE.Modulo = 'CXC'
        AND MCE.ID = Doc.ID
        AND MCE.CampoExtra IN ('NC_FACTURA', 'NCV_FACTURA')
        AND CHARINDEX('_', MCE.Valor, 1) > 0
      GROUP BY MCE.Valor

      UNION

      SELECT
        DP.PadreMAVI,
        DP.PadreIDMAVI,
        BM.MaviUltimoPago
      FROM #DoctosPadres DP
      JOIN BonifSIMavi BM WITH (NOLOCK)
        ON BM.IDCxc = DP.ID) UltPago
      GROUP BY PadreMAVI,
               PadreIDMAVI

      UPDATE DP
      SET DP.Categoria = CV.Categoria,
          DP.DAPeriodo = CON.DAPeriodo,
          DP.DANumeroDocumentos = CON.DANumeroDocumentos,
          DP.ImporteVta = DP.ImporteVta,
          DP.UltimoPago = MUP.MaviUltimoPago,
          DP.DiasInactivos =
                            CASE
                              WHEN DATEDIFF(DD, CASE
                                  WHEN DP.PrimerVencimiento > ISNULL(MUP.MaviUltimoPago, '19000101') THEN DP.PrimerVencimiento
                                  ELSE MUP.MaviUltimoPago
                                END, GETDATE()) < 0 THEN 0
                              ELSE DATEDIFF(DD, CASE
                                  WHEN DP.PrimerVencimiento > ISNULL(MUP.MaviUltimoPago, '19000101') THEN DP.PrimerVencimiento
                                  ELSE MUP.MaviUltimoPago
                                END, GETDATE())
                            END,
          DP.NomCteFinal = Cte_Final.ApellidoPaterno + ' ' + Cte_Final.ApellidoMaterno + ' ' + Cte_Final.Nombre,
          DP.RfcCteFinal = Cte_Final.RFC
      FROM #DoctosPadres DP
      LEFT JOIN #MaviUltimoPagoTemp MUP
        ON MUP.PadreMAVI = DP.PadreMAVI
        AND MUP.PadreIDMAVI = DP.PadreIDMAVI
      LEFT JOIN Condicion CON WITH (NOLOCK)
        ON CON.Condicion = DP.Condicion
      LEFT JOIN VentasCanalMAVI CV WITH (NOLOCK)
        ON CV.ID = DP.ClienteEnviarA
      LEFT JOIN Cte_Final WITH (NOLOCK)
        ON Cte_Final.ClienteF = DP.CteFinal

      UPDATE DP
      SET DP.Monedero = ISNULL(Mon.Abono, 0)
      FROM #DoctosPadres DP
      JOIN AuxiliarP Mon WITH (NOLOCK)
        ON Mon.Mov = DP.PadreMAVI
        AND Mon.MovID = DP.PadreIDMAVI
        AND Mon.Modulo = 'VTAS'
        AND ISNULL(Mon.Abono, 0) > 0
        AND Mon.EsCancelacion = 0

      UPDATE DP
      SET DP.Enganche = Enganche.Total
      FROM #DoctosPadres DP
      JOIN (SELECT
        C.Cliente,
        Total = SUM(ISNULL(CD.Importe, 0)),
        CD.Aplica,
        CD.AplicaId
      FROM #MovCxcTemp C
      JOIN CxcD CD WITH (NOLOCK)
        ON CD.ID = C.ID
      JOIN #DoctosPadres CP
        ON CP.PadreMAVI = CD.Aplica
        AND CP.PadreIDMAVI = CD.AplicaID
      JOIN MovTipo M WITH (NOLOCK)
        ON M.Mov = CP.PadreMAVI
        AND M.Modulo = 'VTAS'
        AND M.Clave = 'VTAS.F'
      WHERE C.Mov = 'Aplicacion Saldo'
      AND C.Estatus = 'CONCLUIDO'
      GROUP BY C.Cliente,
               CD.Aplica,
               CD.AplicaID) Enganche
        ON Enganche.Aplica = DP.PadreMAVI
        AND Enganche.AplicaID = DP.PadreIDMAVI
        AND ISNULL(DP.DANumeroDocumentos, 0) > 0

      UPDATE DP
      SET DP.FormaPagoTipo = V.FormaPagoTipo,
          DP.IdVta = V.ID
      FROM #DoctosPadres DP
      JOIN Venta V WITH (NOLOCK)
        ON V.Mov = DP.PadreMAVI
        AND V.MovID = DP.PadreIDMAVI

      UPDATE DP
      SET DP.DescripcionArt = ISNULL(VD.Descripcion1, DP.DescripcionArt)
      FROM #DoctosPadres DP
      JOIN (SELECT
        NR = ROW_NUMBER() OVER (PARTITION BY VD.ID ORDER BY VD.Renglon ASC),
        Art.Descripcion1,
        Padre.ID
      FROM #DoctosPadres Padre
      JOIN VentaD VD WITH (NOLOCK)
        ON VD.ID = Padre.IdVta
      JOIN Art WITH (NOLOCK)
        ON ART.Articulo = VD.Articulo
      WHERE ISNULL(Padre.IdVta, 0) > 0) VD
        ON VD.ID = DP.ID
        AND VD.NR = 1

    END	--EXISTS(SELECT TOP 1 ID FROM #DoctosHijos)

    SELECT
      *
    FROM #DoctosPadres
    SELECT
      *
    FROM #DoctosHijos

    IF ISNULL(OBJECT_ID('Tempdb..#MovCxcTemp'), 0) != 0
      DROP TABLE #MovCxcTemp
    IF ISNULL(OBJECT_ID('Tempdb..#DoctosHijos'), 0) != 0
      DROP TABLE #DoctosHijos
    IF ISNULL(OBJECT_ID('Tempdb..#DoctosPadres'), 0) != 0
      DROP TABLE #DoctosPadres
    IF ISNULL(OBJECT_ID('tempdb..#MaviUltimoPagoTemp'), 0) != 0
      DROP TABLE #MaviUltimoPagoTemp
  END	--	@Opcion = 1
  --ELSE
  --IF @Opcion = 2 --	Liquida con total
  --BEGIN
  --  IF ISNULL(OBJECT_ID('Tempdb..#PadreMAVIPagoLiquidaTemp'), 0) != 0
  --    DROP TABLE #PadreMAVIPagoLiquidaTemp
  --  CREATE TABLE #PadreMAVIPagoLiquidaTemp (
  --    PadreMAVI varchar(20) NULL,
  --    PadreIDMAVI varchar(20) NULL,
  --  )
  --  SET @SQL = 'INSERT INTO #PadreMAVIPagoLiquidaTemp(PadreMAVI, PadreIDMAVI)
		--SELECT
		--	CP.PadreMAVI,
		--	CP.PadreIDMAVI
		--FROM Cxc CP WITH(NOLOCK)
		--JOIN (
		--	SELECT
		--		Movimiento
		--	FROM MaviBonificacionMoV WITH(NOLOCK)
		--	GROUP BY Movimiento
		--)MB ON MB.Movimiento = CP.PadreMAVI
		--WHERE CP.Cliente = @Cliente AND CP.Estatus = ''PENDIENTE''
		--	' + CASE
  --    WHEN ISNULL(@CteFinal, '') != '' THEN ' AND CP.CteFinal = @CteFinal '
  --    ELSE ''
  --  END + '
		--GROUP BY CP.PadreMAVI, CP.PadreIDMAVI'

  --  EXECUTE sp_executesql @SQL,
  --                        N'@Cliente VARCHAR(10), @CteFinal VARCHAR(10)',
  --                        @Cliente = @Cliente,
  --                        @CteFinal = @CteFinal

  --  SELECT
  --    PadreMAVI,
  --    PadreIDMAVI,
  --    dbo.FNDM0253PagoLiquida(PadreMAVI, PadreIDMAVI) PagoLiquida
  --  FROM #PadreMAVIPagoLiquidaTemp CP

  --  IF ISNULL(OBJECT_ID('Tempdb..#PadreMAVIPagoLiquidaTemp'), 0) != 0
  --    DROP TABLE #PadreMAVIPagoLiquidaTemp
  --END	--	@Opcion = 2
  --ELSE
  --IF @Opcion = 3 --	Movimientos de cobro que se les puede generar apoyo 
  --BEGIN
  --  DECLARE @DiasVigApoyo int

  --  SELECT
  --    @DiasVigApoyo = Valor
  --  FROM TablaStD WITH (NOLOCK)
  --  WHERE TablaSt = 'RECUPERACION CLIENTE FINAL'
  --  AND Nombre = 'Dias Vigencia Apoyo'

  --  IF ISNULL(OBJECT_ID('Tempdb..#CobApoyoTemp'), 0) != 0
  --    DROP TABLE #CobApoyoTemp
  --  SELECT
  --    Cob.ID,
  --    Cob.Mov,
  --    Cob.MovID,
  --    Cob.FechaEmision,
  --    Cob.Importe + Cob.Impuestos ImporteTotal,
  --    Cte.Cliente,
  --    Cte.PersonalApellidoPaterno,
  --    Cte.PersonalApellidoMaterno,
  --    Cte.PersonalNombres,
  --    Cte_Final.ClienteF,
  --    Cte_Final.ApellidoPaterno ApellidoPaternoF,
  --    Cte_Final.ApellidoMaterno ApellidoMaternoF,
  --    Cte_Final.Nombre NombreF INTO #CobApoyoTemp
  --  FROM Cxc Cob WITH (NOLOCK)
  --  JOIN CxcD CobD WITH (NOLOCK)
  --    ON CobD.ID = Cob.ID
  --    AND Cob.Cliente = @cliente
  --    AND Cob.Mov = 'Cobro'
  --    AND Cob.Estatus = 'CONCLUIDO'
  --    AND DATEDIFF(DAY, Cob.FechaEmision, GETDATE()) < @DiasVigApoyo
  --  JOIN Cxc Doc WITH (NOLOCK)
  --    ON Doc.Mov = CobD.Aplica
  --    AND Doc.MovID = CobD.AplicaID
  --    AND Doc.Cliente = @cliente
  --    AND Doc.Estatus = 'CONCLUIDO'
  --    AND Doc.ClienteEnviarA = 76
  --    AND ISNULL(Doc.CteFinal, '0') != '0'
  --    AND ISNULL(Doc.CobroCteFinal, 0) = 0
  --  JOIN Cte WITH (NOLOCK)
  --    ON Cte.Cliente = Doc.Cliente
  --    AND ISNULL(Cte.RetiroApoyoCobranza, 0) != 1
  --  JOIN Cte_Final WITH (NOLOCK)
  --    ON Cte_Final.ClienteF = Doc.CteFinal
  --    AND ISNULL(Cte_Final.RetiroApoyoCobranza, 0) != 1
  --    AND LEFT(Cte_Final.RFC, 10) != LEFT(Cte.RFC, 10)
  --  GROUP BY Cob.ID,
  --           Cob.Mov,
  --           Cob.MovID,
  --           Cob.FechaEmision,
  --           Cob.Importe,
  --           Cob.Impuestos,
  --           Cte.Cliente,
  --           Cte.PersonalApellidoPaterno,
  --           Cte.PersonalApellidoMaterno,
  --           Cte.PersonalNombres,
  --           Cte_Final.ClienteF,
  --           Cte_Final.ApellidoPaterno,
  --           Cte_Final.ApellidoMaterno,
  --           Cte_Final.Nombre

  --  DELETE CA
  --    FROM #CobApoyoTemp CA
  --    JOIN (SELECT
  --      Cxc.CteFinal
  --    FROM Cxc WITH (NOLOCK)
  --    JOIN #CobApoyoTemp CA
  --      ON CA.ClienteF = Cxc.CteFinal
  --    WHERE Cxc.CobroCteFinal = 5) Cxc
  --      ON Cxc.CteFinal = CA.ClienteF

  --  SELECT
  --    *
  --  FROM #CobApoyoTemp

  --  IF ISNULL(OBJECT_ID('Tempdb..#CobApoyoTemp'), 0) != 0
  --    DROP TABLE #CobApoyoTemp

  --END	--	@Opcion = 3
  --ELSE
  --IF @Opcion = 4 --	Movimientos incobrables y/o mavicob
  --BEGIN
    DECLARE @EsIncobrable bit = 0

    /*	MOVIENTOS CON SALDO EN MAVICOB	*/
    --IF EXISTS (SELECT TOP 1
    --    CP.ID
    --  FROM MaviCob.dbo.Cxc CP WITH (NOLOCK)
    --  JOIN MovTipo MT WITH (NOLOCK)
    --    ON MT.Mov = CP.PadreMAVI
    --    AND MT.Clave IN ('CXC.F', 'CXC.CAP', 'CXC.CA')
    --    AND CP.Estatus = 'PENDIENTE'
    --    AND CP.Cliente = @Cliente)
    --  SET @EsIncobrable = 1

    --IF @EsIncobrable = 0
    --BEGIN	--@EsIncobrable = 0
    --  /*	CUENTAS INCOBRABLES DE MAVI	*/
    --  IF ISNULL(OBJECT_ID('tempdb..#CTASINCO'), 0) != 0
    --    DROP TABLE #CTASINCO
    --  SELECT
    --    CP.ID,
    --    CP.Cliente,
    --    CP.Mov,
    --    CP.MovID,
    --    CP.Importe + CP.Impuestos ImporteTotal,
    --    CP.Saldo,
    --    CAST(NULL AS money) SaldoInco INTO #CTASINCO
    --  FROM Cxc CP WITH (NOLOCK)
    --  JOIN MovTipo MT WITH (NOLOCK)
    --    ON MT.Mov = CP.Mov
    --    AND MT.Clave = 'CXC.DM'
    --    AND CP.Estatus = 'PENDIENTE'
    --    AND CP.Cliente = @Cliente
    --    AND ISNULL(CP.Concepto, '') != 'MAVICOB'

    --  IF EXISTS (SELECT TOP 1
    --      I.ID
    --    FROM #CTASINCO I
    --    JOIN MovTipo MT WITH (NOLOCK)
    --      ON MT.Mov = I.Mov
    --      AND MT.Clave = 'CXC.DM')
    --  BEGIN	--EXISTEN INCOBRABLES
    --    /*	CALCULO DEL SALDO DE LA CUENTA INCOBRABLE	*/
    --    UPDATE I
    --    SET I.SaldoInco = MI.Total
    --    FROM #CTASINCO I
    --    JOIN (SELECT
    --      ID,
    --      Aplica,
    --      AplicaID,
    --      Saldo = SUM(Saldo),
    --      Cargos = SUM(Cargos),
    --      Abonos = SUM(Abonos),
    --      Total =
    --             CASE
    --               WHEN SUM(Cargos) > SUM(Saldo) THEN CASE
    --                   WHEN SUM(Cargos) - SUM(Abonos) = 0 THEN MAX(SaldoReal)
    --                   ELSE SUM(Cargos) - SUM(Abonos)
    --                 END
    --               ELSE SUM(Saldo) - SUM(Abonos)
    --             END
    --    FROM (SELECT
    --      I.ID,
    --      C.Mov,
    --      C.MovID,
    --      C.Concepto,
    --      Saldo =
    --             CASE
    --               WHEN M.Clave = 'CXC.DM' THEN CASE
    --                   WHEN B.IDCxc IS NULL THEN ISNULL(A.Cargo, 0)
    --                   ELSE ISNULL(B.Saldo, 0)
    --                 END
    --               ELSE 0
    --             END,
    --      Cargos =
    --              CASE
    --                WHEN M.Clave = 'CXC.CA' THEN ISNULL(A.Cargo, 0)
    --                ELSE 0
    --              END,
    --      Abonos = ISNULL(A.Abono, 0),
    --      A.Aplica,
    --      A.AplicaID,
    --      SaldoReal = I.Saldo
    --    FROM #CTASINCO I
    --    JOIN MovTipo MT WITH (NOLOCK)
    --      ON MT.Mov = I.Mov
    --      AND MT.Clave = 'CXC.DM'
    --    JOIN Auxiliar A WITH (NOLOCK)
    --      ON A.Aplica = I.Mov
    --      AND A.AplicaID = I.MovID
    --      AND A.Rama = 'CXC'
    --    JOIN Cxc C WITH (NOLOCK)
    --      ON C.ID = A.ModuloID
    --      AND C.Estatus IN ('CONCLUIDO', 'PENDIENTE')
    --      AND C.Cliente = @Cliente
    --    INNER JOIN MovTipo M WITH (NOLOCK)
    --      ON M.Mov = C.Mov
    --      AND M.Modulo = 'CXC'
    --    LEFT JOIN BuroSIMavi B WITH (NOLOCK)
    --      ON B.IDCxc = C.ID
    --    LEFT JOIN (SELECT
    --      Nombre
    --    FROM TablaStD WITH (NOLOCK)
    --    WHERE TablaSt = 'CONCEPTOS NC INCOBRABLES') INC
    --      ON INC.NOMBRE = C.CONCEPTO
    --    WHERE INC.Nombre IS NULL) T
    --    GROUP BY ID,
    --             Aplica,
    --             AplicaID) MI
    --      ON MI.ID = I.ID

    --    /*	BORRAR TODAS LAS QUE SU SALDO ES IGUAL A SU IMPORTE Y QUE NO TIENEN CONCEPTO DE MAVICOB	*/
    --    DELETE I
    --      FROM #CTASINCO I
    --      JOIN MovTipo MT WITH (NOLOCK)
    --        ON MT.Mov = I.Mov
    --        AND MT.Clave = 'CXC.DM'
    --    WHERE NOT (I.ImporteTotal != I.Saldo
    --      OR I.SaldoInco > 0)

    --    IF EXISTS (SELECT TOP 1
    --        ID
    --      FROM #CTASINCO)
    --      SET @EsIncobrable = 1

    --    IF ISNULL(OBJECT_ID('tempdb..#CTASINCO'), 0) != 0
    --      DROP TABLE #CTASINCO

    --  END	--EXISTEN INCOBRABLES
    --END	--@EsIncobrable = 0

    --SELECT
    --  @EsIncobrable EsIncobrable
  END	--	@Opcion = 4

--END