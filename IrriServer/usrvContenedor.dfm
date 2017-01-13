object IrriModel: TIrriModel
  OldCreateOrder = False
  DisplayName = 'IrriModel'
  OnStart = ServiceStart
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    AutoStart = False
    Left = 96
    Top = 11
  end
  object DSHTTPService1: TDSHTTPService
    HttpPort = 8080
    Server = DSServer1
    Filters = <>
    Left = 96
    Top = 135
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 200
    Top = 11
  end
end
