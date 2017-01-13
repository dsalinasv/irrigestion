object dmData: TdmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 556
  Width = 494
  object cntConexion: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'Datasnap'
    LoginPrompt = False
    Params.Strings = (
      'HostName=cevaf.redirectme.net'
      'DriverUnit=Data.DBXDataSnap'
      'Port=8080'
      'CommunicationProtocol=http'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=16.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'Filters={}'
      'DSProxyPort=211'
      'ServerConnection=TsmModulo.GetConnectionIrriModel')
    Left = 32
    Top = 16
  end
  object dspConexion: TDSProviderConnection
    ServerClassName = 'TsmModulo'
    SQLConnection = cntConexion
    Left = 96
    Top = 16
  end
  object cxLocalizer: TcxLocalizer
    StorageType = lstResource
    Left = 224
    Top = 16
  end
  object dsCiclo: TDataSource
    DataSet = cdsCiclo
    Left = 40
    Top = 144
  end
  object cdsCiclo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCiclos'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 32
    Top = 136
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
  object dsSuelo: TDataSource
    DataSet = cdsSuelo
    Left = 112
    Top = 144
  end
  object cdsSuelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuelos'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    OnCalcFields = cdsSueloCalcFields
    OnNewRecord = cdsNewRecord
    Left = 104
    Top = 136
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
  end
  object dsSubsistema: TDataSource
    DataSet = cdsSubsistema
    Left = 112
    Top = 264
  end
  object cdsSubsistema: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSistemadtsSubsistemas
    Params = <>
    OnNewRecord = cdsNewRecord
    Left = 104
    Top = 256
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
  object dsSistema: TDataSource
    DataSet = cdsSistema
    Left = 40
    Top = 264
  end
  object cdsSistema: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSistemas'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 32
    Top = 256
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
  object dsHistorico: TDataSource
    DataSet = cdsHistorico
    Left = 187
    Top = 202
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEstaciondtsHistoricos
    Params = <>
    Left = 179
    Top = 194
    object cdsHistoricoID_ESTACION: TStringField
      FieldName = 'ID_ESTACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 38
    end
    object cdsHistoricoFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsHistoricoETO: TFloatField
      DisplayLabel = 'Et0'
      FieldName = 'ETO'
    end
    object cdsHistoricoTEMP: TFloatField
      DisplayLabel = 'Temp'
      FieldName = 'TEMP'
    end
  end
  object dsEstado: TDataSource
    DataSet = cdsEstado
    Left = 43
    Top = 202
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstados'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 35
    Top = 194
    object cdsEstadoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsEstadodtsEstaciones: TDataSetField
      FieldName = 'dtsEstaciones'
    end
  end
  object dsEstacion: TDataSource
    DataSet = cdsEstacion
    Left = 115
    Top = 202
  end
  object cdsEstacion: TClientDataSet
    Aggregates = <>
    DataSetField = cdsEstadodtsEstaciones
    Params = <>
    OnNewRecord = cdsNewRecord
    Left = 107
    Top = 194
    object cdsEstacionID_ESTACION: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'ID_ESTACION'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsEstacionID_DISTRITO: TStringField
      FieldName = 'ID_DISTRITO'
      Size = 38
    end
    object cdsEstacionNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsEstaciondtsHistoricos: TDataSetField
      FieldName = 'dtsHistoricos'
    end
  end
  object dsFenologia: TDataSource
    DataSet = cdsFenologia
    Left = 264
    Top = 328
  end
  object dsVariedad: TDataSource
    DataSet = cdsVariedad
    Left = 184
    Top = 328
  end
  object cdsVariedad: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTipodtsVariedades
    Params = <>
    OnNewRecord = cdsNewRecord
    Left = 176
    Top = 320
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
    Left = 112
    Top = 328
  end
  object cdsTipo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCultivodtsTipos
    Params = <>
    OnNewRecord = cdsNewRecord
    Left = 104
    Top = 320
    object cdsTipoID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsTipoORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ORDEN'
    end
    object cdsTipoID_SISTEMA: TStringField
      DisplayLabel = 'Sistema'
      FieldName = 'ID_SISTEMA'
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
    end
    object cdsTipoTUMAX: TFloatField
      DisplayLabel = 'Tc-m'#225'x ('#176'C)'
      FieldName = 'TUMAX'
    end
    object cdsTipoKMAX: TFloatField
      DisplayLabel = 'Km'#225'x'
      FieldName = 'KMAX'
    end
    object cdsTipoKCO: TFloatField
      DisplayLabel = 'Kco'
      FieldName = 'KCO'
    end
    object cdsTipoXKMAX: TFloatField
      FieldName = 'XKMAX'
    end
    object cdsTipoPRO: TFloatField
      DisplayLabel = 'Pro (m)'
      FieldName = 'PRO'
    end
    object cdsTipoPRMAX: TFloatField
      DisplayLabel = 'Prm'#225'x (m)'
      FieldName = 'PRMAX'
    end
    object cdsTipoALPHA0: TFloatField
      DisplayLabel = 'Alpha0'
      FieldName = 'ALPHA0'
    end
    object cdsTipoALPHA1: TFloatField
      DisplayLabel = 'Alpha1'
      FieldName = 'ALPHA1'
    end
    object cdsTipoALPHA2: TFloatField
      DisplayLabel = 'Alpha2'
      FieldName = 'ALPHA2'
    end
    object cdsTipoALPHA3: TFloatField
      DisplayLabel = 'Alpha3'
      FieldName = 'ALPHA3'
    end
    object cdsTipoALPHA4: TFloatField
      DisplayLabel = 'Alpha4'
      FieldName = 'ALPHA4'
    end
    object cdsTipoALPHA5: TFloatField
      DisplayLabel = 'Alpha5'
      FieldName = 'ALPHA5'
    end
    object cdsTipoID_CULTIVO: TStringField
      FieldName = 'ID_CULTIVO'
      Size = 38
    end
    object cdsTipodtsVariedades: TDataSetField
      FieldName = 'dtsVariedades'
    end
    object cdsTipodtsFenologias: TDataSetField
      FieldName = 'dtsFenologias'
    end
  end
  object cdsFenologia: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTipodtsFenologias
    Params = <>
    OnNewRecord = cdsNewRecord
    Left = 256
    Top = 320
    object cdsFenologiaID_FENOLOGIA: TStringField
      FieldName = 'ID_FENOLOGIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object cdsFenologiaORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ORDEN'
    end
    object cdsFenologiaNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsFenologiaCLAVE: TStringField
      DisplayLabel = 'Clave'
      FieldName = 'CLAVE'
      Size = 50
    end
    object cdsFenologiaDGC: TFloatField
      DisplayLabel = #176'C'
      FieldName = 'DGC'
    end
    object cdsFenologiaID_TIPO: TStringField
      FieldName = 'ID_TIPO'
      Size = 38
    end
  end
  object dsCultivo: TDataSource
    DataSet = cdsCultivo
    Left = 40
    Top = 328
  end
  object cdsCultivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCultivos'
    RemoteServer = dspConexion
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 32
    Top = 320
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
    object cdsCultivodtsTipos: TDataSetField
      FieldName = 'dtsTipos'
    end
  end
  object dxSkinController: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2007Blue'
    Left = 158
    Top = 16
  end
  object opnDialog: TOpenDialog
    Filter = 'CSV delimitado por comas (.csv)|*.csv'
    Left = 286
    Top = 16
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 40
    Top = 80
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    RemoteServer = dspConexion
    StoreDefs = True
    AfterPost = cdsAfterPost
    AfterDelete = cdsAfterPost
    OnNewRecord = cdsNewRecord
    Left = 32
    Top = 72
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
  end
  object sdExcel: TSaveDialog
    Filter = 'Microsoft excel 97/2000/XP (.xls)|*.xls'
    Left = 352
    Top = 16
  end
  object dsConsultaGeneral: TDataSource
    DataSet = cdsConsultaGeneral
    Left = 40
    Top = 392
  end
  object cdsConsultaGeneral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultaGeneral'
    RemoteServer = dspConexion
    OnCalcFields = cdsConsultaGeneralCalcFields
    OnNewRecord = cdsNewRecord
    Left = 32
    Top = 384
    object cdsConsultaGeneralUSUSARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUSARIO'
      Size = 30
    end
    object cdsConsultaGeneralPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 50
    end
    object cdsConsultaGeneralUBICACION: TStringField
      DisplayLabel = 'Ubicaci'#243'n'
      FieldName = 'UBICACION'
      Size = 50
    end
    object cdsConsultaGeneralESTACION: TStringField
      DisplayLabel = 'Estacion'
      FieldName = 'ESTACION'
      Size = 50
    end
    object cdsConsultaGeneralSIEMBRA: TStringField
      DisplayLabel = 'Siembra'
      FieldName = 'SIEMBRA'
      Size = 50
    end
    object cdsConsultaGeneralFECHA: TSQLTimeStampField
      DisplayLabel = 'Fecha de siembra'
      FieldName = 'FECHA'
    end
    object cdsConsultaGeneralRENDIMIENTO: TFloatField
      DisplayLabel = 'Rendimiento'
      FieldName = 'RENDIMIENTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaGeneralCULTIVO: TStringField
      DisplayLabel = 'Cultivo'
      FieldName = 'CULTIVO'
      Size = 50
    end
    object cdsConsultaGeneralCICLO: TStringField
      DisplayLabel = 'Ciclo agr'#237'cola'
      FieldName = 'CICLO'
      Size = 50
    end
    object cdsConsultaGeneralVARIEDAD: TStringField
      DisplayLabel = 'Variedad'
      FieldName = 'VARIEDAD'
      Size = 50
    end
    object cdsConsultaGeneralTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 50
    end
    object cdsConsultaGeneralINI: TSQLTimeStampField
      DisplayLabel = 'Inicio'
      FieldName = 'INI'
    end
    object cdsConsultaGeneralHORAS: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'HORAS'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaGeneralAVANCE: TFloatField
      DisplayLabel = 'Superficie (ha)'
      FieldName = 'AVANCE'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaGeneralGASTO: TFloatField
      DisplayLabel = 'Q (lps)'
      FieldName = 'GASTO'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaGeneralVOLUMEN: TFloatField
      DisplayLabel = 'Volumen'
      FieldKind = fkCalculated
      FieldName = 'VOLUMEN'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaGeneralLAMINA: TFloatField
      DisplayLabel = 'Ln (cm)'
      FieldName = 'LAMINA'
      DisplayFormat = '#,##0.00'
    end
    object cdsConsultaGeneralLAMINA_BRUTA: TFloatField
      DisplayLabel = 'Lb (cm)'
      FieldKind = fkCalculated
      FieldName = 'LAMINA_BRUTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaGeneralEA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'EA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsConsultaGeneralProdAgua: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ProdAgua'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
end
