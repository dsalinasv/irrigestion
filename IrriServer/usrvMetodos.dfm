object smModulo: TsmModulo
  OldCreateOrder = False
  Height = 613
  Width = 719
  object cntConexion: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\AppServer\PAPA.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=auofdsbcs'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 24
    Top = 16
  end
  object dtsEstados: TSQLDataSet
    CommandText = 'select * from ESTADOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntShared
    Left = 608
    Top = 16
    object dtsEstadosID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
      Required = True
    end
    object dtsEstadosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
    end
  end
  object dspEstados: TDataSetProvider
    DataSet = dtsEstados
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 616
    Top = 24
  end
  object dtsParcelas: TSQLDataSet
    CommandText = 
      'select * from PARCELAS where ID_USUARIO = :ID_USUARIO order by N' +
      'OMBRE'
    DataSource = dsUsuario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 248
    Top = 80
    object dtsParcelasID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Required = True
      Size = 38
    end
    object dtsParcelasID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object dtsParcelasID_ESTACION: TStringField
      FieldName = 'ID_ESTACION'
      Size = 38
    end
    object dtsParcelasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsParcelasSUPERFICIE: TFloatField
      DisplayLabel = 'Superficie'
      FieldName = 'SUPERFICIE'
      DisplayFormat = '#,##0.00'
    end
    object dtsParcelasID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      Size = 38
    end
    object dtsParcelasUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object dtsParcelasHA: TFloatField
      DisplayLabel = 'Humedad Aprovechable'
      FieldName = 'HA'
      DisplayFormat = '#,##0.00'
    end
    object dtsParcelasID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
  end
  object dtsUsuario: TSQLDataSet
    CommandText = 'select * from USUARIOS where ID_USUARIO = :ID_USUARIO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 296
    Top = 16
    object dtsUsuarioID_USUARIO: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object dtsUsuarioNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 30
    end
    object dtsUsuarioPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      FieldName = 'PASSWORD'
      Size = 250
    end
    object dtsUsuarioACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
  end
  object dtsPluviometros: TSQLDataSet
    CommandText = 
      'select * from PLUVIOMETROS where ID_USUARIO = :ID_USUARIO order ' +
      'by NOMBRE'
    DataSource = dsUsuario
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 328
    Top = 80
    object dtsPluviometrosID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsPluviometrosALTITUD: TFloatField
      FieldName = 'ALTITUD'
    end
    object dtsPluviometrosALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object dtsPluviometrosLATITUD: TFloatField
      FieldName = 'LATITUD'
    end
    object dtsPluviometrosLONGITUD: TFloatField
      FieldName = 'LONGITUD'
    end
    object dtsPluviometrosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsPluviometrosUBICACION: TStringField
      FieldName = 'UBICACION'
      Size = 50
    end
    object dtsPluviometrosID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
  end
  object dtsFenologias: TSQLDataSet
    CommandText = 'select * from FENOLOGIAS where ID_TIPO = :ID_TIPO order by ORDEN'
    DataSource = dsTipos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 480
    Top = 144
    object dtsFenologiasID_FENOLOGIA: TStringField
      FieldName = 'ID_FENOLOGIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsFenologiasORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ORDEN'
    end
    object dtsFenologiasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsFenologiasCLAVE: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'CLAVE'
      Size = 50
    end
    object dtsFenologiasDGC: TFloatField
      DisplayLabel = #176'C'
      FieldName = 'DGC'
      DisplayFormat = '#,##0.00'
    end
    object dtsFenologiasID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
  end
  object dtsTipos: TSQLDataSet
    CommandText = 
      'select * from TIPOS where ID_CULTIVO = :ID_CULTIVO order by ORDE' +
      'N'
    DataSource = dsCultivos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_CULTIVO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 440
    Top = 80
    object dtsTiposID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsTiposID_SISTEMA: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
    object dtsTiposNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsTiposTUMIN: TFloatField
      DisplayLabel = 'Tc-min ('#176'C)'
      FieldName = 'TUMIN'
      DisplayFormat = '#,##0.00'
    end
    object dtsTiposTUMAX: TFloatField
      DisplayLabel = 'Tc-m'#225'x ('#176'C)'
      FieldName = 'TUMAX'
      DisplayFormat = '#,##0.00'
    end
    object dtsTiposPRMAX: TFloatField
      DisplayLabel = 'Prm'#225'x (m)'
      FieldName = 'PRMAX'
      DisplayFormat = '#,##0.00'
    end
    object dtsTiposORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object dtsTiposKMAX: TFloatField
      FieldName = 'KMAX'
    end
    object dtsTiposKCO: TFloatField
      FieldName = 'KCO'
    end
    object dtsTiposXKMAX: TFloatField
      FieldName = 'XKMAX'
    end
    object dtsTiposPRO: TFloatField
      FieldName = 'PRO'
    end
    object dtsTiposALPHA0: TFloatField
      FieldName = 'ALPHA0'
    end
    object dtsTiposALPHA1: TFloatField
      FieldName = 'ALPHA1'
    end
    object dtsTiposALPHA2: TFloatField
      FieldName = 'ALPHA2'
    end
    object dtsTiposALPHA3: TFloatField
      FieldName = 'ALPHA3'
    end
    object dtsTiposALPHA4: TFloatField
      FieldName = 'ALPHA4'
    end
    object dtsTiposALPHA5: TFloatField
      FieldName = 'ALPHA5'
    end
    object dtsTiposID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
  end
  object dtsRiegos: TSQLDataSet
    CommandText = 'select * from RIEGOS where ID_SIEMBRA = :ID_SIEMBRA order by INI'
    DataSource = dsSiembras
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_SIEMBRA'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 248
    Top = 208
    object dtsRiegosID_RIEGO: TStringField
      FieldName = 'ID_RIEGO'
      Required = True
      Size = 38
    end
    object dtsRiegosID_SIEMBRA: TStringField
      FieldName = 'ID_SIEMBRA'
      Size = 38
    end
    object dtsRiegosINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object dtsRiegosHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
    end
    object dtsRiegosGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object dtsRiegosAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object dtsRiegosLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
    object dtsRiegosNOTAS: TBlobField
      DisplayLabel = 'Notas'
      FieldName = 'NOTAS'
      Size = 1
    end
  end
  object dtsUsuarios: TSQLDataSet
    CommandText = 'select * from USUARIOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 168
    Top = 128
    object dtsUsuariosID_USUARIO: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object dtsUsuariosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsUsuariosLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 30
    end
    object dtsUsuariosPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      FieldName = 'PASSWORD'
      Size = 250
    end
    object dtsUsuariosACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
  end
  object dspUsuarios: TDataSetProvider
    DataSet = dtsUsuarios
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 176
    Top = 136
  end
  object dtsCiclos: TSQLDataSet
    CommandText = 'select * from CICLOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 168
    Top = 16
    object dtsCiclosID_CICLO: TStringField
      FieldName = 'ID_CICLO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsCiclosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dtsSiembras: TSQLDataSet
    CommandText = 
      'select * from SIEMBRAS where (COSECHADA is NULL or COSECHADA = 0' +
      ') and ID_PARCELA = :ID_PARCELA order by NOMBRE'
    DataSource = dsParcelas
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PARCELA'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 248
    Top = 144
    object dtsSiembrasID_SIEMBRA: TStringField
      FieldName = 'ID_SIEMBRA'
      Required = True
      Size = 38
    end
    object dtsSiembrasID_CULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
    object dtsSiembrasFECHA: TSQLTimeStampField
      DisplayLabel = 'F. de siembra'
      FieldName = 'FECHA'
    end
    object dtsSiembrasNOMBRE: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsSiembrasRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      DisplayFormat = '#,##0.00'
    end
    object dtsSiembrasSUPERFICIE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'SUPERFICIE'
      DisplayFormat = '#,##0.00'
    end
    object dtsSiembrasID_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ID_TIPO'
      Size = 38
    end
    object dtsSiembrasID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Size = 38
    end
    object dtsSiembrasID_VARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'ID_VARIEDAD'
      Size = 38
    end
    object dtsSiembrasGASTO: TFloatField
      DisplayLabel = 'Gasto'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object dtsSiembrasHUMEDAD: TIntegerField
      DisplayLabel = 'Humedad'
      FieldName = 'HUMEDAD'
      DisplayFormat = '#,##0.00'
    end
    object dtsSiembrasCOSECHADA: TSmallintField
      DisplayLabel = 'Cosechada'
      FieldName = 'COSECHADA'
    end
    object dtsSiembrasEFICIENCIA: TFloatField
      DisplayLabel = 'Eficiencia (%)'
      FieldName = 'EFICIENCIA'
    end
    object dtsSiembrasID_CICLO: TStringField
      DisplayLabel = 'Ciclo'
      FieldName = 'ID_CICLO'
      Size = 38
    end
  end
  object dspSiembras: TDataSetProvider
    DataSet = dtsSiembras
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 256
    Top = 152
  end
  object dtsLluvias: TSQLDataSet
    CommandText = 
      'select * from LLUVIAS where ID_PLUVIOMETRO = :ID_PLUVIOMETRO ord' +
      'er by FECHA'
    DataSource = dsPluviometros
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLUVIOMETRO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 328
    Top = 144
    object dtsLluviasID_LLUVIA: TStringField
      FieldName = 'ID_LLUVIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsLluviasFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object dtsLluviasID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      Size = 38
    end
    object dtsLluviasPP: TFloatField
      DisplayLabel = 'PP (mm)'
      FieldName = 'PP'
      DisplayFormat = '#,##0.00'
    end
  end
  object dtsCultivos: TSQLDataSet
    CommandText = 'select * from CULTIVOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 440
    Top = 16
    object dtsCultivosID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsCultivosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dtsSistemas: TSQLDataSet
    CommandText = 'select * from SISTEMAS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 520
    Top = 16
    object dtsSistemasID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsSistemasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dtsSubsistemas: TSQLDataSet
    CommandText = 
      'select * from SUBSISTEMAS where ID_SISTEMA = :ID_SISTEMA order b' +
      'y NOMBRE'
    DataSource = dsSistema
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_SISTEMA'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 520
    Top = 80
    object dtsSubsistemasID_SUBSISTEMA: TStringField
      FieldName = 'ID_SUBSISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsSubsistemasNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsSubsistemasPROMEDIO: TFloatField
      DisplayLabel = 'EA prom (%)'
      FieldName = 'PROMEDIO'
      DisplayFormat = '#,##0.00'
    end
    object dtsSubsistemasMAXIMO: TFloatField
      DisplayLabel = 'EA max (%)'
      FieldName = 'MAXIMO'
      DisplayFormat = '#,##0.00'
    end
    object dtsSubsistemasUD: TFloatField
      DisplayLabel = 'UD prom (%)'
      FieldName = 'UD'
      DisplayFormat = '#,##0.00'
    end
    object dtsSubsistemasID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
  end
  object dtsSuelos: TSQLDataSet
    CommandText = 'select * from SUELOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 168
    Top = 72
    object dtsSuelosID_SUELO: TStringField
      FieldName = 'ID_SUELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsSuelosARCILLA: TFloatField
      DisplayLabel = 'Arcilla'
      FieldName = 'ARCILLA'
      DisplayFormat = '#,##0.00'
    end
    object dtsSuelosARENA: TFloatField
      DisplayLabel = 'Arena'
      FieldName = 'ARENA'
      DisplayFormat = '#,##0.00'
    end
    object dtsSuelosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsSuelosMO: TFloatField
      FieldName = 'MO'
      DisplayFormat = '#,##0.00'
    end
    object dtsSuelosDA: TFloatField
      FieldName = 'DA'
      DisplayFormat = '#,##0.00'
    end
  end
  object dtsVariedades: TSQLDataSet
    CommandText = 
      'select * from VARIEDADES where ID_TIPO = :ID_TIPO order by NOMBR' +
      'E'
    DataSource = dsTipos
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 408
    Top = 144
    object dtsVariedadesID_VARIEDAD: TStringField
      FieldName = 'ID_VARIEDAD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object dtsVariedadesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsVariedadesID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
  end
  object cdsPredicciones: TClientDataSet
    Aggregates = <>
    Filtered = True
    FieldDefs = <
      item
        Name = 'NUMERO_RIEGO'
        DataType = ftInteger
      end
      item
        Name = 'FECHA_RIEGO'
        DataType = ftDateTime
      end
      item
        Name = 'LAMINA'
        DataType = ftFloat
      end
      item
        Name = 'DGCA'
        DataType = ftFloat
      end
      item
        Name = 'ETAPA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'MENSAJE'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 64
    object cdsPrediccionesNUMERO_RIEGO: TIntegerField
      FieldName = 'NUMERO_RIEGO'
    end
    object cdsPrediccionesFECHA_RIEGO: TDateTimeField
      FieldName = 'FECHA_RIEGO'
    end
    object cdsPrediccionesLAMINA: TFloatField
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
    object cdsPrediccionesDGCA: TFloatField
      FieldName = 'DGCA'
      DisplayFormat = '#,##0.00'
    end
    object cdsPrediccionesETAPA: TStringField
      FieldName = 'ETAPA'
      Size = 50
    end
    object cdsPrediccionesMENSAJE: TStringField
      FieldName = 'MENSAJE'
      Size = 255
    end
  end
  object dspLluvias: TDataSetProvider
    DataSet = dtsLluvias
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 336
    Top = 152
  end
  object dspParcelas: TDataSetProvider
    DataSet = dtsParcelas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    Left = 256
    Top = 88
  end
  object dspUsuario: TDataSetProvider
    DataSet = dtsUsuario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 304
    Top = 24
  end
  object dspCultivos: TDataSetProvider
    DataSet = dtsCultivos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 448
    Top = 24
  end
  object dspPluviometros: TDataSetProvider
    DataSet = dtsPluviometros
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 336
    Top = 88
  end
  object dspSistemas: TDataSetProvider
    DataSet = dtsSistemas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 528
    Top = 24
  end
  object dspVariedades: TDataSetProvider
    DataSet = dtsVariedades
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 416
    Top = 152
  end
  object dspCiclos: TDataSetProvider
    DataSet = dtsCiclos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 176
    Top = 24
  end
  object dspSubsistemas: TDataSetProvider
    DataSet = dtsSubsistemas
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 528
    Top = 88
  end
  object dspSuelos: TDataSetProvider
    DataSet = dtsSuelos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 176
    Top = 80
  end
  object dspRiegos: TDataSetProvider
    DataSet = dtsRiegos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 256
    Top = 216
  end
  object dspFenologias: TDataSetProvider
    DataSet = dtsFenologias
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 488
    Top = 152
  end
  object dsSistema: TDataSource
    DataSet = dtsSistemas
    Left = 536
    Top = 32
  end
  object dsPluviometros: TDataSource
    DataSet = dtsPluviometros
    Left = 344
    Top = 96
  end
  object dsCultivos: TDataSource
    DataSet = dtsCultivos
    Left = 456
    Top = 32
  end
  object dspTipos: TDataSetProvider
    DataSet = dtsTipos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 448
    Top = 88
  end
  object dsTipos: TDataSource
    DataSet = dtsTipos
    Left = 456
    Top = 96
  end
  object dsUsuario: TDataSource
    DataSet = dtsUsuario
    Left = 312
    Top = 32
  end
  object dsSiembras: TDataSource
    DataSet = dtsSiembras
    Left = 264
    Top = 160
  end
  object dsParcelas: TDataSource
    DataSet = dtsParcelas
    Left = 264
    Top = 96
  end
  object dtsEstaciones: TSQLDataSet
    CommandText = 
      'select * from ESTACIONES where ID_ESTADO = :ID_ESTADO order by N' +
      'OMBRE'
    DataSource = dsEstados
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'ID_ESTADO'
        ParamType = ptInput
      end>
    SQLConnection = cntShared
    Left = 608
    Top = 80
    object dtsEstacionesID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object dtsEstacionesID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object dtsEstacionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsEstacionesACTIVO: TSmallintField
      FieldName = 'ACTIVO'
    end
  end
  object dspEstaciones: TDataSetProvider
    DataSet = dtsEstaciones
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 616
    Top = 88
  end
  object dtsHistoricos: TSQLDataSet
    CommandText = 
      'select * from HISTORICOS where ID_ESTACION = :ID_ESTACION order ' +
      'by FECHA'
    DataSource = dsEstaciones
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end>
    SQLConnection = cntShared
    Left = 608
    Top = 144
    object dtsHistoricosID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object dtsHistoricosFECHA: TDateField
      FieldName = 'FECHA'
      Required = True
    end
    object dtsHistoricosTMED: TFloatField
      FieldName = 'TMED'
    end
    object dtsHistoricosETO: TFloatField
      FieldName = 'ETO'
    end
  end
  object dspHistoricos: TDataSetProvider
    DataSet = dtsHistoricos
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 616
    Top = 152
  end
  object dsEstados: TDataSource
    DataSet = dtsEstados
    Left = 624
    Top = 32
  end
  object dsEstaciones: TDataSource
    DataSet = dtsEstaciones
    Left = 624
    Top = 96
  end
  object cdsData: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'FECHA'
        DataType = ftDateTime
      end
      item
        Name = 'ETO'
        DataType = ftFloat
      end
      item
        Name = 'TEMP'
        DataType = ftFloat
      end
      item
        Name = 'DGC'
        DataType = ftFloat
      end
      item
        Name = 'ACUMULADO'
        DataType = ftFloat
      end
      item
        Name = 'ETAPA'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 56
    Top = 112
    object cdsDataFECHA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object cdsDataETO: TFloatField
      DisplayLabel = 'Eto (mm/d'#237'a)'
      FieldName = 'ETO'
    end
    object cdsDataTEMP: TFloatField
      DisplayLabel = 'Temperatura ('#176'C)'
      FieldName = 'TEMP'
    end
    object cdsDataDGC: TFloatField
      DisplayLabel = #176'D'
      FieldName = 'DGC'
    end
    object cdsDataACUMULADO: TFloatField
      DisplayLabel = #931' '#176'D'
      FieldName = 'ACUMULADO'
    end
    object cdsDataETAPA: TStringField
      DisplayLabel = 'Etapa fenol'#243'gica'
      FieldName = 'ETAPA'
      Size = 50
    end
  end
  object dsEstado: TDataSource
    DataSet = dtsEstado
    Left = 624
    Top = 232
  end
  object dspEstacion: TDataSetProvider
    DataSet = dtsEstacion
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 616
    Top = 288
  end
  object dtsEstacion: TSQLDataSet
    CommandText = 
      'select * from ESTACIONES where ID_ESTADO = :ID_ESTADO and ACTIVO' +
      ' = 1 order by NOMBRE'
    DataSource = dsEstado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'ID_ESTADO'
        ParamType = ptInput
      end>
    SQLConnection = cntShared
    Left = 608
    Top = 280
    object dtsEstacionID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object dtsEstacionID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object dtsEstacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object dtsEstacionACTIVO: TSmallintField
      FieldName = 'ACTIVO'
    end
  end
  object dspEstado: TDataSetProvider
    DataSet = dtsEstado
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 616
    Top = 224
  end
  object dtsEstado: TSQLDataSet
    CommandText = 'select * from ESTADOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntShared
    Left = 608
    Top = 216
    object dtsEstadoID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
      Required = True
    end
    object dtsEstadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
  end
  object dsCultivo: TDataSource
    DataSet = dtsCultivo
    Left = 456
    Top = 232
  end
  object dsTipo: TDataSource
    DataSet = dtsTipo
    Left = 456
    Top = 296
  end
  object dspTipo: TDataSetProvider
    DataSet = dtsTipo
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 448
    Top = 288
  end
  object dspVariedad: TDataSetProvider
    DataSet = dtsVariedad
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 448
    Top = 352
  end
  object dspCultivo: TDataSetProvider
    DataSet = dtsCultivo
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 448
    Top = 224
  end
  object dtsVariedad: TSQLDataSet
    CommandText = 
      'select * from VARIEDADES where ID_TIPO = :ID_TIPO order by NOMBR' +
      'E'
    DataSource = dsTipo
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 440
    Top = 344
    object StringField6: TStringField
      FieldName = 'ID_VARIEDAD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField7: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object StringField8: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
  end
  object dtsCultivo: TSQLDataSet
    CommandText = 'select * from CULTIVOS order by NOMBRE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = cntConexion
    Left = 440
    Top = 216
    object StringField9: TStringField
      FieldName = 'ID_CULTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField10: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dtsTipo: TSQLDataSet
    CommandText = 
      'select * from TIPOS where ID_CULTIVO = :ID_CULTIVO order by ORDE' +
      'N'
    DataSource = dsCultivo
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_CULTIVO'
        ParamType = ptInput
      end>
    SQLConnection = cntConexion
    Left = 440
    Top = 280
    object StringField11: TStringField
      FieldName = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object StringField12: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
    object StringField13: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Tc-min ('#176'C)'
      FieldName = 'TUMIN'
      DisplayFormat = '#,##0.00'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Tc-m'#225'x ('#176'C)'
      FieldName = 'TUMAX'
      DisplayFormat = '#,##0.00'
    end
    object FloatField7: TFloatField
      DisplayLabel = 'Prm'#225'x (m)'
      FieldName = 'PRMAX'
      DisplayFormat = '#,##0.00'
    end
  end
  object qryConsultaGeneral: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select'
      'u.nombre as ususario,'
      'p.nombre as parcela,'
      'p.ubicacion,'
      'e.nombre as estacion,'
      's.nombre as siembra,'
      's.fecha,'
      's.rendimiento,'
      'c.nombre as cultivo,'
      'cic.nombre as ciclo,'
      'v.nombre as variedad,'
      't.nombre as tipo,'
      'r.*'
      'from RIEGOS r'
      'left join SIEMBRAS s on s.ID_SIEMBRA = r.ID_SIEMBRA'
      'left join CULTIVOS c on c.ID_CULTIVO = s.ID_CULTIVO'
      'left join CICLOS cic on cic.ID_CICLO = s.ID_CICLO'
      'left join VARIEDADES v on v.ID_VARIEDAD = s.ID_VARIEDAD'
      'left join TIPOS t on t.ID_TIPO = v.ID_TIPO'
      'left join PARCELAS p on p.ID_PARCELA = s.ID_PARCELA'
      'left join ESTACIONES e on e.ID_ESTACION = p.ID_ESTACION'
      'left join USUARIOS u on u.ID_USUARIO = p.ID_USUARIO')
    SQLConnection = cntConexion
    Left = 56
    Top = 192
    object qryConsultaGeneralUSUSARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUSARIO'
      Size = 30
    end
    object qryConsultaGeneralPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 50
    end
    object qryConsultaGeneralUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object qryConsultaGeneralESTACION: TStringField
      DisplayLabel = 'Estacion'
      FieldName = 'ESTACION'
      Size = 50
    end
    object qryConsultaGeneralSIEMBRA: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'SIEMBRA'
      Size = 50
    end
    object qryConsultaGeneralFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha de siembra'
      FieldName = 'FECHA'
    end
    object qryConsultaGeneralRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaGeneralCULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'CULTIVO'
      Size = 50
    end
    object qryConsultaGeneralCICLO: TStringField
      DisplayLabel = 'Ciclo agr'#237'cola'
      FieldName = 'CICLO'
      Size = 50
    end
    object qryConsultaGeneralVARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'VARIEDAD'
      Size = 50
    end
    object qryConsultaGeneralTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 50
    end
    object qryConsultaGeneralINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object qryConsultaGeneralHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaGeneralAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaGeneralGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaGeneralLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
  end
  object qryConsultaUsuario: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'u.nombre as ususario,'
      'p.nombre as parcela,'
      'p.ubicacion,'
      'e.nombre as estacion,'
      's.nombre as siembra,'
      's.fecha,'
      's.rendimiento,'
      'c.nombre as cultivo,'
      'cic.nombre as ciclo,'
      'v.nombre as variedad,'
      't.nombre as tipo,'
      'r.*'
      'from RIEGOS r'
      'left join SIEMBRAS s on s.ID_SIEMBRA = r.ID_SIEMBRA'
      'left join CULTIVOS c on c.ID_CULTIVO = s.ID_CULTIVO'
      'left join CICLOS cic on cic.ID_CICLO = s.ID_CICLO'
      'left join VARIEDADES v on v.ID_VARIEDAD = s.ID_VARIEDAD'
      'left join TIPOS t on t.ID_TIPO = v.ID_TIPO'
      'left join PARCELAS p on p.ID_PARCELA = s.ID_PARCELA'
      'left join ESTACIONES e on e.ID_ESTACION = p.ID_ESTACION'
      'left join USUARIOS u on u.ID_USUARIO = p.ID_USUARIO'
      'where p.ID_USUARIO = :ID_USUARIO')
    SQLConnection = cntConexion
    Left = 56
    Top = 248
    object qryConsultaUsuarioUSUSARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUSARIO'
      Size = 30
    end
    object qryConsultaUsuarioPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 50
    end
    object qryConsultaUsuarioUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object qryConsultaUsuarioESTACION: TStringField
      DisplayLabel = 'Estacion'
      FieldName = 'ESTACION'
      Size = 50
    end
    object qryConsultaUsuarioSIEMBRA: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'SIEMBRA'
      Size = 50
    end
    object qryConsultaUsuarioFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha de siembra'
      FieldName = 'FECHA'
    end
    object qryConsultaUsuarioRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaUsuarioCULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'CULTIVO'
      Size = 50
    end
    object qryConsultaUsuarioCICLO: TStringField
      DisplayLabel = 'Ciclo agr'#237'cola'
      FieldName = 'CICLO'
      Size = 50
    end
    object qryConsultaUsuarioVARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'VARIEDAD'
      Size = 50
    end
    object qryConsultaUsuarioTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 50
    end
    object qryConsultaUsuarioINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object qryConsultaUsuarioHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaUsuarioAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaUsuarioGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object qryConsultaUsuarioLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
  end
  object dspConsultaGeneral: TDataSetProvider
    DataSet = qryConsultaGeneral
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 64
    Top = 200
  end
  object dspConsultaUsuario: TDataSetProvider
    DataSet = qryConsultaUsuario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 64
    Top = 256
  end
  object qryClima: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ID_ESTACION,FECHA,TMED,ETO from HISTORICOS where ID_ESTAC' +
        'ION = :ID_ESTACION and FECHA between :INI and :FIN order by FECH' +
        'A')
    SQLConnection = cntShared
    Left = 168
    Top = 192
    object qryClimaID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object qryClimaFECHA: TDateField
      FieldName = 'FECHA'
      Required = True
    end
    object qryClimaTMED: TFloatField
      FieldName = 'TMED'
    end
    object qryClimaETO: TFloatField
      FieldName = 'ETO'
    end
  end
  object dspClima: TDataSetProvider
    DataSet = qryClima
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 176
    Top = 200
  end
  object cdsClima: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspClima'
    Left = 184
    Top = 208
    object cdsClimaID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object cdsClimaFECHA: TDateField
      FieldName = 'FECHA'
      Required = True
    end
    object cdsClimaTMED: TFloatField
      FieldName = 'TMED'
    end
    object cdsClimaETO: TFloatField
      FieldName = 'ETO'
    end
  end
  object qrySiembra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_SIEMBRA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from SIEMBRAS where ID_SIEMBRA = :ID_SIEMBRA')
    SQLConnection = cntConexion
    Left = 168
    Top = 272
    object qrySiembraID_SIEMBRA: TStringField
      FieldName = 'ID_SIEMBRA'
      Required = True
      Size = 38
    end
    object qrySiembraID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
    object qrySiembraFECHA: TSQLTimeStampField
      FieldName = 'FECHA'
    end
    object qrySiembraNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qrySiembraRENDIMIENTO: TFloatField
      FieldName = 'RENDIMIENTO'
    end
    object qrySiembraSUPERFICIE: TFloatField
      FieldName = 'SUPERFICIE'
    end
    object qrySiembraID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
    object qrySiembraID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Size = 38
    end
    object qrySiembraID_VARIEDAD: TStringField
      FieldName = 'ID_VARIEDAD'
      Size = 38
    end
    object qrySiembraGASTO: TFloatField
      FieldName = 'GASTO'
    end
    object qrySiembraHUMEDAD: TIntegerField
      FieldName = 'HUMEDAD'
    end
    object qrySiembraCOSECHADA: TSmallintField
      FieldName = 'COSECHADA'
    end
    object qrySiembraEFICIENCIA: TFloatField
      FieldName = 'EFICIENCIA'
    end
    object qrySiembraID_CICLO: TStringField
      FieldName = 'ID_CICLO'
      Size = 38
    end
  end
  object qryTipo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from TIPOS where ID_TIPO = :ID_TIPO')
    SQLConnection = cntConexion
    Left = 168
    Top = 328
    object qryTipoID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Required = True
      Size = 38
    end
    object qryTipoORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qryTipoID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
    object qryTipoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryTipoTUMIN: TFloatField
      FieldName = 'TUMIN'
    end
    object qryTipoTUMAX: TFloatField
      FieldName = 'TUMAX'
    end
    object qryTipoKMAX: TFloatField
      FieldName = 'KMAX'
    end
    object qryTipoKCO: TFloatField
      FieldName = 'KCO'
    end
    object qryTipoXKMAX: TFloatField
      FieldName = 'XKMAX'
    end
    object qryTipoPRO: TFloatField
      FieldName = 'PRO'
    end
    object qryTipoPRMAX: TFloatField
      FieldName = 'PRMAX'
    end
    object qryTipoALPHA0: TFloatField
      FieldName = 'ALPHA0'
    end
    object qryTipoALPHA1: TFloatField
      FieldName = 'ALPHA1'
    end
    object qryTipoALPHA2: TFloatField
      FieldName = 'ALPHA2'
    end
    object qryTipoALPHA3: TFloatField
      FieldName = 'ALPHA3'
    end
    object qryTipoALPHA4: TFloatField
      FieldName = 'ALPHA4'
    end
    object qryTipoALPHA5: TFloatField
      FieldName = 'ALPHA5'
    end
    object qryTipoID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
  end
  object qryParcela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_PARCELA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from PARCELAS where ID_PARCELA = :ID_PARCELA')
    SQLConnection = cntConexion
    Left = 168
    Top = 384
    object qryParcelaID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Required = True
      Size = 38
    end
    object qryParcelaID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object qryParcelaID_ESTACION: TStringField
      FieldName = 'ID_ESTACION'
      Size = 38
    end
    object qryParcelaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryParcelaSUPERFICIE: TFloatField
      FieldName = 'SUPERFICIE'
    end
    object qryParcelaID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      Size = 38
    end
    object qryParcelaUBICACION: TStringField
      FieldName = 'UBICACION'
      Size = 50
    end
    object qryParcelaHA: TFloatField
      FieldName = 'HA'
    end
    object qryParcelaID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
  end
  object qryEstacion: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ESTACIONES where ID_ESTACION = :ID_ESTACION')
    SQLConnection = cntShared
    Left = 168
    Top = 440
    object qryEstacionID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object qryEstacionID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object qryEstacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryEstacionACTIVO: TSmallintField
      FieldName = 'ACTIVO'
    end
  end
  object qryHistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select ID_ESTACION,FECHA,TMED,ETO from HISTORICOS where ID_ESTAC' +
        'ION = :ID_ESTACION AND FECHA = :FECHA')
    SQLConnection = cntShared
    Left = 168
    Top = 496
    object qryHistoricoID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object qryHistoricoFECHA: TDateField
      FieldName = 'FECHA'
      Required = True
    end
    object qryHistoricoTMED: TFloatField
      FieldName = 'TMED'
    end
    object qryHistoricoETO: TFloatField
      FieldName = 'ETO'
    end
  end
  object qrySuelo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ID_SUELO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from SUELOS where ID_SUELO = :ID_SUELO')
    SQLConnection = cntConexion
    Left = 168
    Top = 552
    object qrySueloID_SUELO: TStringField
      FieldName = 'ID_SUELO'
      Required = True
      Size = 38
    end
    object qrySueloARCILLA: TFloatField
      FieldName = 'ARCILLA'
    end
    object qrySueloARENA: TFloatField
      FieldName = 'ARENA'
    end
    object qrySueloNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qrySueloMO: TFloatField
      FieldName = 'MO'
    end
    object qrySueloDA: TFloatField
      FieldName = 'DA'
    end
  end
  object qryEtapa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DGCA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(B.NOMBRE) FROM FENOLOGIAS A, FENOLOGIAS B WHERE'
      'A.ID_TIPO = :ID AND B.ID_TIPO = :ID AND A.ORDEN <= B.ORDEN'
      
        'GROUP BY B.ORDEN, B.DGC HAVING SUM(A.DGC) < :DGCA ORDER BY B.ORD' +
        'EN DESC')
    SQLConnection = cntConexion
    Left = 248
    Top = 272
  end
  object qryAvg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ESTACION'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT AVG(ETO)AS ETO, AVG(TMED)AS TMED FROM HISTORICOS WHERE ID' +
        '_ESTACION = :ID_ESTACION AND FECHA BETWEEN :INI AND :FIN')
    SQLConnection = cntShared
    Left = 248
    Top = 328
    object qryAvgETO: TFloatField
      FieldName = 'ETO'
    end
    object qryAvgTMED: TFloatField
      FieldName = 'TMED'
    end
  end
  object qryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'PASSWORD'
        ParamType = ptInput
        Size = 250
      end>
    SQL.Strings = (
      
        'select * from USUARIOS where LOGIN = :LOGIN and PASSWORD = :PASS' +
        'WORD')
    SQLConnection = cntConexion
    Left = 248
    Top = 384
    object qryUsuarioID_USUARIO: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object qryUsuarioNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 30
    end
    object qryUsuarioPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      FieldName = 'PASSWORD'
      Size = 250
    end
    object qryUsuarioACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
  end
  object dspUser: TDataSetProvider
    DataSet = qryUsuario
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 256
    Top = 392
  end
  object cntShared: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=C:\AppServer\SHARED.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=auofdsbcs'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 544
    Top = 256
  end
end
