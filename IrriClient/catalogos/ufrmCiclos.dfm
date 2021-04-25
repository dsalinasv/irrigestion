inherited frmCiclos: TfrmCiclos
  Caption = 'Ciclos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    LookAndFeel.SkinName = ''
    inherited tabListado: TcxTabSheet
      inherited grdDatos: TcxGrid
        LookAndFeel.SkinName = ''
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
      inherited ScrollBox1: TcxScrollBox
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
    PixelsPerInch = 96
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
