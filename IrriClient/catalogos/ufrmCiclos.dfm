inherited frmCiclos: TfrmCiclos
  Caption = 'Ciclos'
  ExplicitWidth = 608
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    inherited tabListado: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 583
      ExplicitHeight = 408
      inherited grdDatos: TcxGrid
        Width = 583
        Height = 408
        ExplicitWidth = 583
        ExplicitHeight = 408
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmData.dsCiclo
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
      ExplicitHeight = 408
      inherited ScrollBox1: TcxScrollBox
        Width = 583
        Height = 408
        ExplicitWidth = 583
        ExplicitHeight = 408
        object cxLabel1: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Nombre'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 3
          Top = 26
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsCiclo
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 500
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
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      FloatClientWidth = 65
      FloatClientHeight = 324
    end
  end
  inherited imgDatos16: TcxImageList
    FormatVersion = 1
  end
  inherited imgDatos32: TcxImageList
    FormatVersion = 1
  end
end
