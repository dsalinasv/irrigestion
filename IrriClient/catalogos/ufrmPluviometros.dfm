inherited frmPluviometros: TfrmPluviometros
  Left = 207
  Top = 228
  Caption = 'Pluviometros'
  ClientHeight = 582
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    Height = 460
    Properties.ActivePage = tabDatos
    ExplicitHeight = 456
    ClientRectBottom = 454
    inherited tabListado: TcxTabSheet
      ExplicitHeight = 428
      inherited grdDatos: TcxGrid
        Height = 428
        ExplicitHeight = 428
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmData.dsPluviometro
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      ExplicitHeight = 424
      inherited ScrollBox1: TcxScrollBox
        Height = 428
        ExplicitHeight = 424
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 2
          Top = 68
          DataBinding.DataField = 'ALTITUD'
          TabOrder = 1
          Visible = False
          Width = 100
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 2
          Top = 114
          DataBinding.DataField = 'ALTURA'
          TabOrder = 2
          Visible = False
          Width = 100
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 2
          Top = 160
          DataBinding.DataField = 'LATITUD'
          TabOrder = 3
          Visible = False
          Width = 100
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 2
          Top = 206
          DataBinding.DataField = 'LONGITUD'
          TabOrder = 4
          Visible = False
          Width = 100
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 2
          Top = 252
          DataBinding.DataField = 'UBICACION'
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Visible = False
          Width = 500
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 53
          Width = 302
          Height = 359
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 13
          ExplicitHeight = 355
          object cxGrid1DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Enabled = False
            Navigator.Buttons.First.Visible = False
            Navigator.Buttons.PriorPage.Enabled = False
            Navigator.Buttons.PriorPage.Visible = False
            Navigator.Buttons.Prior.Enabled = False
            Navigator.Buttons.Prior.Visible = False
            Navigator.Buttons.Next.Enabled = False
            Navigator.Buttons.Next.Visible = False
            Navigator.Buttons.NextPage.Enabled = False
            Navigator.Buttons.NextPage.Visible = False
            Navigator.Buttons.Last.Enabled = False
            Navigator.Buttons.Last.Visible = False
            Navigator.Buttons.Insert.Enabled = False
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Append.Visible = True
            Navigator.Buttons.Edit.Enabled = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Enabled = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Refresh.Enabled = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Enabled = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Enabled = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Enabled = False
            Navigator.Buttons.Filter.Visible = False
            Navigator.Visible = True
            DataController.DataSource = dmData.dsLluvia
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'PP'
                Column = cxGrid1DBTableView1PP
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.NavigatorHints = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.Appending = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGrid1DBTableView1FECHA: TcxGridDBColumn
              DataBinding.FieldName = 'FECHA'
            end
            object cxGrid1DBTableView1PP: TcxGridDBColumn
              DataBinding.FieldName = 'PP'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxLabel1: TcxLabel
          Left = 4
          Top = 277
          Caption = 'Registros'
          Transparent = True
          Visible = False
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 45
          Caption = 'Altitud (msnm)'
          Transparent = True
          Visible = False
        end
        object cxLabel3: TcxLabel
          Left = 4
          Top = 93
          Caption = 'Altura (m)'
          Transparent = True
          Visible = False
        end
        object cxLabel4: TcxLabel
          Left = 3
          Top = 231
          Caption = 'Ubicacion'
          Transparent = True
          Visible = False
        end
        object cxLabel5: TcxLabel
          Left = 4
          Top = 139
          Caption = 'Latitud ('#176')'
          Transparent = True
          Visible = False
        end
        object cxLabel6: TcxLabel
          Left = 4
          Top = 185
          Caption = 'Longitud ('#176')'
          Transparent = True
          Visible = False
        end
        object DBEdit1: TcxDBTextEdit
          Left = 3
          Top = 26
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'nombre'
          DataBinding.DataSource = dmData.dsPluviometro
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 566
        end
        object Label1: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Nombre'
          FocusControl = DBEdit1
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
