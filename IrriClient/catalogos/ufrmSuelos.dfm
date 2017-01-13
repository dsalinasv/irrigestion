inherited frmSuelos: TfrmSuelos
  Left = 255
  Top = 201
  Caption = 'Suelos'
  ExplicitWidth = 600
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    inherited tabListado: TcxTabSheet
      Caption = 'Clases'
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 583
      ExplicitHeight = 418
      inherited grdDatos: TcxGrid
        Width = 583
        Height = 418
        ExplicitWidth = 583
        ExplicitHeight = 418
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmData.dsSuelo
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 583
      ExplicitHeight = 418
      inherited ScrollBox1: TcxScrollBox
        Width = 583
        Height = 418
        ExplicitWidth = 583
        ExplicitHeight = 418
        object cxDBLabel1: TcxDBLabel
          Left = -1
          Top = 168
          DataBinding.DataField = 'LIMO'
          DataBinding.DataSource = dmData.dsSuelo
          Transparent = True
          Height = 21
          Width = 100
        end
        object cxLabel1: TcxLabel
          Left = -1
          Top = 147
          Caption = 'Limo (%)'
          Transparent = True
        end
        object DBEdit1: TcxDBTextEdit
          Left = -1
          Top = 22
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsSuelo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 500
        end
        object DBEdit2: TcxDBTextEdit
          Left = -1
          Top = 72
          DataBinding.DataField = 'ARCILLA'
          DataBinding.DataSource = dmData.dsSuelo
          TabOrder = 3
          Width = 100
        end
        object DBEdit3: TcxDBTextEdit
          Left = -1
          Top = 122
          DataBinding.DataField = 'ARENA'
          DataBinding.DataSource = dmData.dsSuelo
          TabOrder = 5
          Width = 100
        end
        object Label1: TcxLabel
          Left = -1
          Top = 3
          Caption = 'Clase textural'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label2: TcxLabel
          Left = -1
          Top = 49
          Caption = 'Arcilla (%)'
          FocusControl = DBEdit2
          Transparent = True
        end
        object Label3: TcxLabel
          Left = -1
          Top = 101
          Caption = 'Arena (%)'
          FocusControl = DBEdit3
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 1
          Top = 185
          Caption = 'MO (%)'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 1
          Top = 208
          DataBinding.DataField = 'MO'
          DataBinding.DataSource = dmData.dsSuelo
          TabOrder = 9
          Width = 100
        end
        object cxLabel3: TcxLabel
          Left = 1
          Top = 227
          Caption = 'Da (g/cm'#179')'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 1
          Top = 248
          DataBinding.DataField = 'DA'
          DataBinding.DataSource = dmData.dsSuelo
          TabOrder = 11
          Width = 100
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited barManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager1Bar1: TdxBar
      FloatClientWidth = 58
      FloatClientHeight = 208
    end
  end
  inherited imgDatos16: TcxImageList
    FormatVersion = 1
  end
  inherited imgDatos32: TcxImageList
    FormatVersion = 1
  end
end
