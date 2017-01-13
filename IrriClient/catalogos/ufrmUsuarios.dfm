inherited frmUsuarios: TfrmUsuarios
  Caption = 'Usuarios'
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
          DataController.DataSource = dmData.dsUsuario
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
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
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 78
          Top = 13
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsUsuario
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 491
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 78
          Top = 45
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = dmData.dsUsuario
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 491
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 78
          Top = 77
          DataBinding.DataField = 'PASSWORD'
          DataBinding.DataSource = dmData.dsUsuario
          TabOrder = 2
          Width = 491
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 16
          Top = 112
          Caption = 'Activo'
          DataBinding.DataField = 'ACTIVO'
          DataBinding.DataSource = dmData.dsUsuario
          Properties.NullStyle = nssInactive
          Properties.ValueChecked = 1
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = 0
          TabOrder = 3
          Transparent = True
          Width = 121
        end
        object lblPassword: TcxLabel
          Left = 16
          Top = 78
          Caption = 'Contrase'#241'a'
          Transparent = True
        end
        object lblLogin: TcxLabel
          Left = 16
          Top = 46
          Caption = 'Login'
          Transparent = True
        end
        object lblNombre: TcxLabel
          Left = 16
          Top = 14
          Caption = 'Nombre'
          Transparent = True
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
