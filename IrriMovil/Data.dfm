object dmData: TdmData
  OldCreateOrder = False
  Height = 492
  Width = 755
  object cntDatos: TSQLConnection
    ConnectionName = 'DataSnapCONNECTION'
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=23.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b'
      'DriverName=DataSnap'
      'HostName=cevaf.redirectme.net'
      'Port=8080'
      'Filters={}'
      'CommunicationProtocol=http'
      'ServerConnection=TsmModulo.GetConnection')
    Left = 32
    Top = 24
  end
  object dspConexion: TDSProviderConnection
    ServerClassName = 'TsmModulo'
    SQLConnection = cntDatos
    Left = 128
    Top = 24
  end
  object cdsUser: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'UCLOGIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UCPASSWORD'
        ParamType = ptInput
      end>
    ProviderName = 'dspUser'
    RemoteServer = dspConexion
    Left = 35
    Top = 224
    object cdsUserID_USUARIO: TStringField
      FieldName = 'ID_USUARIO'
      Required = True
      Size = 38
    end
    object cdsUserNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
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
end
