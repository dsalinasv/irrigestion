object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 493
  Width = 494
  object cntConexion: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'Port=8080'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=16.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSProxyPort=211'
      'ServerConnection=TsmModulo.GetConnectionIrriModel'
      'HostName=localhost')
    Left = 32
    Top = 16
  end
  object dspConexion: TDSProviderConnection
    ServerClassName = 'TsmModulo'
    SQLConnection = cntConexion
    Left = 32
    Top = 64
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 168
    Top = 72
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_USUARIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 38
      end
      item
        Name = 'NOMBRE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LOGIN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PASSWORD'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'ACTIVO'
        DataType = ftInteger
      end
      item
        Name = 'dtsPluviometros'
        DataType = ftDataSet
      end
      item
        Name = 'dtsParcelas'
        DataType = ftDataSet
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspUsuario'
    RemoteServer = dspConexion
    StoreDefs = True
    OnNewRecord = cdsNewRecord
    Left = 160
    Top = 64
    object cdsUsuarioID_USUARIO: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object cdsUsuarioNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
      Transliterate = False
    end
    object cdsUsuarioLOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Size = 30
    end
    object cdsUsuarioPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      FieldName = 'PASSWORD'
      Size = 250
    end
    object cdsUsuarioACTIVO: TIntegerField
      DisplayLabel = 'Activo'
      FieldName = 'ACTIVO'
    end
    object cdsUsuariodtsParcelas: TDataSetField
      FieldName = 'dtsParcelas'
    end
    object cdsUsuariodtsPluviometros: TDataSetField
      FieldName = 'dtsPluviometros'
    end
  end
  object cxLocalizer: TcxLocalizer
    StorageType = lstResource
    Left = 224
    Top = 16
  end
  object dsCiclo: TDataSource
    DataSet = cdsCiclo
    Left = 40
    Top = 128
  end
  object cdsCiclo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCiclos'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 32
    Top = 120
    object cdsCicloID_CICLO: TStringField
      FieldName = 'ID_CICLO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsCicloNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object dsLluvia: TDataSource
    DataSet = cdsLluvia
    Left = 112
    Top = 192
  end
  object dsPluviometro: TDataSource
    DataSet = cdsPluviometro
    Left = 40
    Top = 192
  end
  object cdsPluviometro: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUsuariodtsPluviometros
    Filtered = True
    Params = <
      item
        DataType = ftInteger
        Name = 'UCIDUSER'
        ParamType = ptInput
      end>
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 32
    Top = 184
    object StringField1: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object FloatField1: TFloatField
      FieldName = 'ALTITUD'
    end
    object FloatField2: TFloatField
      FieldName = 'ALTURA'
    end
    object FloatField3: TFloatField
      FieldName = 'LATITUD'
    end
    object FloatField4: TFloatField
      FieldName = 'LONGITUD'
    end
    object StringField2: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'UBICACION'
      Size = 50
    end
    object cdsPluviometroID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
    object cdsPluviometrodtsLluvias: TDataSetField
      FieldName = 'dtsLluvias'
    end
  end
  object cdsLluvia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsPluviometrodtsLluvias
    Params = <
      item
        DataType = ftString
        Name = 'ID_PLUVIOMETRO'
        ParamType = ptInput
      end>
    AfterDelete = cdsAfterPost
    Left = 104
    Top = 184
    object cdsLluviaID_LLUVIA: TStringField
      FieldName = 'ID_LLUVIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsLluviaFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object cdsLluviaID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      Size = 38
    end
    object cdsLluviaPP: TFloatField
      DisplayLabel = 'PP (mm)'
      FieldName = 'PP'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsSuelo: TDataSource
    DataSet = cdsSuelo
    Left = 112
    Top = 128
  end
  object cdsSuelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuelos'
    RemoteServer = dspConexion
    OnCalcFields = cdsSueloCalcFields
    Left = 104
    Top = 120
    object cdsSueloID_SUELO: TStringField
      FieldName = 'ID_SUELO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsSueloARCILLA: TFloatField
      FieldName = 'ARCILLA'
    end
    object cdsSueloARENA: TFloatField
      FieldName = 'ARENA'
    end
    object cdsSueloNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsSueloMO: TFloatField
      FieldName = 'MO'
    end
    object cdsSueloDA: TFloatField
      FieldName = 'DA'
    end
    object cdsSueloLIMO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LIMO'
      Calculated = True
    end
    object cdsSueloCC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CC'
      Calculated = True
    end
    object cdsSueloPMP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PMP'
      Calculated = True
    end
    object cdsSueloHA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HA'
      Calculated = True
    end
    object cdsSueloSATURACION: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SATURACION'
      Calculated = True
    end
  end
  object dsSiembra: TDataSource
    DataSet = cdsSiembra
    Left = 116
    Top = 256
  end
  object cdsSiembra: TClientDataSet
    Aggregates = <>
    DataSetField = cdsParceladtsSiembras
    Params = <
      item
        DataType = ftString
        Name = 'ID_PARCELA'
        ParamType = ptInput
      end>
    AfterDelete = cdsAfterPost
    Left = 108
    Top = 248
    object cdsSiembraID_SIEMBRA: TStringField
      FieldName = 'ID_SIEMBRA'
      Required = True
      Size = 38
    end
    object cdsSiembraID_CULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
    object cdsSiembraFECHA: TSQLTimeStampField
      DisplayLabel = 'F. de siembra'
      FieldName = 'FECHA'
    end
    object cdsSiembraNOMBRE: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsSiembraRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsSiembraID_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'ID_TIPO'
      Size = 38
    end
    object cdsSiembraSUPERFICIE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'SUPERFICIE'
      DisplayFormat = '#,##0.00'
    end
    object cdsSiembraID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Size = 38
    end
    object cdsSiembraID_VARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'ID_VARIEDAD'
      Size = 38
    end
    object cdsSiembraGASTO: TFloatField
      DisplayLabel = 'Gasto'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsSiembraHUMEDAD: TIntegerField
      DisplayLabel = 'Humedad'
      FieldName = 'HUMEDAD'
      DisplayFormat = '#,##0.00'
    end
    object cdsSiembraCOSECHADA: TSmallintField
      DisplayLabel = 'Cosechada'
      FieldName = 'COSECHADA'
    end
    object cdsSiembraEFICIENCIA: TFloatField
      DisplayLabel = 'Eficiencia (%)'
      FieldName = 'EFICIENCIA'
    end
    object cdsSiembraID_CICLO: TStringField
      DisplayLabel = 'Ciclo'
      FieldName = 'ID_CICLO'
      Size = 38
    end
    object cdsSiembradtsRiegos: TDataSetField
      FieldName = 'dtsRiegos'
    end
  end
  object dsParcela: TDataSource
    DataSet = cdsParcela
    Left = 40
    Top = 256
  end
  object cdsParcela: TClientDataSet
    Aggregates = <>
    DataSetField = cdsUsuariodtsParcelas
    Params = <>
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 32
    Top = 248
    object cdsParcelaID_PARCELA: TStringField
      FieldName = 'ID_PARCELA'
      Required = True
      Size = 38
    end
    object cdsParcelaID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object cdsParcelaID_ESTACION: TStringField
      FieldName = 'ID_ESTACION'
      Size = 38
    end
    object cdsParcelaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsParcelaSUPERFICIE: TFloatField
      DisplayLabel = 'Superficie'
      FieldName = 'SUPERFICIE'
      DisplayFormat = '#,##0.00'
    end
    object cdsParcelaID_PLUVIOMETRO: TStringField
      FieldName = 'ID_PLUVIOMETRO'
      Size = 38
    end
    object cdsParcelaUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object cdsParceladtsSiembras: TDataSetField
      FieldName = 'dtsSiembras'
    end
    object cdsParcelaHA: TFloatField
      DisplayLabel = 'Humedad Aprovechable'
      FieldName = 'HA'
      DisplayFormat = '#,##0.00'
    end
    object cdsParcelaID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Size = 38
    end
  end
  object dsRiego: TDataSource
    DataSet = cdsRiego
    Left = 188
    Top = 256
  end
  object cdsRiego: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSiembradtsRiegos
    Params = <
      item
        DataType = ftString
        Name = 'ID_PARCELA'
        ParamType = ptInput
      end>
    AfterDelete = cdsAfterPost
    OnCalcFields = cdsRiegoCalcFields
    Left = 180
    Top = 248
    object cdsRiegoID_RIEGO: TStringField
      FieldName = 'ID_RIEGO'
      Required = True
      Size = 38
    end
    object cdsRiegoID_SIEMBRA: TStringField
      FieldName = 'ID_SIEMBRA'
      Size = 38
    end
    object cdsRiegoINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object cdsRiegoHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      DisplayFormat = '#,##0.00'
    end
    object cdsRiegoAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object cdsRiegoGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsRiegoLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
    object cdsRiegoNOTAS: TBlobField
      DisplayLabel = 'Notas'
      FieldName = 'NOTAS'
      Size = 1
    end
    object cdsRiegoVOLUMEN: TFloatField
      DisplayLabel = 'Vol (m'#179')'
      FieldKind = fkCalculated
      FieldName = 'VOLUMEN'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsRiegoLAMINA_BRUTA: TFloatField
      DisplayLabel = 'Lb (cm)'
      FieldKind = fkCalculated
      FieldName = 'LAMINA_BRUTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsRiegoEA: TFloatField
      DisplayLabel = 'EA (%)'
      FieldKind = fkCalculated
      FieldName = 'EA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object dsEstacion: TDataSource
    DataSet = cdsEstacion
    Left = 107
    Top = 314
  end
  object cdsEstacion: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEstadodtsEstacion
    Params = <>
    Left = 99
    Top = 306
    object cdsEstacionID_ESTACION: TIntegerField
      FieldName = 'ID_ESTACION'
      Required = True
    end
    object cdsEstacionID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
    end
    object cdsEstacionNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsEstacionACTIVO: TSmallintField
      FieldName = 'ACTIVO'
    end
  end
  object dsEstado: TDataSource
    DataSet = cdsEstado
    Left = 35
    Top = 314
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstado'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 27
    Top = 306
    object cdsEstadoID_ESTADO: TSmallintField
      FieldName = 'ID_ESTADO'
      Required = True
    end
    object cdsEstadoNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
    object cdsEstadodtsEstacion: TDataSetField
      FieldName = 'dtsEstacion'
    end
  end
  object opnDialog: TOpenDialog
    Filter = 'CSV delimitado por comas (.csv)|*.csv'
    Left = 286
    Top = 16
  end
  object cdsSistema: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSistemas'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 24
    Top = 368
    object cdsSistemaID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsSistemaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsSistemadtsSubsistemas: TDataSetField
      FieldName = 'dtsSubsistemas'
    end
  end
  object dsSubsistema: TDataSource
    DataSet = cdsSubsistema
    Left = 104
    Top = 376
  end
  object dsVariedad: TDataSource
    DataSet = cdsVariedad
    Left = 180
    Top = 432
  end
  object cdsVariedad: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTipodtsVariedad
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    Left = 172
    Top = 424
    object cdsVariedadID_VARIEDAD: TStringField
      FieldName = 'ID_VARIEDAD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsVariedadNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsVariedadID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
  end
  object dsTipo: TDataSource
    DataSet = cdsTipo
    Left = 104
    Top = 432
  end
  object dsCultivo: TDataSource
    DataSet = cdsCultivo
    Left = 32
    Top = 432
  end
  object cdsCultivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCultivo'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    Left = 24
    Top = 424
    object cdsCultivoID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsCultivoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsCultivodtsTipo: TDataSetField
      FieldName = 'dtsTipo'
    end
  end
  object cdsTipo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCultivodtsTipo
    Params = <
      item
        DataType = ftString
        Name = 'ID_CULTIVO'
        ParamType = ptInput
      end>
    Left = 96
    Top = 424
    object cdsTipoID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsTipoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsTipoTUMIN: TFloatField
      DisplayLabel = 'Tc-min ('#176'C)'
      FieldName = 'TUMIN'
      DisplayFormat = '#,##0.00'
    end
    object cdsTipoTUMAX: TFloatField
      DisplayLabel = 'Tc-m'#225'x ('#176'C)'
      FieldName = 'TUMAX'
      DisplayFormat = '#,##0.00'
    end
    object cdsTipoPRMAX: TFloatField
      DisplayLabel = 'Prm'#225'x (m)'
      FieldName = 'PRMAX'
      DisplayFormat = '#,##0.00'
    end
    object cdsTipoID_SISTEMA: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
    object cdsTipoTIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO'
      Size = 50
      Calculated = True
    end
    object cdsTipodtsVariedad: TDataSetField
      FieldName = 'dtsVariedad'
    end
  end
  object cdsSubsistema: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSistemadtsSubsistemas
    Params = <>
    Left = 96
    Top = 368
    object cdsSubsistemaID_SUBSISTEMA: TStringField
      FieldName = 'ID_SUBSISTEMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsSubsistemaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsSubsistemaPROMEDIO: TFloatField
      DisplayLabel = 'EA prom (%)'
      FieldName = 'PROMEDIO'
    end
    object cdsSubsistemaMAXIMO: TFloatField
      DisplayLabel = 'EA max (%)'
      FieldName = 'MAXIMO'
    end
    object cdsSubsistemaUD: TFloatField
      DisplayLabel = 'UD prom (%)'
      FieldName = 'UD'
    end
    object cdsSubsistemaID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
  end
  object sdExcel: TSaveDialog
    Filter = 'Microsoft excel 97/2000/XP (.xls)|*.xls'
    Left = 352
    Top = 16
  end
  object ssmFechaCosecha: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idSiembra'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'ReturnParameter'
        ParamType = ptResult
        Size = 8
      end>
    SQLConnection = cntConexion
    ServerMethodName = 'TsmModulo.GetFechaCosecha'
    Left = 312
    Top = 192
  end
  object ssmLamina: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idSiembra'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'dias'
        ParamType = ptInput
      end
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
      end>
    SQLConnection = cntConexion
    ServerMethodName = 'TsmModulo.GetLamina'
    Left = 312
    Top = 128
  end
  object dsConsultaUsuario: TDataSource
    DataSet = cdsConsultaUsuario
    Left = 408
    Top = 200
  end
  object cdsConsultaUsuario: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'USUSARIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'PARCELA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UBICACION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ESTACION'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SIEMBRA'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'FECHA'
        DataType = ftTimeStamp
      end
      item
        Name = 'RENDIMIENTO'
        DataType = ftFloat
      end
      item
        Name = 'CULTIVO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CICLO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'VARIEDAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'INI'
        DataType = ftTimeStamp
      end
      item
        Name = 'HORAS'
        DataType = ftFloat
      end
      item
        Name = 'AVANCE'
        DataType = ftFloat
      end
      item
        Name = 'GASTO'
        DataType = ftFloat
      end
      item
        Name = 'LAMINA'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsultaUsuario'
    RemoteServer = dspConexion
    StoreDefs = True
    OnCalcFields = cdsConsultaUsuarioCalcFields
    OnNewRecord = cdsNewRecord
    Left = 400
    Top = 192
    object cdsConsultaUsuarioUSUSARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUSARIO'
      Size = 30
    end
    object cdsConsultaUsuarioPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 50
    end
    object cdsConsultaUsuarioUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object cdsConsultaUsuarioESTACION: TStringField
      DisplayLabel = 'Estacion'
      FieldName = 'ESTACION'
      Size = 50
    end
    object cdsConsultaUsuarioSIEMBRA: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'SIEMBRA'
      Size = 50
    end
    object cdsConsultaUsuarioFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha de siembra'
      FieldName = 'FECHA'
    end
    object cdsConsultaUsuarioRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
    end
    object cdsConsultaUsuarioCULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'CULTIVO'
      Size = 50
    end
    object cdsConsultaUsuarioCICLO: TStringField
      DisplayLabel = 'Ciclo agr'#237'cola'
      FieldName = 'CICLO'
      Size = 50
    end
    object cdsConsultaUsuarioVARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'VARIEDAD'
      Size = 50
    end
    object cdsConsultaUsuarioTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 50
    end
    object cdsConsultaUsuarioINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object cdsConsultaUsuarioHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaUsuarioAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaUsuarioGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaUsuarioVOLUMEN: TFloatField
      DisplayLabel = 'Volumen'
      FieldKind = fkCalculated
      FieldName = 'VOLUMEN'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaUsuarioLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaUsuarioLAMINA_BRUTA: TFloatField
      DisplayLabel = 'Lb (cm)'
      FieldKind = fkCalculated
      FieldName = 'LAMINA_BRUTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaUsuarioEA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaUsuarioProdAgua: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ProdAgua'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object ssmClima: TSqlServerMethod
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idTipo'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idEstacion'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'ini'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'fin'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'tmin'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'tmax'
        ParamType = ptInput
      end
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
        Value = 'TDataSet'
      end>
    SQLConnection = cntConexion
    ServerMethodName = 'TsmModulo.GetClima'
    Left = 224
    Top = 64
    object ssmClimaFECHA: TDateTimeField
      FieldName = 'FECHA'
      Required = True
    end
    object ssmClimaETO: TFloatField
      FieldName = 'ETO'
      Required = True
    end
    object ssmClimaTEMP: TFloatField
      FieldName = 'TEMP'
      Required = True
    end
    object ssmClimaDGC: TFloatField
      FieldName = 'DGC'
      Required = True
    end
    object ssmClimaACUMULADO: TFloatField
      FieldName = 'ACUMULADO'
      Required = True
    end
    object ssmClimaETAPA: TStringField
      FieldName = 'ETAPA'
      Required = True
      Size = 51
    end
  end
  object dspClima: TDataSetProvider
    DataSet = ssmClima
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereChanged
    Left = 232
    Top = 72
  end
  object cdsClima: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idTipo'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idEstacion'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'ini'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Precision = 8
        Name = 'fin'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'tmin'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'tmax'
        ParamType = ptInput
      end
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
        Value = 'TDataSet'
      end>
    ProviderName = 'dspClima'
    Left = 240
    Top = 80
    object cdsClimaFECHA: TDateTimeField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      Required = True
    end
    object cdsClimaETO: TFloatField
      DisplayLabel = 'Eto (mm/d'#237'a)'
      FieldName = 'ETO'
      Required = True
    end
    object cdsClimaTEMP: TFloatField
      DisplayLabel = 'Temperatura ('#176'C)'
      FieldName = 'TEMP'
      Required = True
    end
    object cdsClimaDGC: TFloatField
      DisplayLabel = #176'D'
      FieldName = 'DGC'
      Required = True
    end
    object cdsClimaACUMULADO: TFloatField
      DisplayLabel = #931' '#176'D'
      FieldName = 'ACUMULADO'
      Required = True
    end
    object cdsClimaETAPA: TStringField
      DisplayLabel = 'Etapa Fenol'#243'gica'
      FieldName = 'ETAPA'
      Required = True
      Size = 51
    end
  end
  object dsClima: TDataSource
    DataSet = cdsClima
    Left = 248
    Top = 88
  end
  object dspLamina: TDataSetProvider
    DataSet = ssmLamina
    Left = 320
    Top = 136
  end
  object cdsLamina: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideString
        Precision = 2000
        Name = 'idSiembra'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'dias'
        ParamType = ptInput
      end
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
      end>
    ProviderName = 'dspLamina'
    Left = 328
    Top = 144
    object cdsLaminaNUMERO_RIEGO: TIntegerField
      FieldName = 'NUMERO_RIEGO'
      Required = True
    end
    object cdsLaminaFECHA_RIEGO: TDateTimeField
      FieldName = 'FECHA_RIEGO'
      Required = True
    end
    object cdsLaminaLAMINA: TFloatField
      FieldName = 'LAMINA'
      Required = True
    end
    object cdsLaminaDGCA: TFloatField
      FieldName = 'DGCA'
      Required = True
    end
    object cdsLaminaETAPA: TStringField
      FieldName = 'ETAPA'
      Required = True
      Size = 51
    end
    object cdsLaminaMENSAJE: TStringField
      FieldName = 'MENSAJE'
      Required = True
      Size = 256
    end
  end
  object cdsUser: TClientDataSet
    Aggregates = <>
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
    ProviderName = 'dspUser'
    RemoteServer = dspConexion
    Left = 312
    Top = 72
    object cdsUserID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object cdsUserNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsUserLOGIN: TStringField
      FieldName = 'LOGIN'
      Size = 30
    end
    object cdsUserPASSWORD: TStringField
      FieldName = 'PASSWORD'
      Size = 250
    end
    object cdsUserACTIVO: TIntegerField
      FieldName = 'ACTIVO'
    end
  end
  object dsSistema: TDataSource
    DataSet = cdsSistema
    Left = 32
    Top = 376
  end
  object dsEstratos: TDataSource
    DataSet = cdsEstratos
    Left = 408
    Top = 256
  end
  object cdsEstratos: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'ID_ESTRATOS'
        DataType = ftString
        Size = 38
      end
      item
        Name = 'ESPESOR'
        DataType = ftFloat
      end
      item
        Name = 'CC'
        DataType = ftFloat
      end
      item
        Name = 'PMP'
        DataType = ftFloat
      end
      item
        Name = 'SATURACION'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsEstratosCalcFields
    Left = 400
    Top = 248
    object cdsEstratosID_ESTRATOS: TStringField
      FieldName = 'ID_ESTRATOS'
      Size = 38
    end
    object cdsEstratosESPESOR: TFloatField
      DisplayLabel = 'Espesor'
      FieldName = 'ESPESOR'
    end
    object cdsEstratosCC: TFloatField
      FieldName = 'CC'
    end
    object cdsEstratosPMP: TFloatField
      FieldName = 'PMP'
    end
    object cdsEstratosSATURACION: TFloatField
      FieldName = 'SATURACION'
    end
    object cdsEstratosHA: TFloatField
      DisplayLabel = 'Humedad Aprovechable'
      FieldKind = fkCalculated
      FieldName = 'HA'
      Calculated = True
    end
    object cdsEstratosCC_POND: TAggregateField
      FieldName = 'CC_POND'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ESPESOR * CC) / SUM(ESPESOR)'
    end
    object cdsEstratosPMP_POND: TAggregateField
      FieldName = 'PMP_POND'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ESPESOR * PMP) / SUM(ESPESOR)'
    end
    object cdsEstratosSAT_POND: TAggregateField
      FieldName = 'SAT_POND'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(ESPESOR * SATURACION) / SUM(ESPESOR)'
    end
    object cdsEstratosHA_POND: TAggregateField
      FieldName = 'HA_POND'
      Active = True
      DisplayName = ''
      Expression = 'SUM(ESPESOR * (CC - PMP)) / SUM(ESPESOR)'
    end
  end
end
