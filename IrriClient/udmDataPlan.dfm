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
      'ServerConnection=TsmModulo.GetConnection')
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
  object dsEstacion: TDataSource
    DataSet = cdsEstacion
    Left = 115
    Top = 146
  end
  object cdsEstacion: TClientDataSet
    Aggregates = <>
    DataSetField = cdsDistritodtsEstacion
    Params = <>
    Left = 107
    Top = 138
    object cdsEstacionID_ESTACION: TStringField
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
  end
  object dsDistrito: TDataSource
    DataSet = cdsDistrito
    Left = 40
    Top = 144
  end
  object cdsDistrito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDistrito'
    RemoteServer = dspConexion
    Left = 32
    Top = 136
    object cdsDistritoID_DISTRITO: TStringField
      FieldName = 'ID_DISTRITO'
      Required = True
      Size = 38
    end
    object cdsDistritoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object cdsDistritodtsEstacion: TDataSetField
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
    Filtered = True
    Params = <>
    ProviderName = 'dspSistemas'
    RemoteServer = dspConexion
    Left = 32
    Top = 200
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
    Left = 112
    Top = 208
  end
  object dsVariedad: TDataSource
    DataSet = cdsVariedad
    Left = 188
    Top = 264
  end
  object cdsVariedad: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'ID_TIPO'
        ParamType = ptInput
      end>
    Left = 180
    Top = 256
    object cdsVariedadID_VARIEDAD: TStringField
      FieldName = 'ID_VARIEDAD'
      Required = True
      Size = 38
    end
    object cdsVariedadNOMBRE: TStringField
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
    Top = 264
  end
  object dsCultivo: TDataSource
    DataSet = cdsCultivo
    Left = 40
    Top = 264
  end
  object cdsCultivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCultivo'
    RemoteServer = dspConexion
    Left = 32
    Top = 256
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
    OnCalcFields = cdsTipoCalcFields
    Left = 104
    Top = 256
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
    object cdsTipoPRMAX: TFloatField
      DisplayLabel = 'Prm'#225'x (m)'
      FieldName = 'PRMAX'
    end
    object cdsTipoTUMAX: TFloatField
      DisplayLabel = 'Tc-m'#225'x ('#176'C)'
      FieldName = 'TUMAX'
    end
    object cdsTipoTUMIN: TFloatField
      DisplayLabel = 'Tc-min ('#176'C)'
      FieldName = 'TUMIN'
    end
    object cdsTipoID_SISTEMA: TStringField
      FieldName = 'ID_SISTEMA'
      Size = 38
    end
    object cdsTipoTIPO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TIPO'
      Size = 50
      Calculated = True
    end
  end
  object cdsSubsistema: TClientDataSet
    Aggregates = <>
    DataSetField = cdsSistemadtsSubsistemas
    Filtered = True
    Params = <>
    Left = 104
    Top = 200
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
  object ssmPlan: TSqlServerMethod
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
        Name = 'FechaSiembra'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'ha'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Precision = 8
        Name = 'humedad'
        ParamType = ptInput
      end
      item
        DataType = ftDataSet
        Name = 'ReturnParameter'
        ParamType = ptResult
      end>
    SQLConnection = cntConexion
    ServerMethodName = 'TsmModulo.GetPlan'
    Left = 32
    Top = 320
  end
  object dsSuelo: TDataSource
    DataSet = cdsSuelo
    Left = 32
    Top = 88
  end
  object cdsSuelo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSuelos'
    RemoteServer = dspConexion
    OnCalcFields = cdsSueloCalcFields
    Left = 24
    Top = 88
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
end
