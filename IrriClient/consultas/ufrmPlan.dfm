object frmPlan: TfrmPlan
  Left = 0
  Top = 0
  Caption = 'Calendario Preliminar'
  ClientHeight = 643
  ClientWidth = 990
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 990
    Height = 643
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 620
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPredicciones
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skAverage
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1LAMINA
        end
        item
          Kind = skSum
          Column = cxGrid1DBTableView1LAMINA_BRUTA
        end
        item
          Kind = skCount
          Column = cxGrid1DBTableView1NUMERO_RIEGO
        end
        item
          Kind = skMax
          Column = cxGrid1DBTableView1DGCA
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1NUMERO_RIEGO: TcxGridDBColumn
        Caption = 'No. de riego'
        DataBinding.FieldName = 'NUMERO_RIEGO'
      end
      object cxGrid1DBTableView1FECHA_RIEGO: TcxGridDBColumn
        Caption = 'Fecha'
        DataBinding.FieldName = 'FECHA_RIEGO'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ShowTime = False
        Width = 60
      end
      object cxGrid1DBTableView1LAMINA: TcxGridDBColumn
        Caption = 'Lamina neta (cm)'
        DataBinding.FieldName = 'LAMINA'
        Width = 91
      end
      object cxGrid1DBTableView1LAMINA_BRUTA: TcxGridDBColumn
        Caption = 'Lamina bruta (cm)'
        DataBinding.FieldName = 'LAMINA_BRUTA'
        Width = 95
      end
      object cxGrid1DBTableView1TIEMPO: TcxGridDBColumn
        Caption = 'Tiempo de riego (h)'
        DataBinding.FieldName = 'TIEMPO'
        Width = 98
      end
      object cxGrid1DBTableView1DGCA: TcxGridDBColumn
        Caption = 'GDA ('#176'C)'
        DataBinding.FieldName = 'DGCA'
        Width = 57
      end
      object cxGrid1DBTableView1ETAPA: TcxGridDBColumn
        Caption = 'Etapa fenol'#243'gica'
        DataBinding.FieldName = 'ETAPA'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object dsPredicciones: TDataSource
    DataSet = cdsPredicciones
    Left = 416
    Top = 328
  end
  object cdsPredicciones: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NUMERO_RIEGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FECHA_RIEGO'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'LAMINA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'DGCA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'ETAPA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 51
      end
      item
        Name = 'MENSAJE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 256
      end>
    IndexDefs = <>
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
        Name = 'fechaSiembra'
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
    ProviderName = 'dspPlan'
    StoreDefs = True
    OnCalcFields = cdsPrediccionesCalcFields
    Left = 344
    Top = 328
    object cdsPrediccionesNUMERO_RIEGO: TIntegerField
      FieldName = 'NUMERO_RIEGO'
      Required = True
    end
    object cdsPrediccionesFECHA_RIEGO: TDateTimeField
      FieldName = 'FECHA_RIEGO'
      Required = True
    end
    object cdsPrediccionesLAMINA: TFloatField
      FieldName = 'LAMINA'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsPrediccionesLAMINA_BRUTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LAMINA_BRUTA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsPrediccionesTIEMPO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TIEMPO'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object cdsPrediccionesDGCA: TFloatField
      FieldName = 'DGCA'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object cdsPrediccionesETAPA: TStringField
      FieldName = 'ETAPA'
      Required = True
      Size = 51
    end
    object cdsPrediccionesMENSAJE: TStringField
      FieldName = 'MENSAJE'
      Required = True
      Size = 256
    end
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
        Name = 'fechaSiembra'
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
    SQLConnection = dmData.cntConexion
    ServerMethodName = 'TsmModulo.GetPlan'
    Left = 272
    Top = 272
  end
  object dspPlan: TDataSetProvider
    DataSet = ssmPlan
    Left = 272
    Top = 328
  end
end
