inherited frmMain: TfrmMain
  Left = 259
  Top = 174
  Caption = 'Parcelas'
  ClientHeight = 682
  ClientWidth = 1264
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1280
  ExplicitHeight = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    Width = 1264
    Height = 560
    Properties.ActivePage = tabDatos
    LookAndFeel.SkinName = ''
    ExplicitWidth = 1264
    ExplicitHeight = 560
    ClientRectBottom = 560
    ClientRectRight = 1264
    inherited tabListado: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1256
      ExplicitHeight = 532
      inherited grdDatos: TcxGrid
        Width = 1264
        Height = 536
        LookAndFeel.SkinName = ''
        ExplicitWidth = 1256
        ExplicitHeight = 532
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dmData.dsParcela
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1256
      ExplicitHeight = 532
      inherited ScrollBox1: TcxScrollBox
        Width = 1264
        Height = 536
        ExplicitWidth = 1256
        ExplicitHeight = 532
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 265
          Height = 534
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 530
          DesignSize = (
            265
            534)
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 61
            Top = 8
            DataBinding.DataField = 'NOMBRE'
            DataBinding.DataSource = dmData.dsParcela
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 191
          end
          object cxLabel14: TcxLabel
            Left = 3
            Top = 9
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Nombre'
            FocusControl = cxDBTextEdit9
            Transparent = True
          end
          object txtSuperficie: TcxDBTextEdit
            Left = 105
            Top = 37
            DataBinding.DataField = 'SUPERFICIE'
            DataBinding.DataSource = dmData.dsParcela
            TabOrder = 2
            Width = 147
          end
          object cxLabel8: TcxLabel
            Left = 3
            Top = 38
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Superficie total (ha)'
            FocusControl = txtSuperficie
            Transparent = True
          end
          object txtUbicacion: TcxDBTextEdit
            Left = 61
            Top = 64
            DataBinding.DataField = 'UBICACION'
            DataBinding.DataSource = dmData.dsParcela
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 191
          end
          object cxLabel11: TcxLabel
            Left = 3
            Top = 65
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Ubicaci'#243'n'
            FocusControl = txtUbicacion
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 3
            Top = 88
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Estado'
            Transparent = True
          end
          object cmbEstados: TcxDBLookupComboBox
            Left = 5
            Top = 105
            DataBinding.DataField = 'ID_ESTADO'
            DataBinding.DataSource = dmData.dsParcela
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ID_ESTADO'
            Properties.ListColumns = <
              item
                FieldName = 'NOMBRE'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dmData.dsEstado
            Properties.MaxLength = 0
            TabOrder = 7
            Width = 247
          end
          object Label2: TcxLabel
            Left = 3
            Top = 129
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Estaci'#243'n'
            Transparent = True
          end
          object cmbEstaciones: TcxDBLookupComboBox
            Left = 5
            Top = 146
            DataBinding.DataField = 'ID_ESTACION'
            DataBinding.DataSource = dmData.dsParcela
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ID_ESTACION'
            Properties.ListColumns = <
              item
                FieldName = 'NOMBRE'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dmData.dsEstacion
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 247
          end
          object Label3: TcxLabel
            Left = 3
            Top = 173
            Anchors = [akLeft, akTop, akRight]
            Caption = 'Pluvi'#243'metro'
            Transparent = True
          end
          object cxButton1: TcxButton
            Left = 224
            Top = 190
            Width = 28
            Height = 25
            Action = actPluviometros
            TabOrder = 11
          end
          object cmbPluviometros: TcxDBLookupComboBox
            Left = 5
            Top = 192
            DataBinding.DataField = 'ID_PLUVIOMETRO'
            DataBinding.DataSource = dmData.dsParcela
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'ID_PLUVIOMETRO'
            Properties.ListColumns = <
              item
                FieldName = 'NOMBRE'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dmData.dsPluviometro
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 213
          end
          object cxLabel12: TcxLabel
            Left = 3
            Top = 219
            Anchors = [akLeft, akTop, akRight]
            Caption = 'HA (cm'#179'/cm'#179')'
            Transparent = True
          end
          object txtHA: TcxDBTextEdit
            Left = 78
            Top = 219
            DataBinding.DataField = 'HA'
            DataBinding.DataSource = dmData.dsParcela
            Properties.ReadOnly = True
            TabOrder = 14
            Width = 140
          end
          object btnHA: TcxButton
            Left = 224
            Top = 219
            Width = 28
            Height = 25
            Action = actHA
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000010101161F1F1F8022212188222121882221218822212188222121882221
              218822212188222121881313136E0000000B0000000000000000000000000000
              000038373785D6D6D6FFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECC
              CCFFCECCCCFFCECCCCFFC1BFBEFC0101012A0000000000000000000000000000
              00004342428FD2D1D1FF5C5C5AFF797978FFCECCCCFF7F7F7EFF5D5D5CFFCECC
              CCFF555555FF878787FFCECCCCFF0202022F0000000000000000000000000000
              00004342428FDADADAFF848484FF9E9D9DFFCECCCCFF9B9B9BFF8E8E8EFFCECC
              CCFF6C6C6CFF909090FFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD2D2D2FFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECC
              CCFFCECCCCFFCECCCCFFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD9D9D9FF7E7E7EFF9E9E9EFFCECCCCFF9B9B9BFF90908FFFCECC
              CCFF757574FFA0A0A0FFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD2D2D2FF868584FF8A8989FFCECCCCFF828281FF878685FFCECC
              CCFF575757FF858585FFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD8D8D8FFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECC
              CCFFCECCCCFFCECCCCFFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD3D3D3FF7F7E7CFF8A8A89FFCECCCCFF898988FF8F8E8CFFCECC
              CCFF626260FF929190FFCECCCCFF0202022F0000000000000000000000000000
              00004342428FD8D8D8FF8E8E8EFFA0A0A0FFCECCCCFF9F9F9FFF828282FFCECC
              CCFF717171FF9D9D9DFFCECCCCFF0202022F0000000000000000000000000000
              00004342428FCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECCCCFFCECC
              CCFFCECCCCFFCECCCCFFCECCCCFF0202022F0000000000000000000000000000
              00004342428FE0C29DFFE0C29DFFE0C29DFFE0C29DFFE0C29DFFE0C29DFFE0C2
              9DFFE0C29DFFE0C29DFFC8BFB6FF0202022F0000000000000000000000000000
              00004342428FCFAB81FFCFAB81FFCFAB81FFCFAB81FFCFAB81FFCFAB81FFCFAB
              81FFCFAB81FFCFAB81FFBAAC9EFF0202022F0000000000000000000000000000
              00004342428FB77941FFB77941FFB77941FFB77941FFB77941FFB77941FFB779
              41FFB77941FFB77941FFBAA898FF0202022F0000000000000000000000000000
              00004341418DE7E2DEFFE6DED7FFE6DED7FFE6DED7FFE6DED7FFE6DED7FFE6DE
              D7FFE6DED7FFE6DED7FFCCC9C7FF010101270000000000000000000000000000
              0000100F0F2D807F7EA17F7E7EA47F7E7EA47F7E7EA47F7E7EA47F7E7EA47F7E
              7EA47F7E7EA47F7E7DA44B4A4A7F000000010000000000000000}
            OptionsImage.Images = imgDatos16
            TabOrder = 15
          end
        end
        object Panel3: TPanel
          Left = 265
          Top = 0
          Width = 997
          Height = 534
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 989
          ExplicitHeight = 530
          object DBGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 997
            Height = 484
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 989
            ExplicitHeight = 480
            object DBGrid2DBTableView1: TcxGridDBTableView
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
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dmData.dsSiembra
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.Appending = True
              OptionsView.GroupByBox = False
              object DBGrid2DBTableView1NOMBRE: TcxGridDBColumn
                DataBinding.FieldName = 'NOMBRE'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.CharCase = ecUpperCase
                Width = 243
              end
              object DBGrid2DBTableView1FECHA: TcxGridDBColumn
                DataBinding.FieldName = 'FECHA'
                PropertiesClassName = 'TcxDateEditProperties'
                Width = 70
              end
              object DBGrid2DBTableView1SUPERFICIE: TcxGridDBColumn
                DataBinding.FieldName = 'SUPERFICIE'
                Width = 75
              end
              object DBGrid2DBTableView1GASTO: TcxGridDBColumn
                DataBinding.FieldName = 'GASTO'
                Width = 33
              end
              object DBGrid2DBTableView1HUMEDAD: TcxGridDBColumn
                DataBinding.FieldName = 'HUMEDAD'
                Width = 50
              end
              object DBGrid2DBTableView1ID_CICLO: TcxGridDBColumn
                DataBinding.FieldName = 'ID_CICLO'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.CharCase = ecUpperCase
                Properties.KeyFieldNames = 'ID_CICLO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOMBRE'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dmData.dsCiclo
                Width = 162
              end
              object DBGrid2DBTableView1RENDIMIENTO: TcxGridDBColumn
                DataBinding.FieldName = 'RENDIMIENTO'
              end
              object DBGrid2DBTableView1COSECHADA: TcxGridDBColumn
                DataBinding.FieldName = 'COSECHADA'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 58
              end
            end
            object DBGrid2DBTableView2: TcxGridDBTableView
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
              Navigator.Buttons.Append.Enabled = False
              Navigator.Buttons.Append.Visible = False
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
              DataController.DataModeController.GridMode = True
              DataController.DataSource = dmData.dsRiego
              DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.NavigatorHints = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              Styles.OnGetContentStyle = DBGrid3DBTableView1StylesGetContentStyle
              object DBGrid2DBTableView2INI: TcxGridDBColumn
                DataBinding.FieldName = 'INI'
              end
              object DBGrid2DBTableView2HORAS: TcxGridDBColumn
                DataBinding.FieldName = 'HORAS'
              end
              object DBGrid2DBTableView2GASTO: TcxGridDBColumn
                DataBinding.FieldName = 'GASTO'
              end
              object DBGrid2DBTableView2AVANCE: TcxGridDBColumn
                DataBinding.FieldName = 'AVANCE'
              end
              object DBGrid2DBTableView2VOLUMEN: TcxGridDBColumn
                DataBinding.FieldName = 'VOLUMEN'
              end
              object DBGrid2DBTableView2LAMINA: TcxGridDBColumn
                DataBinding.FieldName = 'LAMINA'
              end
              object DBGrid2DBTableView2LAMINA_BRUTA: TcxGridDBColumn
                DataBinding.FieldName = 'LAMINA_BRUTA'
              end
              object DBGrid2DBTableView2EA: TcxGridDBColumn
                DataBinding.FieldName = 'EA'
              end
              object DBGrid2DBTableView2NOTAS: TcxGridDBColumn
                DataBinding.FieldName = 'NOTAS'
                PropertiesClassName = 'TcxMemoProperties'
                Width = 300
              end
            end
            object DBGrid2Level1: TcxGridLevel
              GridView = DBGrid2DBTableView1
              object DBGrid2Level2: TcxGridLevel
                GridView = DBGrid2DBTableView2
              end
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 484
            Width = 997
            Height = 50
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 480
            ExplicitWidth = 989
            DesignSize = (
              997
              50)
            object cmbVariedad: TcxDBLookupComboBox
              Left = 607
              Top = 14
              Anchors = [akLeft, akBottom]
              DataBinding.DataField = 'ID_VARIEDAD'
              DataBinding.DataSource = dmData.dsSiembra
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ID_VARIEDAD'
              Properties.ListColumns = <
                item
                  FieldName = 'NOMBRE'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsVariedad
              Properties.MaxLength = 0
              TabOrder = 0
              Width = 150
            end
            object cxLabel17: TcxLabel
              Left = 555
              Top = 15
              Anchors = [akLeft, akBottom]
              Caption = 'Variedad'
              Transparent = True
            end
            object txtEficiencia: TcxDBButtonEdit
              Left = 501
              Top = 14
              Anchors = [akLeft, akBottom]
              DataBinding.DataField = 'EFICIENCIA'
              DataBinding.DataSource = dmData.dsSiembra
              Properties.Buttons = <
                item
                  Action = actSubsistema
                  Default = True
                  Kind = bkGlyph
                end>
              Properties.Images = imgDatos16
              Properties.ReadOnly = True
              TabOrder = 2
              Width = 48
            end
            object cxLabel16: TcxLabel
              Left = 425
              Top = 15
              Anchors = [akLeft, akBottom]
              Caption = 'Eficiencia (%)'
              Transparent = True
            end
            object cmbTipo: TcxDBLookupComboBox
              Left = 249
              Top = 14
              Anchors = [akLeft, akBottom]
              DataBinding.DataField = 'ID_TIPO'
              DataBinding.DataSource = dmData.dsSiembra
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ID_TIPO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOMBRE'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsTipo
              Properties.MaxLength = 0
              TabOrder = 4
              Width = 170
            end
            object cxLabel1: TcxLabel
              Left = 202
              Top = 15
              Anchors = [akLeft, akBottom]
              Caption = 'Sistema'
              Transparent = True
            end
            object cmbCultivo: TcxDBLookupComboBox
              Left = 46
              Top = 14
              Anchors = [akLeft, akBottom]
              DataBinding.DataField = 'ID_CULTIVO'
              DataBinding.DataSource = dmData.dsSiembra
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.GridMode = True
              Properties.KeyFieldNames = 'ID_CULTIVO'
              Properties.ListColumns = <
                item
                  FieldName = 'NOMBRE'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dmData.dsCultivo
              Properties.MaxLength = 0
              TabOrder = 6
              Width = 150
            end
            object cxLabel15: TcxLabel
              Left = 3
              Top = 15
              Anchors = [akLeft, akBottom]
              Caption = 'Cultivo'
              Transparent = True
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1264
    ExplicitWidth = 1264
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Parcelas'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'barManagerBar1'
        end
        item
          ToolbarName = 'barManagerBar2'
        end>
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
      FloatClientHeight = 160
      OneOnRow = False
    end
    object barManagerBar1: TdxBar [1]
      Caption = 'Riegos'
      CaptionButtons = <>
      DockedLeft = 363
      DockedTop = 0
      FloatLeft = 1092
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barManagerBar2: TdxBar [2]
      Caption = 'Ayuda'
      CaptionButtons = <>
      DockedLeft = 916
      DockedTop = 0
      FloatLeft = 1107
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Exportar Riegos'
      Category = 0
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actConsultar
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actCosecha
      Caption = 'Madurez Estimada'
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = actAgregar
      Category = 0
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = actRecalcular
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = actPronosticar
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = actEnviar
      Category = 0
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Action = actPlan
      Category = 0
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Action = actRiegos
      Category = 0
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = actSalir
      Category = 0
    end
  end
  inherited actAcciones: TActionList
    object actAgregar: TAction [0]
      Category = 'Riegos'
      Caption = 'Agregar Riego Inicial'
      ImageIndex = 9
      OnExecute = actAgregarExecute
    end
    object actCosecha: TAction [1]
      Category = 'Riegos'
      Caption = 'Cosecha Estimada'
      ImageIndex = 8
      OnExecute = actCosechaExecute
    end
    object actPronosticar: TAction [2]
      Category = 'Riegos'
      Caption = 'Pronosticar Riego'
      ImageIndex = 11
      OnExecute = actPronosticarExecute
    end
    object actSalir: TAction [3]
      Caption = 'Cerrar Sesi'#243'n'
      ImageIndex = 15
      OnExecute = actSalirExecute
    end
    object actRecalcular: TAction [4]
      Category = 'Riegos'
      Caption = 'Realcular '#250'ltima Ln'
      ImageIndex = 10
      OnExecute = actRecalcularExecute
      OnUpdate = actRecalcularUpdate
    end
    object actConsultar: TAction [5]
      Category = 'Riegos'
      Caption = 'Consultar Clima'
      ImageIndex = 7
      OnExecute = actConsultarExecute
    end
    object actHA: TAction
      ImageIndex = 6
      OnExecute = actHAExecute
    end
    object actSubsistema: TAction
      ImageIndex = 6
      OnExecute = actSubsistemaExecute
    end
    object actEnviar: TAction
      Category = 'Riegos'
      Caption = 'Enviar por correo'
      ImageIndex = 12
      OnExecute = actEnviarExecute
    end
    object actPlan: TAction
      Caption = 'Plan de Riegos'
      ImageIndex = 13
      OnExecute = actPlanExecute
    end
    object actRiegos: TAction
      Caption = 'Consultar Riegos'
      ImageIndex = 14
      OnExecute = actRiegosExecute
    end
    object actPluviometros: TAction
      ImageIndex = 0
      OnExecute = actPluviometrosExecute
    end
  end
  inherited imgDatos16: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          00000000000000000001000000371A1A1AA0576557DF698E6BF3648B69F34C5B
          50DF161716A20000003900000002000000000000000000000000000000000000
          00000000000101010155687265E05DAF58FF29AF29FF26BA2FFF2AC03DFF31BE
          49FF56B166FF536155E201010158000000010000000000000000000000000000
          000000000037687166E0409F31FF13A208FF24B324FF8ECA92FF96D19FFF35CB
          54FF29C94CFF3FB955FF526154E20000003A0000000000000000000000000000
          00061B1B1B9F64A257FF149000FF179E09FF2BAF29FFAFC4AFFFB7CCBBFF3AC9
          56FF29C748FF22C63BFF4FAF5BFF161716A30000000700000000000000000000
          0022636A61DD348D1EFF229009FF2A9E1AFF3AAD34FFA7BBA6FFAEC2B0FF44C5
          56FF35C54AFF2BC53DFF27BA33FF4B5A4BDF0000002400000000000000000000
          003B91998FF15BA146FF9FC795FFC5D7C2FFB9CBB7FFB9BDB9FFB4B8B5FFAABF
          ACFFB0C5B3FF8DCA91FF1FBB25FF608961F30000003E00000000000000000000
          003B979C95F19CC18EFFD0E2C9FFDBE5D8FFC4D4C0FFCCCFCBFFBEC1BEFFA4B8
          A3FFA7BCA6FF86C185FF1EB41AFF668D64F30000003E00000000000000000000
          00226B6C6BDDAFC8A4FFA2C794FF8FBF80FF73B462FFD2DECFFFC7D7C5FF47AF
          3CFF39AE2EFF35B32AFF36AF2BFF576556DF0000002400000000000000000000
          00061B1B1B9FBEC8B9FFAECCA0FF9FC590FF9CC68EFFEBF3E9FFE3EEE1FF70BC
          61FF57B547FF49B338FF72B569FF1C1C1CA30000000700000000000000000000
          000000000037727372E0BFCCB8FFB1CEA5FFA8CB9AFFD9E9D3FFD2E7CDFF82C0
          71FF6AB85AFF74B668FF6F786DE20000003A0000000000000000000000000000
          00000000000101010155727372E0C1CABCFFB7CDAEFFADCCA1FF9FC792FF93BF
          86FF9CBE93FF737871E202020258000000010000000000000000000000000000
          00000000000000000001000000371C1C1CA0707270DFA0A39EF39EA39BF37072
          6EDF1E1E1EA20000003900000002000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000400000006000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000150000
          0035000000620202029607070796000000270000000100000000000000000000
          00000000000000000006000000180000003A000000680505059B161616C9403F
          3FEB646362FC212121FF373737F4000000430000000000000000000000000000
          000000000048060606A21E1E1ECE4D4C4CED878686FDAFAEAEFFCDCDCCFFE2E2
          E1FFCDCCCCFF313131FF2E2E2EF40000003B0000000000000000000000000000
          0004090909AE595858FFD2D1D1FFE6E5E5FFEBEBEBFFEBEBEBFFEAE9E9FFEAEA
          E9FFCFCECEFF3D3D3DFF2C2C2CF40000003B0000000000000000000000000000
          00050B0B0BB26D6C6CFFE9E8E8FFEBEBEBFFEBEBEAFFEBEBEBFFEBEBEBFFEDED
          ECFFD3D3D3FF494949FF2E2E2EF40000003B0000000000000000000000000000
          00050E0E0EB2757474FFE9E9E8FFEDECECFFEDEDEDFFEEEDEDFFEEEEEEFFEFEF
          EFFFD7D7D7FF565656FF303030F40000003B0000000000000000000000000000
          0005111111B2818080FFEAEAE9FFEEEDEDFFEEEEEEFFF0EFEFFFF1F0F0FFF2F2
          F2FFDCDCDBFF636363FF343434F40000003B0000000000000000000000000000
          0005141414B2898888FFEBEAEAFFEFEEEEFFF1F0F0FFF4F4F4FFF4F4F4FFF6F6
          F6FFDEDEDEFF6E6E6EFF393939F40000003B0000000000000000000000000000
          0005161616B2919090FFE8E7E7FFE6E6E6FFDEDEDEFFD2D2D2FFC0BFBFFFAFAF
          AEFF959595FF707070FF4A4A4AF40000003B0000000000000000000000000000
          00051A1A1AB2868686FF9E9E9DFF989796FF92918FFF918F8DFF898885FF9190
          8DFF818181FF7A7A7AFF626262F40000003B0000000000000000000000000000
          00051C1C1CB2888888FF9F9E9CFFC6C4C1FFC6C5C0FFC3C1BCFF989895FFA4A3
          A0FF949493FF898989FF757575F40000003B0000000000000000000000000000
          00051F1F1FB2969696FFB4B3B2FFE1E0DFFFDBDBD9FFD3D3D0FFA4A3A2FFAEAD
          ABFFA2A2A1FF7D7D7DFF212121CF0000001F0000000000000000000000000000
          0005222222B2A2A2A2FFB9B8B7FFE4E4E4FFE2E2E1FFDDDDDCFFC0BFBEFEAFAE
          ACF86C6C6BF0242424D600000044000000000000000000000000000000000000
          000106060675313131CB272727B9202020A21212118C080808740303035C0101
          0146000000330000001C00000002000000000000000000000000000000000000
          0000000000050000001100000009000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          00000000000000000001000000371A1A1AA0555569DF626299F35D5D95F34A4A
          5EDF161617A20000003900000002000000000000000000000000000000000000
          00000000000101010155656576E05151CBFF1313DBFF0303E9FF0202F0FF0F0F
          EAFF3F3FCDFF4F4F64E201010158000000010000000000000000000000000000
          000000000037666675E03030C6FF0000D7FF0000E4FF0000EEFF0000F6FF0000
          FDFF0000FDFF2323DDFF4F4F64E20000003A0000000000000000000000000000
          00061B1B1B9F5757BFFF0000C5FF0000D3FF0000E0FF0000EBFF0000F3FF0000
          FAFF0000FCFF0000FAFF3E3ECBFF161618A30000000700000000000000000000
          002261616CDD2222BBFF2121C8FF2B2BD2FF2929DCFF2828E4FF2828EAFF2929
          F0FF2A2AF2FF2121F4FF1313E5FF4A4A5EDF0000002400000000000000000000
          003B8D8D9FF15555CCFFC2C2E7FFDCDCE7FFD2D2E0FFCACAD9FFC4C4D3FFC3C3
          D3FFC8C8D5FFAEAEDEFF1919E8FF5C5C94F30000003E00000000000000000000
          003B9595A0F19797DDFFE2E2F5FFEFEFF4FFDFDFEAFFD6D6E3FFCFCFDBFFC8C8
          D4FFC6C6D1FFACACD8FF1A1AE1FF606096F30000003E00000000000000000000
          00226B6B6CDDA5A5DAFFA1A1E4FF9797E2FF7070D9FF5151D4FF4242D5FF3E3E
          D8FF4141DBFF3C3CDEFF2B2BD6FF565669DF0000002400000000000000000000
          00061B1B1B9FB9B9D0FFA0A0E1FF8F8FDEFF8181DCFF6F6FDBFF5E5ED9FF5151
          DAFF4646DBFF3737DBFF6969CCFF1C1C1CA30000000700000000000000000000
          000000000037727274E0B8B8D7FFA5A5E3FF9595E0FF8787DEFF7878DDFF6A6A
          DCFF5A5ADBFF6868D1FF6D6D7AE20000003A0000000000000000000000000000
          00000000000101010155727274E0BCBCD1FFAEAEDCFF9E9EDFFF8F8FDDFF8686
          D7FF9393CFFF71717BE202020258000000010000000000000000000000000000
          00000000000000000001000000371C1C1CA0707072DF9E9EA6F39B9BA7F36E6E
          74DF1E1E1EA20000003900000002000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          00000000000000000001000000371A1A1AA0555569DF626299F35D5D95F34A4A
          5EDF161617A20000003900000002000000000000000000000000000000000000
          00000000000101010155656576E05050CBFF1212DBFF0303E9FF0202F0FF0E0E
          EAFF3D3DCDFF4F4F64E201010158000000010000000000000000000000000000
          000000000037666675E02F2FC6FF0F0FD6FF0F0FE4FF0000EEFF0000F6FF1111
          FBFF1212FCFF2222DEFF4F4F64E20000003A0000000000000000000000000000
          00061B1B1B9F5555BFFF1111C8FF9090C9FF8686C9FF1616E8FF1616F1FF9595
          E1FFA2A2E4FF1313F8FF3D3DCBFF161618A30000000700000000000000000000
          002261616CDD1D1DBAFF0E0EC4FF9191CDFFC2C2BFFF8A8AC9FF8E8ED0FFCBCB
          C8FF9797DEFF1111F5FF0E0EE5FF4A4A5EDF0000002400000000000000000000
          003B8F8FA0F13F3FC6FF0000BCFF1616C5FF9797CFFFC2C2BEFFBABAB6FF9090
          CEFF1717EBFF0000EEFF0202E9FF5D5D94F30000003E00000000000000000000
          003B9696A0F18A8AD9FF4545CCFF2525C7FFA7A7DEFFD5D5D3FFC1C1BEFF8A8A
          C7FF1515E1FF0000E5FF0404E1FF616196F30000003E00000000000000000000
          00226B6B6CDDA4A4D9FF9494E0FFCECEF1FFFAFAF9FFBCBCE3FFA7A7D2FFC5C5
          C2FF8C8CCCFF2525DFFF2727D6FF565669DF0000002400000000000000000000
          00061B1B1B9FB8B8D0FFAAAAE4FFE4E4F7FFDBDBF5FF8282DFFF7272DCFFB9B9
          DDFFB2B2D7FF4848DBFF6868CCFF1C1C1CA30000000700000000000000000000
          000000000037727274E0B7B7D7FFAEAEE6FF9D9DE3FF8686DEFF7777DDFF7474
          DEFF6767DDFF6767D1FF6D6D7AE20000003A0000000000000000000000000000
          00000000000101010155727274E0BBBBD1FFADADDCFF9E9EDFFF8F8FDDFF8585
          D7FF9393CFFF71717BE202020258000000010000000000000000000000000000
          00000000000000000001000000371C1C1CA0707072DF9E9EA6F39B9BA7F36E6E
          74DF1E1E1EA20000003900000002000000000000000000000000000000000000
          000000000000000000000000000000000007000000230000003D0000003D0000
          0023000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007020202230707073D0706073D0201
          0223000000070000000000000000000000000000000000000000000000000000
          0000000000000000000106060637434444A0738573DF739C76F3709873F36579
          68DF383938A20605063900000002000000000000000000000000000000000000
          00000000000112121255869384E05DAF58FF29AF29FF1FB929FF23BF36FF31BE
          49FF56B166FF6A7C6DE20F0F0F58000000010000000000000000000000000000
          000007070737879385E0409F31FF14A308FF19B01AFF2CBE37FF3FCA54FF2AC9
          4BFF29CA4CFF3FB955FF697C6BE20605063A0000000000000000000000000000
          00064848489F64A257FF159000FF189E0AFF26AF25FF99D89CFF7CD88BFF24C4
          42FF27C747FF20C63AFF4FAF5AFF393939A30000000700000000000000000202
          0222848D83DD348D1EFF178A00FF249A12FF89C286FFDFDFDFFFA1D9A8FF68D1
          77FF6ED67EFF51D160FF28BA33FF637864DF0201022400000000000000000808
          083BA3ACA0F1559D3FFF258A09FF89B97DFFD0D1D0FFD1D1D1FFDADBDAFFE6E7
          E6FFF6F4F6FFAFE6B2FF1BBA21FF6B966CF30707073E00000000000000000808
          083BA9AFA7F198BF89FF64A74FFF99BD8EFFD4D4D4FFD1D0D1FFCFD0CEFFD6D8
          D6FFE6E5E6FFA5DBA5FF1AB317FF709A6FF30707073E00000000000000000202
          022290918FDDAFC8A4FF9BC38CFF89BB78FFB8CFB1FFDCDBDCFF9CC595FF65B6
          5BFF6DBE65FF5ABF50FF36AF2BFF738572DF0202022400000000000000000000
          00064747479FBEC8B9FFAECCA1FFA0C691FF98C489FFC4D9BDFFA3CE99FF60B4
          4FFF56B545FF47B337FF72B569FF464646A30000000700000000000000000000
          000007070737939493E0BFCCB8FFB2CFA5FFA3C894FF9CC68DFF96C688FF7ABC
          69FF6AB85AFF74B668FF8E988CE20707073A0000000000000000000000000000
          00000000000112121255939493E0C1CABCFFB7CDAEFFA9CA9DFF9CC58EFF93BF
          86FF9CBE93FF929990E213131358000000010000000000000000000000000000
          0000000000000000000107070737484748A0939493DFAFB4ADF3ADB4AAF39295
          90DF4B4B4BA20707073900000002000000000000000000000000000000000000
          000000000000000000000000000000000007020202230909093D0909093D0202
          0223000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000007020202230707073D0706073D0201
          0223000000070000000000000000000000000000000000000000000000000000
          0000000000000000000106060637434444A0738573DF739C76F3709873F36579
          68DF383938A20605063900000002000000000000000000000000000000000000
          00000000000112121255869384E05DAF58FF29AF29FF20B92AFF23BF36FF31BE
          49FF56B166FF6A7C6DE20F0F0F58000000010000000000000000000000000000
          000007070737879385E0409F31FF14A308FF1AB11BFF25BC31FF41C855FF2BC9
          4CFF29CA4CFF3FB955FF697C6BE20605063A0000000000000000000000000000
          00064848489F64A257FF149000FF169D08FF19AB17FF28B932FFA0D4A7FF65D0
          7BFF29C849FF22C73CFF4FAF5BFF393939A30000000700000000000000000202
          0222848D83DD348C1DFF25910CFF59B14CFF5CB959FF62C066FFBDD2BEFFC9D7
          CBFF5FCC70FF1FC333FF27BA33FF637864DF0201022400000000000000000808
          083BA3ACA0F1539C3DFF44992DFFDAE3D8FFDEDFDFFFD2D4D2FFCFCFCFFFD4D2
          D3FFC7D5C9FF56C75EFF18B91DFF6B966CF30707073E00000000000000000808
          083BA9AFA7F196BE87FF81B76FFFEAF1E8FFEDEEECFFDFE1DFFFD5D6D5FFD1CF
          D1FFC1CFC1FF52BF50FF16B213FF709A6FF30707073E00000000000000000202
          022290918FDDAFC8A4FFA4C895FFB3D3A8FF9DC990FF84BE76FFCEDCCBFFCFD8
          CEFF65BB5DFF2BB11FFF36AF2AFF738572DF0202022400000000000000000000
          00064747479FBEC8B9FFAECCA0FF9EC58FFF90C080FF87BE76FFCDE3C7FF95CA
          89FF58B648FF49B439FF72B569FF464646A30000000700000000000000000000
          000007070737939493E0BFCCB8FFB2CFA5FFA3C895FF99C58AFF99C88CFF7ABC
          6AFF6AB85AFF74B668FF8E988CE20707073A0000000000000000000000000000
          00000000000112121255939493E0C1CABCFFB7CDAEFFAACA9DFF9CC58EFF93BF
          86FF9CBE93FF929990E213131358000000010000000000000000000000000000
          0000000000000000000107070737484748A0939493DFAFB4ADF3ADB4AAF39295
          90DF4B4B4BA20707073900000002000000000000000000000000000000000000
          000000000000000000000000000000000007020202230909093D0909093D0202
          0223000000070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000030000
          0016000000270000002800000027000000270000002500000027000000270000
          0025000000270000002700000028000000270000001600000003000000030000
          0022000000360000003500000034000000340000003300000035000000350000
          0033000000340000003400000035000000360000002200000003000000010000
          001A0000002A3B3B3BF9393939F33A3A3AF33B3B3BF33D3D3DF3414141F34848
          48F3515151F3595959F3646464F95B5B5BE30000001A00000001000000000000
          000800000013F0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EF
          E7FFF0EFE7FFF0EFE7FFE8E7DFFF717171F00000000800000000000000010000
          000100000006F0EFE7FF1A21E2FFF0EFE7FFCACAC6FFF0EFE7FFCACAC6FFF0EF
          E7FF767BE3FF000BE0FFE7E6DFFF7F7F7FEE0000000100000001000000010000
          000000000002EEEDE6FFEEEDE6FFEEEDE6FFA6A6A6FFEEEDE6FFA6A6A6FFEEED
          E6FF757AE3FF000BE0FFE7E6DEFF868686EE0000000000000001000000000000
          000000000000EDECE4FF686868FFEDECE4FFC9C8C4FFEDECE4FFC9C8C5FFEDEC
          E4FFEDECE4FFEDECE4FFE5E5DDFF878787EE0000000000000000000000000000
          000000000000EAE9E2FFA6A6A6FFEBEAE2FFA6A6A6FFEBEAE2FFA6A6A6FFEBEA
          E3FFA6A6A6FFA6A6A6FFE3E2DCFF838383EE0000000000000000000000000000
          000000000000E7E6DFFFE7E6E0FFE7E6DFFFC6C5C2FFE7E6DFFFC6C5C2FFE7E6
          E0FFC6C5C2FFC6C5C2FFE0DFD9FF7F7F7FEE0000000000000000000000000000
          000000000000E4E3DCFFD7B26FFFE3E2DCFFA6A6A6FFE2E1DBFFA6A6A6FFE3E2
          DCFFA6A6A6FFA6A6A6FFDCDBD6FF7F7F7FEE0000000000000000000000000000
          000000000000D5D4D0FFD6D5D0FFD5D4D0FFD5D4D0FFD5D4D0FFD5D4D0FFD4D3
          CFFFD3D2CDFFD2D1CCFFD0CFCAFF858585EE0000000000000000000000000000
          000000000000CAC9C6FF6B6B6AFFF3F3F3FFF8F8F8FFFAFAFAFFFCFCFCFFFEFE
          FEFFFEFEFEFFF9F9F9FFA3A3A3FF8C8C8CEE0000000000000000000000000000
          000000000000C7C6C3FF5C5C5CFF77E8BDFF6EE1B4FF63D8A7FF55CD97FF45C0
          86FF33B171FFF8F8F8FF979696FF959595EE0000000000000000000000000000
          000000000000C4C3C1FF515151FF76E8BDFF6EE1B3FF62D8A6FF54CC96FF45C0
          85FF33B171FFF5F5F5FF8C8B8BFFA0A0A0EE0000000000000000000000000000
          000000000000C3C2C0FF4C4C4CFF525251FF535352FF525252FF565656FF5D5D
          5DFF686868FF777777FF848484FFA8A8A8EF0000000000000000000000000000
          000000000000C5C4C2FFC5C4C1FFC3C2C0FFC3C2BFFFC1C0BEFFBDBCBAFFBAB9
          B7FFB6B5B3FFB0AFAEFFB3B2AFFF9D9D9DDD0000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000C020B0D3903131943000203070707070A1616
          152A070707190000000600000000000000000000000000000000000000000000
          00000000000000000009000000310E2D3BB03A6A83EC12242D5338373443928C
          86DD807674CE605A57A23A3937711F1D1C430B0A0A1F01010109000000010000
          0000000000050000002703080D63162A41EF2F4B60E50C181D3D43423E4EA99F
          99F6A58888FFAC9490FFA0B89AFE8DA78BF28C8F88D86D6B69B0484744802928
          26501111103D0404043F142539A33A4E6DFF121B287A0000000042413D4DA4A4
          A5F6ABB4CCFFB8B6C2FFAECFADFFA2D1A2FFD3E0D3FFDFDEDEFFB6B6B4FF9796
          94F8888D83E4596761C84F6987F0506075C1020508150000000043413D4D9CA3
          A6F699CAF4FFA4D1FBFFA4AEB1FF9EA69DFFDEE1DEFFE9E9E9FFC4CAD0FF9397
          9CFF90A090FF4C7269FF678E9EEE20262B42000000000000000043413E4D99A0
          94F67FA691FF93B8B0FFCCD2D1FFC3C2C3FFE7E4E4FFE7E5E5FFCBDAE9FFA3AB
          B1FF7A7670FF4B5355FF728084EA242525350000000000000000413F3C4D999D
          92F695B294FF96B695FFDEE5E0FFE9E8E8FFF9DADAFFF0D4D4FFC2BDB9FFAAAC
          ADFFC5B8B4FFB0907EFFA18A76FB4E4C459302020204000000003E3C394D9D9A
          95F6DDDFDDFFDDE6E4FFBAD9F6FFBED9F4FFD1C8C5FFCFBCB2FFB4AEA0FFCAD2
          CFFFC9BEA2FFB39865FFB29559F3645634AF05060611000000003C3A374D958D
          88F6BDAFB0FFCEC8CBFFAED0F2FF9ECDF8FF7EA296FF818F74FFCCBD91FFDDD1
          A7FFDFCA88FFD3B454FFD2B147FF6E6341A701020307000000003938354D9185
          7FF6AB8B8AFFB99B99FFBFBCBDFFA8B0B5FFADD1B2FF96BF96FFB9BFA1FFD0C3
          91FFDFCB7EFFDFC76AFFAE9F6BEB20201C3900000000000000003A38334D6B6E
          8EF66A71A9FF817EA6FF8D8FA9FF9FA1A9FFA1BFA4FF97C695FFA2CED5FFA0C4
          E2FFA1BAA9FF8CA382FF7B8679DE0C0B0B1D000000000000000036332E4A7378
          98F45A71BFFF3857BFFF3958C1FF324FBCFF4C62B9FF6676B1FF556AB4FF7D95
          CAFF7F9CABFF69846CFF657561DE0C0A0A1D00000000000000000D0D0C143C39
          365B524F4F865E5D65AB5C6074CB445080E5455497F64856B3FE2C3DC0FF5760
          CFFF222DC7FF585EC7FF4A4C91DE0D0C0D1D0000000000000000000000000000
          000000000000020202030A09071013120F241F1E1B413331316448454B8A5350
          64AE53517ECD5F5D9FE8524E8BD00D0C0C1A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          02050D0C08141B19142F1E1C1736020202050000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000500000006000000020000000000000000000000000000
          00000000000000000000000000000000000000000000000000010000000A0202
          02210D0D0D482525257B2E2E2E8A050505370000000500000000000000000000
          000000000000000000000000000301010112090909321C1C1C623939399A5C5C
          5CCC7D7D7DEE6C6C6CFE797979FF242424890000000300000000000000000000
          0000000000000000000325252559565656B77B7B7BE19D9D9DF9B7B7B7FFC6C6
          C6FFC4C4C4FF848484FF787878FF2D2D2D910000000000000000000000000000
          00000000000023232339AEAEAEE5D6D6D6FFEAEAEAFFF1F1F1FFE2E2E2FFE5E5
          E5FFD7D7D7FF8F8F8FFF7C7C7CFF2F2F2F900000000000000000000000000000
          0000000000004848485EF4F4F4FDFBFBFBFFDEDEDEFFBFBFBFFF8E8E8EFFBBBB
          BBFFE5E5E5FF999999FF808080FF3131318F0000000000000000000000000000
          00000000000030303048E9E9E9F9F3F3F3FFA7A7A7FFBEBEBEFFAAAAAAFFCECE
          CEFFF1F1F1FF9E9E9EFF828282FF3333338D0000000000000000000000000000
          0000000000002F2F2F48E4E4E4F9D0D0D0FFA7A7A7FFA6A6A6FFACACABFFEFEF
          EFFFF5F5F5FFA4A4A2FF858585FF3535358C0000000000000000000000000000
          00000000000030303048E6E6E6F9E2E2E1FFD1D1D3FFDADAE3FFC8C8DEFFC3C3
          E7FF9D9DD7FF79789CFF878788FF3636368A0000000000000000000000000000
          0000000000002E2E3148BCBCDDF9BBBAEDFFA3A3E3FF6867D1FF4F4EC7FF5B5B
          C8FF3939B9FF3D3C8DFF88888BFF383838890000000000000000000000000000
          000000000000282731486260C9F96E6DDAFF6867D6FF4442CEFF4D4BCEFF6160
          C7FF4F4EBCFF3F3F86FF8D8D90FF3B3B3B880000000000000000000000000000
          0000000000002B2B33486F6CD3F96562DAFF625EE6FF625EE2FF6C69DFFF6B6A
          B9FF5352B4FF454483FF959598FF3D3D3C850000000000000000000000000000
          0000000000002E2E35489190CFF96B68C9FF6A67D2FF6E6CC6FF8B8AC7FF8E8D
          BBFF8483ADFF8D8CA0FF969697F5282828560000000000000000000000000000
          00000000000027272738B0AFB7ECA9A9BDFFACABB7FD9E9EA3E8979797D3A4A4
          A3E7969695E35757568A2C2C2C4F030303080000000000000000000000000000
          00000000000003030305363635487B7B7AA9656564921D1D1D2C0C0C0C141C1C
          1C2D1A1A1A2E0101010200000000000000000000000000000000000000000000
          0000000000000000000000000000030303060202020400000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000002E2B22413E3A2D55010101010303030400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0102413C2F5A36322846484436582E2A21404641336000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000454134572E2B2237403B2F5134312743554F3F6704040304000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000014130F19423E31554A4537613A362B493D3A2D4C1E1C1626000000000605
          04094B4537681614101D00000000000000000000000000000000000000000000
          00000A09070D6059477E26241C3224221B2A4641345E494436600909070D1716
          121F79705AA03E3A2D501B1914251614101C0000000000000000000000000000
          00000000000247402F6F6F6144C6554B35984D46327F534C377C3430264D675F
          4B8C38352A3F4C4839565C55447F605845810000000000000000000000000908
          06124B45307D8B7D57E695855FFF968761FE9C8F64FE988D5FEF675F45A0736B
          529E24211A327E755CAD413D3151625D4A720706050700000000000000004A44
          3470B0A37DFCAD9F7AFFAFA07FFFB3A685FFBDB191FFC7BE9DFFCDC5A4FFBBB3
          94EF33302650645E4C7C3532273F3C3A2D4112120E1400000000000000005D57
          4980DED7C4FFDFD8C8FFDED7C7FFE0D9C9FFE6E0D2FFEDE9DCFFF2EFE2FFE1DB
          C9FF494336791E1D16272A281F301A19141C1716121900000000000000001412
          0E21898478A7CBC7BDE1E4E0D9F4FEFDFCFFFFFFFEFFF0EDE6FFB9AE96FF9C8D
          6EFF837756E45F563CA85B533A9C2B271B54100F0B1800000000000000000000
          0000030201092B261B558C825EE1BEB596FFCAC2ACFFB1A68AFF9C8E6EFFA092
          71FFACA17DFFACA276FFA49963FF998E5FF23F39267400000004000000000000
          000000000003675E479EB0A278FFAA9B72FFB8AA8CFFB9AC8FFFBCAF94FFC3B9
          A0FFD5CEBBFFDBD5C1FFCFC8A9FFCEC7A6FF938969D20C0A071F000000000000
          00000000000270695697E7E1D0FFEDE9DEFFF1EEE6FFEFECE4FFEEEBE2FFF1EE
          E7FFF8F6F3FFF9F8F5FFF5F3ECFFF3F0E6FF9E9681C80A080519000000000000
          00000000000018161125857E70A2C2BCAED9E7E1D1F8FBF8F1FFFFFEFCFFFEFE
          FBFFFBF9F3FFF9F6ECFFF4F0E4FEC5BEADDF3B372D5500000000000000000000
          00000000000000000000030202070F0D091C7C756696E8E3D4F6DED9CBEEE5DE
          CFF4FAF7EFFFF5F0E2FF877F6DA51A17122A0000000200000000000000000000
          0000000000000000000000000000000000000B0A08123C382E4F302C25435752
          456EAFA795C6857E6F9E15141021000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000E0E
          0A118D8C64995B59376F00000017000000230000001E00000018000000130000
          000E000000090000000500000002000000010000000100000000000000001312
          0D16B9AF6CD07771408A0000000D0000001F00000024000000280000002B0000
          002D0000002B000000240000001A000000110000000700000000000000000000
          0000473E2668353021510C0C0D18020202040000000000000002000000040000
          00070000000A0000000D000000110000000B0000000400000000000000000000
          000020201A359D9B73D58E8B6CDC3E3D39750303030600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000012121221B3B097E1EAE6A8FFB0AB88F64746437903030306000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000202020565646383ECEADEF9E9E1A9FFB3AE8EF54E4E4C79040404060000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000505050A706F6F87EAE6D7F9E0D29AFFB8B195F5555554790404
          0406000000000000000000000000000000000000000000000000000000000000
          000000000000000000000606060A74747487E8E4D1F9D5C28BFFB7AF95F55354
          5279040404060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707070A7A7A7987E4DDC7F9C0AB78FF9E97
          7EF64B4B47790404040603030306030303050000000000000000000000000000
          0000000000000000000000000000000000000707070A7A797987C3BBA2F99E94
          70FF858376F45555508F898989A6585959860505050C00000000000000000000
          000000000000000000000000000000000000000000000808080A585753878784
          76F9868376FFC6C6C2FED3D5D4FF959592FB3E3F3F6600000000000000000000
          0000000000000000000000000000000000000000000000000000050505095452
          4C9BB0AEA8FFD3D2CEFF9C9D98FF78756CFB302F2C5A00000000000000000000
          0000000000000000000000000000000000000000000000000000030303067D7D
          7BABC7C5C1FFBCBAB4FFA7A095FF807666FF484137B30F0E0D1D000000000000
          0000000000000000000000000000000000000000000000000000030303067272
          7194D7D6D5FDB4B3ADFCA8A399FE948C7DFF645948FD332F2876000000000000
          0000000000000000000000000000000000000000000000000000000000000C0C
          0C12565656724141406277756FBF989186FF6B6253F32B28235E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000017171626524F4B86393732650706060B}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000300000005000000060000000500000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001B0404042F040403340000002F0000002D00000027000000110000
          0000000000000000000000000000000000000000000000000000000000000000
          00001E1B144362563BBE60533ABD3A3325803F39278717150F490000001E0000
          00190000001D0000001C00000019000000120000000700000000040403063530
          22507C704CC993845BFF92825BFF98895FFB9E9060FF7B714CC935312377110F
          0A510000003F000000400000003F0000003A0000002300000003413B2C5DA699
          73F0AB9D76FFAB9D7AFFAD9F7EFFB3A685FFBCB28FFFC2B993FFC3BC97FD8E85
          6AC9110F0B370000001E0000001C00000014000000080000000070695695D2C8
          B1FFCCC1AAFFCBC0A9FFCFC5AEFFD6CDB8FFDED7C4FFE6E1D0FFEEEADBFFD4CD
          B9F228251D3A00000000000000000000000000000000000000002E2A2340BFBA
          ABD8F5F2EAFFF9F7F1FFFDFCF9FFFDFCF9FFFEFDFAFFF2EFE6FFD6CDBAFFB1A4
          88FB5F553F9F262117421F1B1335090806110000000000000000000000011C1A
          1529514C42698A826EB8DBD5C4FEEFECE4FFE7E2D7FFB6AB90FF92815EFF9282
          5CFF9D9069FE998E60F6948958F1776D46C32722174300000000000000000000
          00002420163C8D8054E1A1925FFFB0A37CFFB3A685FFAEA080FFAFA284FFB5A9
          8CFFC3BA9EFFC1B996FFB3AA7AFFB3AA7BFF8A8059D114120C22000000000000
          00005A534080C5BA9BFFC1B596FFC7BCA2FFCEC4AFFFCABFA8FFCCC2ACFFD5CD
          BCFFE5DFD4FFEAE5DAFFE0DBC7FFE1DDC7FFC5BD9FF4302B1F49000000000000
          00003834294DD5CEBBEFF7F5EDFFF9F7F2FFFAF8F3FFFAF8F5FFF9F8F5FFFBFA
          F7FFFEFDFCFFFDFDFBFFFBFAF7FFF8F7F0FFB7AF9BD61A171126000000000000
          0000020201043F3A30508D8676A3B9B19ED2F3EEDFFFFCFBF5FFFDFCF9FFFDFB
          F6FFF9F6EDFFF7F3E7FFECE5D5FAB6AE9ACD3B372D4C00000000000000000000
          000000000000000000000000000025221B30B7AF9DCAE8E3D5F4CCC4B3DEEAE4
          D4F7FBF8F0FFF4EEE1FE7E7664930F0D0A150000000000000000000000000000
          0000000000000000000000000000000000001614101B2F2C24391A1813215954
          4767989181A96A645779100F0C14000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010100020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000211D1775382D
          1EAD382D1DAD382D1CAD372B1AAD372D1CAD382D1DAD372D1CAD372D1CAD382F
          20AD382E1FAD372D1CAD372C1AAD382E1FAD382F21AD0908055785775EC3C6A8
          78FFC6A878FFC7AA7BFFC9AE83FFC8AE82FFC7AB7DFFC5A775FFC5A674FFC6A9
          78FFC8AC7FFFC9AE83FFC9B087FFC9B087FFC8AE82FF1F1C177A939697C3D0D4
          D6FFCBCFD2FFCFD3D5FFD6DBDDFFE1E6E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E6
          E8FFE1E6E8FFE1E5E8FFE1E5E8FFE1E6E8FFE1E6E8FF2122227A949798C3C2C5
          C7FFC0C3C5FFC6C9CBFFD4D8DAFFCDD1D3FFD5D9DBFFD6DADCFFE3E7E9FFE3E7
          E9FFE3E7E9FFE3E7E9FFE3E7E9FFE3E7E9FFE3E7E9FF2122227A959799C3A8AA
          ACFFA3A6A7FFA2A4A6FF9FA2A3FFA5A8A9FFAAADAEFFB5B8BAFFE5E9EAFFE4E7
          E9FFD3D7D8FFB7BABCFFD6DADBFFD4D7D9FFD6DADBFF2122227A96989AC3BABD
          BEFFB6B8B9FFB2B4B5FFB1B4B5FFBABDBEFFADB0B1FFB9BCBDFFCCCFD1FFC5C8
          C9FFB2B4B5FFC5C8C9FFC2C5C6FF808282FF929595FF2122227A9B9D9EC3E9EC
          EDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFDCDF
          E0FFBFC1C2FFC4C7C8FFC3C5C6FFD9DCDDFFE9ECEDFF2222237A919292C3E3E5
          E5FFEBEDEEFFEBEEEEFFEBEEEEFFEBEEEEFFEBEEEEFFEBEEEEFFC7C9CAFFD6D9
          D9FFB0B2B3FF9D9F9FFFC9CBCBFFEBEEEEFFEBEEEEFF2223237A91897AC3B9B9
          B9FFE0DFDAFFD2B991FFD1B88EFFD1B78DFFCFB385FFCDAF7FFFCDAF7FFFCEB1
          82FFD1B78DFFD2B990FFD2BA91FFD1B88FFFD0B58AFF201E1B7A8A7757C2D6C2
          A1FFE4E4E4FFE8DECDFFBF9551FFC09551FFC19755FFBF9551FFBD8F47FFBE91
          4AFFC09552FFC19755FFC09754FFC19857FFC39C5EFF1A160F6B000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000020F0001
          0B2307091C3E1316315D04050F2A000000000000000000000000000000000000
          000000000000000001050203112E0C0E26531C1E3E773134579D4C4F73BF6F74
          94DC9195ADF09FA2B9FE30335496000000070000000000000000000000000000
          000000000003030415405F618BDCA0A2B6F9B9BAC6FFCCCBCEFFD3CFCBFFCEC9
          C1FFBFB8AEFFC1BDB6FF797C95E1030412330000000000000000000000000000
          000800000029181C4E936373C8FEBABAB7FFBAB9B6FFD6D4D2FFDDD5D0FFD7CF
          C8FFCCC5BAFFD0CCC2FFC1C1C8FF272A49880000000400000000000000000000
          0007080817506A72B6E42B4ADFFF7F8BC2FFB1B0AAFFBEBEBEFFDDD7D4FFDCD4
          CEFFD7CFC6FFD3CCC0FFE4E0D9FF757897D900000C2800000000000000000000
          00054142719AA0AAECFF2243DFFF2947D6FFA8ABBAFFB1B0ADFFCBC9C8FFDCD4
          CFFFDBD3CBFFD7CFC4FFE2DDD2FFC4C4CFFE1C1D3B7900000001000000001415
          2C448E92CFEE9EAAF0FF3251E1FF0024DAFF5D70D0FFB2B0AFFFB2B1B0FFD5D0
          CDFFDCD4CDFFDBD5CBFFDED9CEFFE6E4DFFF636384CE00000925010108115B5C
          91B5A0A4ECFF8E9DEDFF4B67E5FF0026DAFF1030D6FF9196C4FFC7C4C0FFDBD8
          D7FFE6E2DFFFE4E1DBFFDBD8CFFFE7E5DDFFB5B4C6F711122D60232548699393
          DBF88E95EAFF7B8DEBFF5E77E8FF0F32DBFF011CCDFF3E45C4FFC0BBC8FFCDC8
          C8F9C7C3C7EDB9B8BADB9B9A9EC3858587A662636B810E0F162413142B427174
          B9DE7E87E8FF677DE8FF5973E7FF2943D9FF0818C2FF1111ABF83636608B3535
          3A49202126300F10141A0405070B000001020000000000000000000000001E1F
          3E596671CDF0566FE7FF4962E2FF3546D2FF1115B8FF0A086FAE0001060C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0003242A5A7B495FD8FA394FD8FF2F37C6FF15129AE503032037000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000102060C212A749D2F3BC9FF2323B6FE0B0A4E7B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000003040F1A161982BE120F80C302020C1600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002031A2E030421390000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000101010301010105000000000000000000000000010101010101
          0107010101010000000000000000010101040101010400000000000000000000
          000000000000201604655A430CA70503012400000000000000000A070238634B
          0CAF130C024C00000000010101063224067D4B36099803020117000000000000
          0000010101034E3413A1B88943EE0B08043C00000000000000001D130662C795
          44F82B1F1077000000000101010E724F1EBF9B743ADC06040229000000000000
          0000000000000303021C090806360101010500000000000000000101010E0A08
          073A020202110000000000000000050403250706063001010102000000000201
          010E020201130101010100000000000000000101010A03020117010101020000
          00000101010109070234080602310101010200000000000000000101010A503A
          0A9E7D5B12C40402011F00000000010101013323067F946D16D40A0602370000
          00000302011B936A18D68D651ED10202011600000000000000000101010B4F39
          1BA2795C39C30303021E0000000001010101352410858F6D42D4090704350000
          00000101010C3729188732271C7F010101080000000000000000000000000101
          010E020202150000000001010109010101070101010A030202180101010B0605
          01290101010A0101010101010102000000000000000000000000000000000000
          0000000000000101010D4E380A9C553D0CA1020101100000000020150465B98A
          20ED2014056500000000100B02463E2F088B0403011F00000000000000000000
          00000000000002020115785525C67E5E33C60202011600000000130D06517B5F
          3CC6110D094B0000000049310D9CCF9B42FB120C064D00000000000000000000
          000000000000010101010303031E0403031F0000000000000000010101020101
          010D01010102000000000504032916120F550201010E00000000000000000000
          0000000000000000000000000000000000000101010A03020117010101020000
          0000000000000000000000000000000000000000000000000000000000000101
          01050A0802380303011D00000000010101013323067F946D16D40A0602370000
          000000000000040301224232088F100B02450000000000000000000000000C07
          023CBB8B23EF533810A20101010301010101352410858F6D42D4090704350000
          000000000000170E0458D09A3EFE412E15900000000000000000000000000403
          0223554026A61F18116400000000000000000101010A03020218010101020000
          0000000000000202011215110D53040403220000000000000000000000000000
          0000010101050101010300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000E10124740454B956D77
          86D4090A0B380000000000000000000000000000000000000000000000000000
          000000000000000000000507072A2326286A727D8BD44E82A6FF0B72A6FF0D47
          77FF2325266A0000000000000000000000000000000000000000000000000102
          020E151B1E5C79848DCD608CA8F81979AAFF0D8DC0FF0FA1D6FF0BA1D6FF114D
          7BFF7493ACFF516879D4526879D4575C62B10000000000000000000000001827
          2F782D86B2FF178CC0FF1AA4DCFF18A5D8FF16A5D6FF11A2D6FF11A1D6FF094D
          7BFF707F81FF767F81FF3A738CFF526879D40000000000000000000000000923
          2E7F27AADEFF21A9DEFF21A9DEFF1AA6DEFF18A5D8FF16A5D6FF11A2D6FF1153
          7FFFFBC3A5FFEF9D75FF747E81FF526879D40000000000000000000000000822
          2F7F29ADDEFF27AADEFF21A9DEFF21A9DEFF1AA6DEFF18A5D8FF16A5D6FF1155
          83FFE0AC87FFF9CBB0FF7A8890FF526879D40000000000000000000000000722
          2F7F2FADE4FF29ADDEFF27AADEFF23A9DEFF2FA0CDFF29A0CBFF1AA5D6FF1159
          87FFE6B37BFFD19F77FF6F868EFF526879D40000000000000000000000000522
          2F7F31AEE7FF2FADE4FF29ADDEFF2DA9DAFFBFADB2FFA19CA3FF1EA3D6FF115D
          8BFFFFD9A5FFFFD9A8FF80A09FFF526879D40000000000000000000000000622
          2F7F33B1E7FF31AEE7FF2FADE4FF29ADDEFF8FA8BBFF759FB6FF21A8DCFF115F
          8FFFFFDBAAFFFFDBACFF80A1A1FF526879D40000000000000000000000000622
          2F7F39B1E7FF33B1E7FF31AEE7FF2FADE4FF29ADDEFF29AADEFF23A9DEFF1163
          93FFD1CACDFFBEBDD7FF6F9DB0FF526879D40000000000000000000000000823
          2F7F3BB2E7FF39B1E7FF33B1E7FF31AEE7FF2FADE4FF29ADDEFF29AADEFF1167
          93FFB0DBFFFFA3D8FFFF4896CDFF526879D40000000000000000000000000923
          2F7F42B5E7FF3BB4E7FF39B1E7FF33B1E7FF31B0E7FF2FADE4FF29ADDEFF1169
          9BFFDAF7FFFFC0EAFFFF56A3CDFF526879D40000000000000000000000000E26
          317F2D99CDFF3DB0E2FF3BB4E7FF39B1E7FF33B1E7FF31B0E7FF2FADE4FF116D
          9DFF5B91BCFF6E9FBCFF276FA3FF556A7CD40000000000000000000000000406
          072A676E73B1668DA4E23F98C5FF2292C7FF35AAE0FF35B1E7FF31B0E7FF096B
          9FFF5F859AE2597A8DD4597A8DD4555F67AA0000000000000000000000000000
          000000000000010101071115174E5B5F64A364869BDB4399C2FF1E8FC3FF056D
          9FFF1114164E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101071115174E1D272D711428
          327F020202150000000000000000000000000101010700000000}
      end>
  end
  inherited imgDatos32: TcxImageList
    FormatVersion = 1
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A030303390B0B0B5711111168111111680B0B
          0B580303033B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00090303033623232386616161C8999799ECB0ADB0FAB4B1B4FEAFADAFFEA5A2
          A4FA898889ED575656CA2121218A030303380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001F2424
          2485949394E3D1CFD1FFB9C2B8FF8DB08DFF69A76BFF58A85DFF57A85EFF64A5
          6BFF7DA583FF9BA79DFFA8A7A8FF7A797AE52020208900000021000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333585858BADAD8
          DAFDBCCABBFF5FA35BFF27A125FF18AE1BFF18B71FFF1ABD26FF1CC02DFF1FC1
          33FF22BD39FF2EB043FF54A261FF93A596FFA8A6A7FD494849BE030303370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333706F70C9E4E4E4FF8DB3
          88FF26981BFF13A80BFF17B115FF1AB61EFF1CBA25FF20BE2EFF22C236FF23C4
          3BFF27C742FF28CA46FF26C744FF2FB247FF6FA077FFACACACFF5A5A5ACE0303
          0337000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000001F595959B8E1E1E1FF78A670FF1893
          06FF15A306FF18A910FF1AAF18FF1DB521FF60C766FF96D19CFF99D4A0FF6BD1
          7CFF2BC849FF2CC94EFF2DCA4FFF29CB4BFF26BC41FF60A06AFFACACACFF4948
          49BE000000220000000100000000000000000000000000000000000000000000
          000000000000000000000000000826262683DAD8DAFD8CAC85FF1A8D06FF1599
          01FF17A009FF19A711FF1AAD18FF26B629FFAACEACFFD2CDD2FFD6D1D5FFB8D7
          BEFF36CA54FF2DCA52FF2FCB55FF2CCA4EFF28CA46FF23BC3BFF6D9F73FFA8A6
          A8FE2020208A0000000A00000000000000000000000000000000000000000000
          00000000000000000001030303359C9C9DE1BDC6BBFF2E891CFF169100FF1795
          01FF189D08FF1AA410FF1BAA17FF28B42AFFA8C9A9FFC9C7C9FFCDCBCCFFB5D3
          BBFF37C954FF2CC84EFF2DC951FF2BC94CFF28C845FF23C93CFF28B139FF92A4
          94FF7A797AE50303033A00000001000000000000000000000000000000000000
          0000000000000000000629292984DBDADBFF6E9A64FF198A00FF198E00FF1892
          00FF199907FF1AA10FFF1BA716FF28B129FFA4C5A5FFC3C1C3FFC7C5C7FFB1D0
          B6FF35C74FFF29C547FF2AC749FF29C746FF26C640FF23C639FF1CC42FFF4EA0
          56FFA8A7A8FF2222228C00000007000000000000000000000000000000000000
          00000000000000000018717171C5C6CAC5FF3D8929FF198800FF1A8B00FF188E
          00FF189404FF1A9C0CFF1AA313FF27AE25FFA1C1A1FFBEBCBEFFC1C0C1FFADCB
          B1FF33C448FF25C23EFF26C340FF25C33EFF23C33AFF21C334FF1DC52DFF25AD
          2FFF99A599FF5A595ACC0000001C000000000000000000000000000000000000
          00000000000004040437ADACADE9A9B6A5FF2D8715FF1B8400FF1C8801FF2491
          0BFF269710FF269E17FF27A41DFF33AF2EFFA0BEA0FFB8B6B8FFBCBABCFFABC8
          AFFF3CC44CFF2FC242FF30C343FF2FC442FF2CC43DFF20C130FF1CC129FF17B9
          21FF78A27AFF8B898AEE0404043D000000000000000000000000000000000000
          0000000000010E0E0E54CAC9CAF9A8B5A3FF539D3CFF1C8200FF64AA52FFBCD5
          B7FFB9D2B4FFB4CEB0FFAFCAACFFACC7AAFFB7BEB7FFB4B3B4FFB5B5B5FFB8BE
          B9FFA9C7ACFFA9C9ACFFABCBAFFFAECEB1FFAFD1B2FF63CB6AFF18BE22FF13BC
          1AFF5CA25EFFA5A2A5FB0C0C0C5B000000010000000000000000000000000000
          00000000000117171765D0CFD0FDADBBA8FF8EBC7CFF4B9933FFA4CA9AFFF4F1
          F5FFE7E6E8FFDFDEDFFFD7D5D7FFCECCCEFFC4C3C4FFBBBBBBFFB4B4B4FFB4B4
          B4FFB9B7B9FFBDBBBDFFC1BFC0FFC4C2C4FFCDC8CCFF91CD94FF18BB1DFF11BA
          14FF50A550FFAFADAFFE1111116B000000020000000000000000000000000000
          00000000000117171765CECDCEFDB2BDADFF9DC48EFF8BBB7AFFC7DFC0FFFDFB
          FDFFF3F2F3FFEBEAEBFFE3E2E4FFDBD9DBFFD0D0D0FFC7C7C7FFBEBEBEFFB7B6
          B7FFB5B3B5FFB7B6B8FFBBB9BBFFBFBDBFFFC7C2C7FF8EC98EFF16B716FF10B6
          0EFF51A54FFFB4B1B4FE1212126B000000020000000000000000000000000000
          0000000000010E0E0E54C5C5C5F9B5BBB2FFA7C799FF99C189FFB9D6AFFFE6F0
          E2FFDDEBD9FFC8DDC2FFBFD7B9FFBED5B8FFD4DAD3FFD3D3D3FFCBCACBFFC0C5
          C0FFA4BFA2FF9FBC9DFFA0BE9FFFA3C1A1FFA4C4A3FF5BBF58FF13B20EFF12B2
          0BFF62A45FFFB2AFB2FB0C0C0C5B000000010000000000000000000000000000
          00000000000004040437A9A9A9E9BBBDBAFFB2CBA7FFA1C592FF9CC38CFF9AC3
          8BFF90C081FF6CAE59FF449B2DFF389821FFBED6B9FFE1E0E1FFD8D7D8FFB6CE
          B3FF32AA27FF23A719FF24AA1BFF24AD1BFF25AF1DFF21B018FF24B319FF21AC
          14FF89AD86FF9D9A9DEE0404043D000000000000000000000000000000000000
          00000000000000000018717171C5C3C3C3FFBAC9B4FFACCB9EFFA4C795FF9DC4
          8EFF97C187FF91C081FF85BB73FF75B564FFD4E5CFFFF0EFF0FFE7E6E8FFC1D8
          BEFF3AA82AFF2EA61FFF33AB25FF38AF2BFF3BB32EFF3AB42CFF33B524FF36A3
          2AFFB6C1B5FF686868CC0000001C000000000000000000000000000000000000
          000000000000000000062B2B2B84CBCBCBFFBABEB8FFBAD2AFFFABCB9EFFA6C8
          97FF9FC590FF99C389FF92C082FF91C282FFE3EFDFFFFBFBFCFFF6F5F6FFD8E7
          D5FF6FBB5FFF60B64FFF5AB64AFF53B543FF4BB43BFF44B434FF39B229FF69A6
          62FFD0CFD0FF2727278C00000007000000000000000000000000000000000000
          00000000000000000001040404359A9A9AE1BDBEBDFFC2CDBDFFB7D1AAFFADCC
          A0FFA7C999FFA1C692FF9AC38BFF99C48AFFE5F1E2FFFFFFFFFFFDFCFDFFDFED
          DCFF79BD69FF69B858FF62B752FF5BB64BFF54B644FF4CB63CFF4BA53EFFBCC9
          BAFF989898E50404043A00000001000000000000000000000000000000000000
          000000000000000000000000000829292983C8C8C8FDB9BAB8FFC6D5BFFFB7D1
          AAFFAFCDA2FFA9CA9BFFA2C794FFA0C792FFE6F0E2FFFFFFFFFFFFFFFFFFE3F0
          DFFF81BF70FF72BA61FF6BB95BFF64B854FF5DB84DFF53AD44FF97B592FFDCDB
          DCFE2727278A0000000A00000000000000000000000000000000000000000000
          00000000000000000000000000010000001F5E5E5EB8C8C8C8FFB9BBB8FFC8D6
          C0FFBAD3AEFFB0CEA4FFABCB9DFFA4C996FFC0DAB6FFD8E9D3FFD6E8D0FFB4D6
          AAFF84BE73FF7BBC6BFF74BB64FF6CBA5CFF64B056FF8FAF89FFE2E2E2FF5E5E
          5EBE000000220000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333747474C9C8C8C8FFB9BA
          B8FFC5D0C0FFC1D7B6FFB4D1A8FFACCC9EFFA4C996FF9FC790FF98C489FF91C2
          82FF8BC07AFF85BF74FF7DBD6EFF7AB06EFFA3B79FFFE0E0E0FF777777CE0404
          0437000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333616161BAC7C7
          C7FDBDBDBDFFBCC0BAFFC1CDBCFFBED2B4FFB5D1AAFFADCEA0FFA5CB98FF9FC8
          92FF99C28CFF94B889FF9DB497FFC5CAC4FFD9D9D9FD616161BE040404370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020101011F2B2B
          2B859C9C9CE3CBCBCBFFC2C2C2FFBDBEBCFFBBBFB9FFBBC3B8FFB8C2B4FFB4BD
          B1FFBAC0B8FFCBCCCAFFDAD9DAFFA3A2A3E52B2B2B8901010121000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0009040404362D2D2D86757575C8AEAEAEECC7C7C7FACFCFCFFED1D0D1FECCCB
          CCFAB3B2B3ED787878CA2E2E2E8A040404380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A0505053910101058191919691919196A1010
          10580505053B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000005000000070000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000003000000060000000D0000001B010101340303035C0A0A0A710303
          033C000000130000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000060000000E0000
          001D010101380404045F0808088F0B0B0BBD0C0C0CE0080808F83F3F3FFE4646
          46DE040404560000001900000007000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000003000000070000000F0000001F0202023C05050565090909930C0C
          0CC10D0D0DE4111111F81F1E1EFF272726FF161616FF111111FF404040FF5555
          55FE0A0A0A6C0000000C00000005000000000000000000000000000000000000
          0000000000000000000000000000000000020000000400000007000000100000
          00220202023F060606680B0B0B990F0F0FC5111212E6181818FA272626FF4443
          42FF6A6968FF979594FFBFBDBDFFB2B0B0FF2C2B2BFF0B0B0BFF404040FF4848
          48FE0707075F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000050000001F020202430707076E0D0D0D9D1212
          12CA171717EA1F1E1EFB30302FFF4F4E4DFF777675FFA1A09FFFC4C3C2FFDCDB
          DAFFE7E7E7FFEBEBEBFFECECECFFC9C9C9FF292929FF111111FF414141FF3B3B
          3BFE0707075F0000000000000000000000000000000000000000000000000000
          0000000000000000000002020230161616C01D1D1DED232323FC3A3938FF5A59
          58FF848282FFACAAA9FFCCCACAFFE0E0DFFFEAEAEAFFEDEDEDFFEBEBEBFFE9E9
          E9FFE6E6E6FFE4E3E3FFE4E4E4FFC8C8C8FF2E2E2EFF181818FF424242FF2F2F
          2FFE0606065F0000000000000000000000000000000000000000000000000000
          000000000000000000000A0A0A71272727FF2A2A2AFF747271FFD2D0D0FFE5E4
          E4FFECECECFFEEEEEEFFECECECFFE9E9E9FFE7E6E6FFE5E4E4FFE4E3E3FFE5E4
          E3FFE7E6E6FFE9E9E8FFECECECFFCDCCCCFF353434FF1F1F1FFF444444FF2828
          28FE0505055F0000000000000000000000000000000000000000000000000000
          000000000000000000000C0C0C782C2C2CFF2B2B2BFF979494FFEFEEEEFFEAEA
          EAFFE7E7E6FFE6E6E5FFE6E5E5FFE7E6E6FFE9E9E9FFEBEBEBFFECECECFFECEC
          ECFFEAEAEAFFE8E7E7FFE8E8E7FFCDCCCCFF3B3B3BFF262626FF464646FF2727
          27FE0606065F0000000000000000000000000000000000000000000000000000
          000000000000000000000D0D0D772C2C2CFF303030FF989696FFECECEBFFE9E9
          E9FFECEBEBFFEDEDEDFFEEEEEEFFEDEDEDFFEAEAEAFFE8E7E7FFE7E6E6FFE7E6
          E6FFE8E8E7FFEAEAE9FFEEEEEEFFD1D0D0FF414141FF2E2E2EFF494949FF2626
          26FE0606065F0000000000000000000000000000000000000000000000000000
          000000000000000000000D0D0D77323232FF373737FF9B9998FFEFEFEFFFECEC
          ECFFEAEAEAFFE9E8E8FFE8E7E7FFEAE9E9FFEBEBEBFFEEEDEDFFEFEFEFFFF0F0
          F0FFEFEFEFFFEDEDECFFEDEDECFFD1D1D1FF484747FF353535FF4B4B4BFF2626
          26FE0707075F0000000000000000000000000000000000000000000000000000
          000000000000000000000F0F0F77393939FF3F3F3FFF9E9C9BFFEEEDEDFFEBEB
          EAFFEEEDEDFFEFEFEFFFF1F0F0FFF0F0F0FFEEEEEEFFECEBEBFFEBEAEAFFE9E8
          E8FFEAE9E9FFECEBEBFFF0F0F0FFD5D4D4FF4F4F4EFF3D3D3DFF4F4F4FFF2525
          25FE0707075F0000000000000000000000000000000000000000000000000000
          00000000000000000000101010773F3F3FFF464646FFA09E9EFFF0F0F0FFEDED
          EDFFEBEBEBFFEAEAE9FFEAE9E9FFEBEAEAFFEDECECFFF0EFEFFFF2F2F2FFF3F3
          F3FFF3F3F3FFF2F1F1FFF1F1F1FFD6D6D5FF555555FF444444FF525252FF2424
          24FE0707075F0000000000000000000000000000000000000000000000000000
          0000000000000000000010101077454545FF4D4D4DFFA3A1A0FFEEEEEEFFECEC
          EBFFEEEEEEFFF1F1F1FFF2F2F2FFF2F2F2FFF1F1F0FFEFEFEEFFEDEDEDFFECEB
          EBFFEDECECFFEDEDECFFF1F0F0FFD8D8D8FF5B5B5BFF4B4B4BFF555555FF2424
          24FE0707075F0000000000000000000000000000000000000000000000000000
          00000000000000000000121212774B4B4BFF545454FFA5A3A3FFF0F0F0FFEEEE
          EEFFEDECECFFEBEBEAFFEBEAEAFFECEBEBFFEEEDEDFFF1F0F0FFF4F4F4FFF5F5
          F4FFF6F6F6FFF6F5F5FFF6F6F6FFDBDADAFF626161FF535353FF585858FF2323
          23FE0808085F0000000000000000000000000000000000000000000000000000
          0000000000000000000013131377515151FF5B5B5BFFA8A6A5FFEFEEEEFFEDEC
          ECFFEFEFEFFFF1F1F1FFF3F3F3FFF3F3F3FFF2F2F2FFF3F3F3FFF1F0F0FFEEEE
          EDFFEDECECFFEEEDEDFFF2F1F1FFDCDCDCFF686868FF5A5A5AFF5B5B5BFF2323
          23FE0808085F0000000000000000000000000000000000000000000000000000
          0000000000000000000013131377575757FF626262FFAAA8A8FFF0F0F0FFEEEE
          EEFFEDECECFFEBEBEAFFECEBEBFFECEBEBFFF0EFEFFFF3F2F2FFF2F2F2FFF5F5
          F4FFF8F7F7FFFBFBFBFFFFFFFFFFDFDFDEFF6D6D6DFF616161FF5E5E5EFF2727
          27FE0808085F0000000000000000000000000000000000000000000000000000
          00000000000000000000141414775E5E5EFF6A6A6AFFADABABFFEEEDEDFFECEC
          EBFFEFEFEEFFF2F1F1FFF4F4F4FFF8F8F8FFFEFEFEFFF9F9F9FFF4F4F4FFEDED
          EDFFE5E4E4FFD8D7D7FFC6C5C5FF9E9D9DFF6C6C6CFF6A6A6AFF636363FF3A3A
          3AFE0B0B0B5F0000000000000000000000000000000000000000000000000000
          0000000000000000000015151577646464FF717171FFB0AEADFFF3F2F2FFF2F2
          F2FFEFEFEFFFE8E7E7FFDEDDDDFFD3D3D3FFC3C2C2FFADADACFF9B9A9AFF8C8B
          8BFF7E7E7EFF757575FF707070FF6F6F6FFF717171FF717171FF696969FF5252
          52FE0D0D0D5F0000000000000000000000000000000000000000000000000000
          00000000000000000000161616776A6A6AFF787878FF9A9898FFBABAB9FFABAB
          AAFF9B9A9AFF8D8C8DFF828282FF7A7A7AFF757575FF747473FF767675FF7A79
          77FF817E7BFF898785FF7D7D7CFF787878FF787878FF787878FF6F6F6FFF6A6A
          6AFE1010105F0000000000000000000000000000000000000000000000000000
          0000000000000000000017171777707070FF818181FF808080FF7E7E7EFF7C7B
          7AFF7E7E7CFF858381FF8B8986FF918F8BFF9A9893FFA4A29DFFA29F9AFF9694
          90FF9C9B97FFBBB9B4FF8C8C8BFF7E7E7EFF808080FF808080FF747474FF8181
          81FE1212125F0000000000000000000000000000000000000000000000000000
          0000000000000000000018181877767676FF888888FF878787FF858483FFAAA8
          A4FFC0BEB9FFC4C2BDFFC6C4BFFFC6C4BEFFC5C3BDFFC4C2BCFF9D9C98FF8383
          83FF8E8E8DFFBBB9B5FF929191FF868686FF878787FF878787FF7A7A7AFF9999
          99FE1515155F0000000000000000000000000000000000000000000000000000
          00000000000000000000191919777C7C7CFF8F8F8FFF8E8E8EFF8C8B8AFFC6C5
          C2FFD8D8D5FFD4D3D0FFD1D0CCFFCECDC9FFCCCAC5FFC9C8C2FFA19F9DFF8C8C
          8CFF969594FFBCBBB6FF979796FF8D8D8DFF8E8E8EFF8E8E8EFF808080FFAEAE
          AEFE1818185F0000000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A77848484FF979797FF969696FF939291FFCCCB
          C9FFDFDFDDFFDBDBD9FFD8D8D5FFD6D5D2FFD3D2CFFFD1D0CCFFA8A7A5FF9393
          93FF9D9C9BFFC1BFBBFF9D9D9CFF959595FF969696FF8D8D8DFF535353FF4B4B
          4BF50D0D0D4B0000000000000000000000000000000000000000000000000000
          000000000000000000001A1A1A77898989FF9E9E9EFF9D9D9DFF999897FFD0CF
          CEFFE5E5E5FFE2E2E2FFE0E0DFFFDDDDDCFFDADAD8FFD9D8D6FFAEADACFF9999
          99FFA3A3A2FFC7C6C3FFA3A3A2FF9D9D9DFF989898FF626262FF191919FD1111
          118D000000080000000000000000000000000000000000000000000000000000
          000000000000000000001B1B1B778F8F8FFFA5A5A5FFA4A4A4FF9F9D9CFFD0CF
          CEFFE6E6E6FFE5E5E5FFE5E5E5FFE4E3E3FFE2E2E1FFE1E0DFFFBABAB9FFA8A8
          A8FFB5B5B4FFD1D0CEFFA1A1A1FF969696FF747474FF212121FF161616AB0000
          0012000000000000000000000000000000000000000000000000000000000000
          000000000000000000001D1D1D78959595FFACACACFFABABABFFA3A2A1FFD2D1
          D0FFE7E7E7FFE6E6E6FFE6E6E6FFE5E5E5FFE4E4E4FFE2E2E2FFDBDBDAFFD6D4
          D3FFD5D4D2FFD1CFCDFF828080FC494949F6303030ED1B1B1BBB020202220000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018181869939393FE949494FF8A8A8AFF7D7C7BFFB8B6
          B5FFD4D2D1FFC7C5C4FAB7B6B5F3A5A3A2E98E8B8ADA757373C85D5C5BB34544
          439C302F2F852120206F11111157060606410303032E00000014000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000010101152121217B303030BB252525AE1C1C1C961F1F
          1F7E1C1B1B6510100F4E0808083A040404290101011A0000000E000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000800000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A030303390B0B0B5711111168111111680B0B
          0B580303033B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00090303033623232386626261C8999996ECB0B0ACFAB4B4B1FEB0B0ACFEA5A5
          A1FA898987ED575756CA2121218A030303380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001F2424
          2485949493E3D1D1CEFFB7B7C5FF8787BBFF5F5FBAFF4B4BC1FF4949C1FF5757
          B8FF7676B0FF9999AAFFA8A8A6FF7A7A78E52020208900000021000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333585858BADADA
          D7FDBABACEFF5555BAFF1414C8FF0101DDFF0000E9FF0000F0FF0000F3FF0000
          F3FF0000EDFF1010D8FF4343B9FF8F8FAAFFA8A8A5FD494948BE030303370000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020303033370706FC9E4E4E3FF8888
          C1FF1515C0FF0000DBFF0000E4FF0000E8FF0000ECFF0000F0FF0000F4FF0000
          F7FF0000FAFF0000FDFF0000FAFF0E0EDAFF6363AEFFACACACFF5A5A5ACE0303
          0337000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000001F595959B8E1E1E1FF7070B8FF0606
          C2FF0000D7FF0000DCFF0000E2FF0000E7FF0000ECFF0000F0FF0000F4FF0000
          F8FF0000FAFF0000FCFF0000FDFF0000FFFF0303EBFF5252B2FFACACACFF4949
          48BE000000220000000100000000000000000000000000000000000000000000
          000000000000000000000000000826262683DADAD8FD8585BAFF0606BDFF0000
          CEFF0000D3FF0000DAFF0000E0FF0000E6FF0000EBFF0000F0FF0000F4FF0000
          F7FF0000FBFF0000FEFF0000FFFF0000FDFF0000FDFF0202EAFF6363AEFFA8A8
          A5FE2020208A0000000A00000000000000000000000000000000000000000000
          00000000000000000001030303359D9D9BE1BBBBCAFF1C1CB2FF0000C7FF0000
          CAFF0000D1FF0000D8FF0000DEFF0000E4FF0000E9FF0000EEFF0000F2FF0000
          F6FF0000FAFF0000FCFF0000FDFF0000FCFF0000FBFF0000FBFF0F0FD8FF8E8E
          AAFF7B7B79E50303033A00000001000000000000000000000000000000000000
          0000000000000000000629292984DBDBD9FF6464B0FF0000BFFF0000C3FF0000
          C7FF0000CEFF0000D5FF0000DBFF0000E2FF0000E7FF0000ECFF0000F0FF0000
          F4FF0000F7FF0000F9FF0000FAFF0000FAFF0000F9FF0000F8FF0000F5FF4141
          B7FFA8A8A6FF2222228C00000007000000000000000000000000000000000000
          00000000000000000018717171C5C5C5CCFF2929B0FF0000BFFF0000C0FF0000
          C3FF0000CAFF0000D1FF0000D8FF0000DEFF0000E4FF0000E9FF0000EDFF0000
          F1FF0000F4FF0000F6FF0000F7FF0000F7FF0000F7FF0000F6FF0000F7FF1010
          D4FF9797A9FF5A5A58CC0000001C000000000000000000000000000000000000
          00000000000004040437ADADACE9A5A5BDFF1414B7FF0000BCFF2B2BC8FF4040
          CEFF3F3FD1FF3E3ED6FF3D3DDAFF3D3DDEFF3C3CE2FF3B3BE5FF3C3CE8FF3C3C
          EBFF3C3CEDFF3C3CEFFF3D3DF0FF3D3DF1FF3E3EF1FF2B2BF2FF0101F3FF0000
          E7FF7373AEFF8B8B88EE0404043D000000000000000000000000000000000000
          0000000000010E0E0E54CACAC9F9A3A3BDFF3B3BC6FF1212BEFFBCBCE5FFE7E7
          EBFFE1E1E6FFDCDCE2FFD8D8DEFFD5D5DBFFD0D0D7FFCDCDD3FFCACAD1FFCBCB
          D1FFCCCCD3FFCECED5FFD0D0D7FFD1D1D8FFD5D5DAFFB2B2E3FF1212F0FF0000
          EDFF5454B5FFA5A5A1FB0C0C0C5B000000010000000000000000000000000000
          00000000000117171765D0D0CFFDA8A8C4FF7B7BD9FF4949CCFFD1D1EDFFF4F4
          F2FFEEEEEDFFE9E9E9FFE5E5E4FFE0E0E0FFDCDCDBFFD7D7D7FFD3D3D2FFCFCF
          CFFFCDCDCDFFCECECEFFD0D0D0FFD2D2D2FFD6D6D3FFBBBBDDFF1717EDFF0000
          ECFF4646BDFFAFAFACFE1111116B000000020000000000000000000000000000
          00000000000117171765CECECDFDADADC5FF8D8DDEFF8989DDFFE6E6F7FFFBFB
          FAFFF5F5F5FFF1F1F0FFEDEDECFFE8E8E8FFE4E4E3FFDFDFDFFFDBDBDAFFD6D6
          D6FFD2D2D1FFCECECEFFCDCDCDFFCFCFCEFFD2D2D0FFB8B8DAFF1717E9FF0000
          E8FF4848BCFFB4B4B1FE1212126B000000020000000000000000000000000000
          0000000000010E0E0E54C5C5C5F9B2B2C0FF9898DEFF9292DFFFE5E5F7FFFDFD
          FEFFFAFAFCFFF3F3F7FFEEEEF3FFEBEBEFFFE8E8EBFFE3E3E8FFE0E0E4FFDBDB
          DFFFD7D7DBFFD3D3D7FFCFCFD3FFCDCDD1FFCFCFD1FFADADDAFF1313E4FF0000
          E1FF5C5CB6FFB2B2AFFB0C0C0C5B000000010000000000000000000000000000
          00000000000004040437A9A9A9E9BABABEFFA7A7DCFF9393DEFFA3A3E3FFABAB
          E7FFA6A6E6FF9494E2FF6C6CD8FF5252D1FF4949D1FF4747D4FF4646D7FF4646
          D9FF4545DBFF4444DCFF4444DDFF4545DDFF4949DFFF3A3AE0FF1515E1FF1212
          D7FF8686B8FF9D9D9AEE0404043D000000000000000000000000000000000000
          00000000000000000018717171C5C3C3C2FFB4B4D3FF9E9EE2FF9494DEFF8C8C
          DDFF8585DCFF7D7DDBFF7070D9FF5858D4FF3E3ECFFF2A2ACDFF1C1CCDFF1515
          CFFF1414D2FF1616D5FF1C1CD8FF2222DBFF2727DDFF2727DDFF2323DFFF2A2A
          C5FFB5B5C4FF686868CC0000001C000000000000000000000000000000000000
          000000000000000000062B2B2B84CBCBCBFFB8B8C2FFAFAFE4FF9E9EE0FF9797
          DFFF9090DEFF8989DDFF8282DCFF7B7BDCFF7575DCFF6D6DDBFF6464DAFF5C5C
          DAFF5555DAFF4F4FDBFF4949DBFF4343DBFF3B3BDBFF3434DCFF2929DBFF6262
          BAFFD0D0CFFF2727278C00000007000000000000000000000000000000000000
          00000000000000000001040404359A9A9AE1BDBDBEFFBDBDD6FFAAAAE5FFA0A0
          E1FF9999E0FF9292DFFF8B8BDEFF8484DDFF7C7CDCFF7575DCFF6E6EDBFF6767
          DBFF6060DBFF5959DBFF5252DBFF4B4BDBFF4444DBFF3C3CDDFF3E3EC5FFBABA
          CDFF989897E50404043A00000001000000000000000000000000000000000000
          000000000000000000000000000829292983C8C8C7FDB8B8BBFFBFBFE0FFAAAA
          E5FFA2A2E2FF9B9BE1FF9494DFFF8D8DDEFF8686DEFF7E7EDDFF7777DCFF7070
          DCFF6969DBFF6262DBFF5B5BDBFF5454DBFF4D4DDCFF4444CFFF9292C1FFDCDC
          DAFE2727278A0000000A00000000000000000000000000000000000000000000
          00000000000000000000000000010000001F5E5E5EB8C8C8C8FFB8B8BDFFC0C0
          E1FFAEAEE6FFA4A4E2FF9D9DE1FF9696E0FF8F8FDFFF8888DEFF8181DDFF7979
          DDFF7272DCFF6B6BDCFF6464DCFF5C5CDDFF5656D0FF8989BCFFE2E2E2FF5E5E
          5EBE000000220000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333747474C9C8C8C8FFB8B8
          BBFFC0C0D8FFB6B6E7FFA8A8E5FF9F9FE2FF9797E1FF9191E0FF8A8ADFFF8383
          DEFF7B7BDDFF7474DEFF6E6EDBFF6E6EC8FF9F9FC0FFE0E0E0FF777777CE0404
          0437000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333616161BAC7C7
          C7FDBDBDBDFFBABAC3FFBCBCD6FFB4B4E1FFAAAAE4FFA0A0E3FF9898E2FF9292
          DFFF8C8CD9FF8989CCFF9797BFFFC4C4CCFFD9D9D8FD616161BE040404370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020101011F2B2B
          2B859C9C9CE3CBCBCBFFC2C2C2FFBCBCBFFFB9B9C2FFB8B8C8FFB4B4C8FFB1B1
          C2FFB8B8C3FFCACACDFFDADAD9FFA3A3A2E52B2B2B8901010121000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0009040404362D2D2D86757575C8AEAEAEECC7C7C7FACFCFCEFED1D1D0FECCCC
          CBFAB3B3B2ED787877CA2E2E2E8A040404380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A0505053910101058191919691919196A1010
          10580505053B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A030303390B0B0B5711111168111111680B0B
          0B580303033B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00090303033623232386626261C8999996ECB0B0ACFAB4B4B1FEB0B0ACFEA5A5
          A1FA898987ED575756CA2121218A030303380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001F2424
          2485949493E3D1D1CEFFB7B7C5FF8787BBFF5F5FBAFF4B4BC1FF4949C1FF5757
          B8FF7676B0FF9999AAFFA8A8A6FF7A7A78E52020208900000021000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333585858BADADA
          D7FDBABACEFF5555BAFF1414C8FF0101DDFF0000E9FF0000F0FF0000F3FF0000
          F3FF0000EDFF1010D8FF4343B9FF8F8FAAFFA8A8A5FD494948BE030303370000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020303033370706FC9E4E4E3FF8888
          C1FF1515C0FF0000DBFF0000E4FF0000E8FF0000ECFF0000F0FF0000F4FF0000
          F7FF0000FAFF0000FDFF0000FAFF0E0EDAFF6363AEFFACACACFF5A5A5ACE0303
          0337000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000001F595959B8E1E1E1FF7070B8FF0606
          C2FF0000D7FF0000DCFF0000E2FF0000E7FF0000ECFF0000F0FF0000F4FF0000
          F8FF0000FAFF0000FDFF0000FEFF0000FFFF0303EBFF5252B2FFACACACFF4949
          48BE000000220000000100000000000000000000000000000000000000000000
          000000000000000000000000000826262683DADAD8FD8585BAFF0606BDFF0000
          CEFF0101D4FF3030DBFF2929E1FF0000E6FF0000EBFF0000F0FF0000F4FF0000
          F7FF0000FBFF2A2AFBFF3636FBFF0202FDFF0000FDFF0202EAFF6363AEFFA8A8
          A5FE2020208A0000000A00000000000000000000000000000000000000000000
          00000000000000000001030303359D9D9BE1BBBBCAFF1C1CB2FF0000C7FF0000
          CBFF4A4AD3FFAEAEC1FFA6A6C4FF3939E2FF0000EAFF0000EEFF0000F2FF0000
          F7FF3939F5FFBCBCE1FFCCCCE1FF5555F6FF0101FBFF0000FBFF0F0FD8FF8E8E
          AAFF7B7B79E50303033A00000001000000000000000000000000000000000000
          0000000000000000000629292984DBDBD9FF6464B0FF0000BFFF0000C3FF3131
          CEFFBCBCCFFFBEBEBCFFB7B7B4FFA6A6C4FF3939E4FF0000ECFF0000F1FF3838
          F0FFB6B6D9FFD3D3D0FFD7D7D5FFCDCDE0FF3838F7FF0000F8FF0000F5FF4141
          B7FFA8A8A6FF2222228C00000007000000000000000000000000000000000000
          00000000000000000018717171C5C5C5CCFF2929B0FF0000BFFF0000C0FF2727
          CAFFB7B7D5FFCACAC8FFBDBDBDFFB7B7B4FFA6A6C4FF3838E6FF3636EAFFAFAF
          D1FFCACAC7FFCCCCCCFFD3D3D0FFBEBEDFFF2D2DF5FF0000F6FF0000F7FF1010
          D4FF9797A9FF5A5A58CC0000001C000000000000000000000000000000000000
          00000000000004040437ADADACE9A5A5BDFF1515B7FF0000BCFF0000BEFF0000
          C1FF3939CEFFB8B8D5FFCACAC8FFBDBDBDFFB6B6B4FFAAAAC3FFADADC8FFC0C0
          BDFFC2C2C2FFCACAC7FFB8B8D8FF3D3DF0FF0000F3FF0000F3FF0000F3FF0000
          E7FF7373AEFF8B8B88EE0404043D000000000000000000000000000000000000
          0000000000010E0E0E54CACAC9F9A3A3BDFF3C3CC7FF0000BAFF0000BCFF0000
          BEFF0000C2FF3939D0FFB8B8D5FFCACAC8FFBDBDBDFFB5B5B4FFB6B6B4FFB9B9
          B9FFBFBFBDFFB1B1CFFF3B3BEBFF0000F0FF0000F0FF0000EFFF0000EFFF0000
          EDFF5454B5FFA5A5A1FB0C0C0C5B000000010000000000000000000000000000
          00000000000117171765D0D0CFFDA8A8C4FF7C7CDAFF3333C6FF0101BAFF0000
          BCFF0000BEFF0000C3FF3939D1FFBEBED6FFC9C9C8FFBDBDBDFFB5B5B5FFB6B6
          B4FFAEAEC7FF3A3AE6FF0000EAFF0000EBFF0000EBFF0000ECFF0000ECFF0000
          ECFF4646BDFFAFAFACFE1111116B000000020000000000000000000000000000
          00000000000117171765CECECDFDADADC5FF8E8EDEFF7B7BDAFF3F3FC9FF0707
          BBFF0000BBFF0000BEFF3B3BD0FFC7C7DFFFD3D3D2FFC7C7C7FFBDBDBDFFB5B5
          B4FFAAAAC2FF3939E2FF0000E6FF0000E6FF0000E7FF0000E8FF0000E8FF0000
          E8FF4848BCFFB4B4B1FE1212126B000000020000000000000000000000000000
          0000000000010E0E0E54C5C5C5F9B2B2C0FF9999DEFF8A8ADCFF8282DBFF5858
          D1FF1A1AC1FF3F3FCCFFCFCFEBFFE9E9E7FFDCDCDCFFD3D3D2FFC9C9C8FFBDBD
          BDFFB6B6B4FFA6A6C3FF3939DEFF0000E1FF0000E2FF0000E3FF0000E3FF0000
          E1FF5C5CB6FFB2B2AFFB0C0C0C5B000000010000000000000000000000000000
          00000000000004040437A9A9A9E9BABABEFFA7A7DCFF9292DEFF8C8CDDFF8585
          DCFF9494E1FFE0E0F7FFFCFCFBFFF1F1F1FFE8E8E7FFC7C7DEFFBDBDD5FFC9C9
          C7FFBCBCBDFFB7B7B4FFA6A6C2FF3939DBFF0303DDFF0C0CDFFF1313E1FF1212
          D7FF8686B8FF9D9D9AEE0404043D000000000000000000000000000000000000
          00000000000000000018717171C5C3C3C2FFB4B4D3FF9E9EE2FF9494DEFFA1A1
          E3FFECECFAFFFFFFFFFFFFFFFFFFFDFDFCFFE2E2F1FF6969D9FF5959D6FFC4C4
          D9FFCECECDFFC3C3C3FFC0C0BEFFB2B2CDFF4B4BDFFF2828DEFF2323E0FF2A2A
          C5FFB5B5C4FF686868CC0000001C000000000000000000000000000000000000
          000000000000000000062B2B2B84CBCBCBFFB8B8C2FFAFAFE4FF9C9CE0FFAEAE
          E6FFF5F5FCFFFFFFFFFFFFFFFFFFEDEDFAFF9898E4FF6A6ADAFF6262DAFF8383
          E0FFD1D1E3FFDBDBDAFFD2D2D1FFC5C5D1FF6262DEFF3232DCFF2929DBFF6262
          BAFFD0D0CFFF2727278C00000007000000000000000000000000000000000000
          00000000000000000001040404359A9A9AE1BDBDBEFFBDBDD6FFAAAAE5FFA0A0
          E1FFBDBDEBFFF6F6FCFFEFEFFAFFA4A4E6FF7A7ADCFF7575DCFF6E6EDBFF6565
          DBFF8585E0FFD1D1E4FFD3D3DEFF8383DEFF4545DCFF3C3CDDFF3E3EC5FFBABA
          CDFF989897E50404043A00000001000000000000000000000000000000000000
          000000000000000000000000000829292983C8C8C7FDB8B8BBFFBFBFE0FFAAAA
          E5FFA2A2E2FFB2B2E7FFA8A8E5FF8C8CDEFF8686DEFF7E7EDDFF7777DCFF7070
          DCFF6868DBFF7B7BDFFF7D7DE0FF5454DCFF4C4CDCFF4444CFFF9292C1FFDCDC
          DAFE2727278A0000000A00000000000000000000000000000000000000000000
          00000000000000000000000000010000001F5E5E5EB8C8C8C8FFB8B8BDFFC0C0
          E1FFAEAEE6FFA2A2E2FF9C9CE1FF9696E0FF8F8FDFFF8888DEFF8181DDFF7979
          DDFF7272DCFF6969DCFF6262DBFF5C5CDDFF5656D0FF8989BCFFE2E2E2FF5E5E
          5EBE000000220000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333747474C9C8C8C8FFB8B8
          BBFFC0C0D8FFB6B6E7FFA8A8E5FF9F9FE2FF9797E1FF9191E0FF8A8ADFFF8383
          DEFF7B7BDDFF7474DEFF6E6EDBFF6E6EC8FF9F9FC0FFE0E0E0FF777777CE0404
          0437000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333616161BAC7C7
          C7FDBDBDBDFFBABAC3FFBCBCD6FFB4B4E1FFAAAAE4FFA0A0E3FF9898E2FF9292
          DFFF8C8CD9FF8989CCFF9797BFFFC4C4CCFFD9D9D8FD616161BE040404370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020101011F2B2B
          2B859C9C9CE3CBCBCBFFC2C2C2FFBCBCBFFFB9B9C2FFB8B8C8FFB4B4C8FFB1B1
          C2FFB8B8C3FFCACACDFFDADAD9FFA3A3A2E52B2B2B8901010121000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0009040404362D2D2D86757575C8AEAEAEECC7C7C7FACFCFCEFED1D1D0FECCCC
          CBFAB3B3B2ED787877CA2E2E2E8A040404380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A0505053910101058191919691919196A1010
          10580505053B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A030303390B0B0B5711111168111111680B0B
          0B580303033B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00090303033623232386616161C8999799ECB0ADB0FAB4B1B4FEAFADAFFEA5A2
          A4FA898889ED575656CA2121218A030303380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001F2424
          2485949394E3D1CFD1FFB9C2B8FF8DB08DFF69A76BFF58A85DFF57A85EFF64A5
          6BFF7DA583FF9BA79DFFA8A7A8FF7A797AE52020208900000021000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333585858BADAD8
          DAFDBCCABBFF5FA35BFF27A125FF18AE1BFF18B71FFF1ABD26FF1CC02DFF1FC1
          33FF22BD39FF2EB043FF54A261FF93A596FFA8A6A7FD494849BE030303370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333706F70C9E4E4E4FF8DB3
          88FF26981BFF13A80BFF17B115FF1BB61EFF1DBA26FF1FBD2EFF22C135FF24C4
          3CFF27C742FF28CA46FF26C744FF2FB247FF6FA077FFACACACFF5A5A5ACE0303
          0337000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000001F595959B8E1E1E1FF78A670FF1893
          06FF15A306FF18A910FF1AAF18FF1CB420FF1EB928FF20BD30FF24C139FF27C4
          41FF29C748FF2CC94EFF2DCA4FFF29CB4BFF26BC41FF60A06AFFACACACFF4948
          49BE000000220000000100000000000000000000000000000000000000000000
          000000000000000000000000000826262683DAD8DAFD8CAC85FF1A8D06FF1599
          01FF17A009FF19A711FF1BAD18FF1DB321FF1EB727FF33C241FF7CDA8AFF32C7
          4BFF2AC74AFF2ECA52FF2FCB55FF2CCA4EFF28CA46FF23BC3BFF6D9F73FFA8A6
          A8FE2020208A0000000A00000000000000000000000000000000000000000000
          00000000000000000001030303359C9C9DE1BDC6BBFF2E891CFF169100FF1795
          01FF189D08FF1AA410FF1BAA18FF1CB01EFF2FBB37FFABE2B0FFCFEFD4FF34C6
          4CFF2AC648FF2DC94FFF2DC951FF2BC94CFF28C845FF23C93CFF28B139FF92A4
          94FF7A797AE50303033A00000001000000000000000000000000000000000000
          0000000000000000000629292984DBDADBFF6E9A64FF198A00FF198E00FF1892
          00FF199907FF1AA10FFF1AA715FF2EB32EFFA3D8A5FFF1EFF1FFCBEACFFF33C4
          48FF27C343FF2AC648FF2AC749FF29C746FF26C640FF23C639FF1CC42FFF4EA0
          56FFA8A7A8FF2222228C00000007000000000000000000000000000000000000
          00000000000000000018717171C5C6CAC5FF3D8929FF198800FF1A8B00FF198F
          00FF199505FF199C0BFF2DAA25FF9DCE9CFFE1E1E1FFE8E6E8FFC5E4C8FF31C1
          43FF25C03BFF26C23FFF26C340FF25C33EFF23C339FF20C334FF1DC52DFF25AD
          2FFF99A599FF5A595ACC0000001C000000000000000000000000000000000000
          00000000000004040437ADACADE9A9B6A5FF2D8715FF1B8500FF1B8800FF1A8B
          00FF179000FF2CA01DFF98C595FFD3D3D3FFD7D7D7FFDFDEDEFFD6E2D7FFA1DA
          A8FF9FDDA7FFA2E1ABFFA5E4AEFFA6E6AFFFA6E6AEFF52CF5EFF19C127FF17B9
          21FF78A27AFF8B898AEE0404043D000000000000000000000000000000000000
          0000000000010E0E0E54CAC9CAF9A8B5A3FF539D3CFF1D8200FF1C8500FF1987
          00FF2D9516FF9BC394FFD1D1D1FFCECECEFFD0D0D0FFD5D5D5FFDDDCDDFFE6E3
          E5FFECE9ECFFF2F0F2FFF9F6F8FFFEFCFEFFFFFFFFFF75D87CFF16BD1FFF13BC
          1AFF5CA25EFFA5A2A5FB0C0C0C5B000000010000000000000000000000000000
          00000000000117171765D0CFD0FDADBBA8FF8EBC7CFF4C9933FF1D8200FF2A8C
          10FF9FC396FFD6D5D6FFD2D2D2FFD0D0D0FFCECECEFFCECECEFFD4D4D4FFDADA
          DAFFE0E0E0FFE7E7E7FFEDEDEDFFF3F3F3FFFAFAFAFF73D576FF14B918FF12BA
          14FF50A550FFAFADAFFE1111116B000000020000000000000000000000000000
          00000000000117171765CECDCEFDB2BDADFF9DC48EFF8DBC7BFF559F3DFF328D
          17FF9EC195FFD8D8D9FFD5D4D5FFD2D2D2FFD0D0D0FFCECECEFFCECECEFFD2D2
          D2FFD8D8D8FFDFDFDFFFE5E5E5FFEBEBEBFFF2F2F2FF70D070FF12B512FF10B6
          0EFF51A54FFFB4B1B4FE1212126B000000020000000000000000000000000000
          0000000000010E0E0E54C5C5C5F9B5BBB2FFA7C799FF9AC18AFF92BF82FF6BAB
          57FF499A32FFA0C297FFD8D8D8FFD5D5D5FFD3D3D3FFD1D1D1FFCFCFCFFFD1CF
          D1FFD4D1D4FFDAD7DAFFE0DEE0FFE6E4E7FFEEEBEEFF6ECC6BFF10B10BFF12B2
          0BFF62A45FFFB2AFB2FB0C0C0C5B000000010000000000000000000000000000
          00000000000004040437A9A9A9E9BBBDBAFFB2CBA7FFA2C592FF9BC38CFF96C1
          86FF85B972FF72B160FFB7CFB1FFDADADAFFD6D6D6FFD4D3D4FFC7D1C5FF91C2
          8BFF8BC085FF8DC487FF8FC88BFF93CC8FFF9AD296FF53C04BFF22B317FF21AC
          14FF89AD86FF9D9A9DEE0404043D000000000000000000000000000000000000
          00000000000000000018717171C5C3C3C3FFBAC9B4FFACCB9EFFA4C795FF9DC4
          8EFF97C288FF90C080FF92C283FFC7DAC1FFE3E3E3FFDFDEE0FFBDD3B9FF3CA6
          2AFF2EA31DFF30A721FF34AC26FF39B02BFF3BB32EFF3AB42CFF33B524FF36A3
          2AFFB6C1B5FF686868CC0000001C000000000000000000000000000000000000
          000000000000000000062B2B2B84CBCBCBFFBABEB8FFBAD2AFFFABCB9EFFA6C8
          97FF9FC590FF99C389FF91C081FF94C385FFCBDEC5FFECEAECFFD3E1CFFF75BB
          65FF66B655FF60B650FF5AB64AFF53B543FF4BB43BFF44B434FF39B229FF69A6
          62FFD0CFD0FF2727278C00000007000000000000000000000000000000000000
          00000000000000000001040404359A9A9AE1BDBEBDFFC2CDBDFFB7D1AAFFADCC
          A0FFA7C999FFA1C692FF9AC48BFF93C183FF95C486FFCCDFC6FFD7E4D4FF80BE
          70FF70B95FFF69B859FF62B752FF5BB64BFF54B644FF4CB63CFF4BA53EFFBCC9
          BAFF989898E50404043A00000001000000000000000000000000000000000000
          000000000000000000000000000829292983C8C8C8FDB9BAB8FFC6D5BFFFB7D1
          AAFFAFCDA2FFA9CA9BFFA2C894FF9CC58DFF94C285FF98C589FFB6D6ADFF87C0
          76FF79BB68FF72BA62FF6BB95BFF64B854FF5DB84DFF53AD44FF97B592FFDCDB
          DCFE2727278A0000000A00000000000000000000000000000000000000000000
          00000000000000000000000000010000001F5E5E5EB8C8C8C8FFB9BBB8FFC8D6
          C0FFBAD3AEFFB0CEA4FFABCB9DFFA4C996FF9EC68FFF97C387FF91C282FF8AC0
          79FF83BE72FF7BBC6BFF74BB64FF6CBA5CFF64B056FF8FAF89FFE2E2E2FF5E5E
          5EBE000000220000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333747474C9C8C8C8FFB9BA
          B8FFC5D0C0FFC1D7B6FFB4D1A8FFACCC9FFFA5CA97FF9FC791FF99C58AFF92C2
          83FF8BC07BFF85BF74FF7DBD6EFF7AB06EFFA3B79FFFE0E0E0FF777777CE0404
          0437000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333616161BAC7C7
          C7FDBDBDBDFFBCC0BAFFC1CDBCFFBED2B4FFB5D1AAFFADCEA0FFA5CB98FF9FC8
          92FF99C28CFF94B889FF9DB497FFC5CAC4FFD9D9D9FD616161BE040404370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020101011F2B2B
          2B859C9C9CE3CBCBCBFFC2C2C2FFBDBEBCFFBBBFB9FFBBC3B8FFB8C2B4FFB4BD
          B1FFBAC0B8FFCBCCCAFFDAD9DAFFA3A2A3E52B2B2B8901010121000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0009040404362D2D2D86757575C8AEAEAEECC7C7C7FACFCFCFFED1D0D1FECCCB
          CCFAB3B2B3ED787878CA2E2E2E8A040404380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A0505053910101058191919691919196A1010
          10580505053B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A030303390B0B0B5711111168111111680B0B
          0B580303033B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00090303033623232386616161C8999799ECB0ADB0FAB4B1B4FEAFADAFFEA5A2
          A4FA898889ED575656CA2121218A030303380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000001F2424
          2485949394E3D1CFD1FFB9C2B8FF8DB08DFF69A76BFF58A85DFF57A85EFF64A5
          6BFF7DA583FF9BA79DFFA8A7A8FF7A797AE52020208900000021000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333585858BADAD8
          DAFDBCCABBFF5FA35BFF27A125FF18AE1BFF18B71FFF1ABD26FF1CC02DFF1FC1
          33FF22BD39FF2EB043FF54A261FF93A596FFA8A6A7FD494849BE030303370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333706F70C9E4E4E4FF8DB3
          88FF26981BFF13A80BFF17B115FF1BB61EFF1DBA26FF1FBD2EFF22C135FF24C4
          3CFF27C742FF28CA46FF26C744FF2FB247FF6FA077FFACACACFF5A5A5ACE0303
          0337000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000001F595959B8E1E1E1FF78A670FF1893
          06FF15A306FF18A910FF1AAF18FF1CB420FF1EB928FF21BD31FF25C13AFF26C4
          3FFF29C748FF2CC94EFF2DCA4FFF29CB4BFF26BC41FF60A06AFFACACACFF4948
          49BE000000220000000100000000000000000000000000000000000000000000
          000000000000000000000000000826262683DAD8DAFD8CAC85FF1A8D06FF1599
          01FF17A009FF19A711FF1BAD18FF1DB321FF1FB829FF24BD33FF6FD27CFF46CB
          5DFF28C748FF2ECA52FF2FCB55FF2CCA4EFF28CA46FF23BC3BFF6D9F73FFA8A6
          A8FE2020208A0000000A00000000000000000000000000000000000000000000
          00000000000000000001030303359C9C9DE1BDC6BBFF2E891CFF169100FF1795
          01FF189D08FF1AA410FF1BAA18FF1EB020FF20B628FF23BB32FFA0D6A6FFB6DB
          BDFF46CC61FF2AC84DFF2DC951FF2BC94CFF28C845FF23C93CFF28B139FF92A4
          94FF7A797AE50303033A00000001000000000000000000000000000000000000
          0000000000000000000629292984DBDADBFF6E9A64FF198A00FF198E00FF1892
          00FF199907FF1AA10FFF1CA717FF1EAE1EFF20B326FF23B930FF9CD3A2FFDED9
          DDFFB4DABCFF47CC61FF28C647FF29C746FF26C640FF23C639FF1CC42FFF4EA0
          56FFA8A7A8FF2222228C00000007000000000000000000000000000000000000
          00000000000000000018717171C5C6CAC5FF3D8929FF198800FF1A8B00FF198E
          00FF189504FF1A9D0CFF1CA414FF1DAA1BFF1FB023FF22B72CFF9BD19FFFD9D6
          D9FFDAD8DAFFB5DABBFF45CA5BFF23C33CFF24C33AFF21C335FF1DC52DFF25AD
          2FFF99A599FF5A595ACC0000001C000000000000000000000000000000000000
          00000000000004040437ADACADE9A9B6A5FF2D8715FF1B8500FF198700FF399A
          23FF92C589FF95C88EFF92C88EFF90C78EFF8EC78FFF90CA93FFBED3BFFFD4D3
          D4FFD5D5D5FFD9D8D9FFB5D9BAFF43C854FF1FC031FF1FC12EFF1CC129FF17B9
          21FF78A27AFF8B898AEE0404043D000000000000000000000000000000000000
          0000000000010E0E0E54CAC9CAF9A8B5A3FF539D3CFF1D8200FF198300FF51A3
          3DFFE6E9E6FFE8E5E8FFE1DFE1FFDBD8DBFFD4D2D4FFD1CED1FFCFCECFFFD0D0
          D0FFD2D2D2FFD4D4D4FFD9D7D9FFB5D8B8FF41C64CFF1ABD26FF1ABE23FF13BC
          1AFF5CA25EFFA5A2A5FB0C0C0C5B000000010000000000000000000000000000
          00000000000117171765D0CFD0FDADBBA8FF8EBC7CFF4C9933FF1B8100FF52A1
          3DFFEAEFE9FFECECECFFE6E6E6FFDFDFDFFFD9D9D9FFD3D3D3FFCECECEFFCECE
          CEFFCFCFCFFFD2D2D2FFD4D4D4FFD8D6D8FFB6D7B8FF39C23EFF16BA1BFF12BA
          14FF50A550FFAFADAFFE1111116B000000020000000000000000000000000000
          00000000000117171765CECDCEFDB2BDADFF9DC48EFF8DBC7BFF529D3BFF5AA4
          46FFF1F5F0FFF5F4F5FFEEEEEEFFE7E7E7FFE1E1E1FFDBDBDBFFD4D4D4FFCFCF
          CFFFCDCDCDFFCFCFCFFFD1D1D1FFD6D4D6FFB4D5B4FF37BE37FF14B614FF10B6
          0EFF51A54FFFB4B1B4FE1212126B000000020000000000000000000000000000
          0000000000010E0E0E54C5C5C5F9B5BBB2FFA7C799FF9AC18AFF90BD7EFF98C4
          8AFFF8FBF8FFFEFDFEFFF8F7F8FFF3F1F3FFEDEBEDFFE7E5E7FFDEDDDEFFD6D6
          D6FFD0D0D0FFCDCDCDFFD1CFD1FFAFD0AEFF3AB937FF13B00FFF14B20FFF12B2
          0BFF62A45FFFB2AFB2FB0C0C0C5B000000010000000000000000000000000000
          00000000000004040437A9A9A9E9BBBDBAFFB2CBA7FFA2C592FF9BC28BFFA6CA
          98FFD0E4C9FFCFE4C9FFBDDAB5FFA6CE9CFF9BC891FF97C78EFFC9DBC6FFE0DF
          E0FFD8D8D8FFD4D3D4FFAACBA8FF38B231FF18AB0FFF20B016FF25B41AFF21AC
          14FF89AD86FF9D9A9DEE0404043D000000000000000000000000000000000000
          00000000000000000018717171C5C3C3C3FFBAC9B4FFACCB9EFFA4C795FF9DC4
          8EFF96C186FF8FBF7EFF84BB73FF6EB15CFF56A742FF44A22FFFAFD3A9FFECEA
          ECFFE5E4E5FFBFD7BBFF54B749FF36AF29FF3CB32FFF3AB42CFF33B524FF36A3
          2AFFB6C1B5FF686868CC0000001C000000000000000000000000000000000000
          000000000000000000062B2B2B84CBCBCBFFBABEB8FFBAD2AFFFABCB9EFFA6C8
          97FF9FC590FF98C389FF92C182FF8CBF7BFF86BD75FF7EBB6DFFCBE2C5FFF8F6
          F9FFD1E4CDFF76C068FF58B548FF53B543FF4BB43BFF44B434FF39B229FF69A6
          62FFD0CFD0FF2727278C00000007000000000000000000000000000000000000
          00000000000000000001040404359A9A9AE1BDBEBDFFC2CDBDFFB7D1AAFFADCC
          A0FFA7C999FFA1C692FF9AC48BFF94C184FF8DBF7CFF86BE75FFD1E6CCFFDCEC
          D9FF85C276FF68B757FF62B752FF5BB64BFF54B644FF4CB63CFF4BA53EFFBCC9
          BAFF989898E50404043A00000001000000000000000000000000000000000000
          000000000000000000000000000829292983C8C8C8FDB9BAB8FFC6D5BFFFB7D1
          AAFFAFCDA2FFA9CA9BFFA2C894FF9CC58DFF95C286FF8FC180FFB5D7ABFF94C7
          86FF77BB67FF72BA62FF6BB95BFF64B854FF5DB84DFF53AD44FF97B592FFDCDB
          DCFE2727278A0000000A00000000000000000000000000000000000000000000
          00000000000000000000000000010000001F5E5E5EB8C8C8C8FFB9BBB8FFC8D6
          C0FFBAD3AEFFB0CEA4FFABCB9DFFA4C996FF9EC68FFF97C488FF91C281FF89BF
          78FF83BE72FF7BBC6BFF74BB64FF6CBA5CFF64B056FF8FAF89FFE2E2E2FF5E5E
          5EBE000000220000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000203030333747474C9C8C8C8FFB9BA
          B8FFC5D0C0FFC1D7B6FFB4D1A8FFACCC9FFFA5CA97FF9FC791FF99C48AFF92C2
          83FF8BC07BFF85BF74FF7DBD6EFF7AB06EFFA3B79FFFE0E0E0FF777777CE0404
          0437000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000303030333616161BAC7C7
          C7FDBDBDBDFFBCC0BAFFC1CDBCFFBED2B4FFB5D1AAFFADCEA0FFA5CB98FF9FC8
          92FF99C28CFF94B889FF9DB497FFC5CAC4FFD9D9D9FD616161BE040404370000
          0003000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020101011F2B2B
          2B859C9C9CE3CBCBCBFFC2C2C2FFBDBEBCFFBBBFB9FFBBC3B8FFB8C2B4FFB4BD
          B1FFBAC0B8FFCBCCCAFFDAD9DAFFA3A2A3E52B2B2B8901010121000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0009040404362D2D2D86757575C8AEAEAEECC7C7C7FACFCFCFFED1D0D1FECCCB
          CCFAB3B2B3ED787878CA2E2E2E8A040404380000000A00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000001A0505053910101058191919691919196A1010
          10580505053B0000001B00000007000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000006000000120000001C000000230000002500000024000000230000
          0024000000250000002500000023000000230000002500000025000000250000
          0025000000230000002300000025000000250000002400000023000000240000
          0025000000230000001C00000012000000060000000100000000000000000000
          00010000000700000017000000240000002D0000002F0000002E0000002D0000
          002E0000002F0000002E0000002C0000002C0000002F0000002E0000002E0000
          002F0000002C0000002C0000002E0000002F0000002E0000002D0000002E0000
          002F0000002D0000002400000017000000070000000100000000000000000000
          0001000000080000001E0000002D3B3B3BFF3B3B3BFF3B3B3BFF3B3B3BFF3B3B
          3BFF3B3B3BFF3C3C3CFF3C3C3CFF3D3D3DFF3E3E3EFF404040FF424242FF4545
          45FF484848FF4D4D4DFF525252FF565656FF5B5B5BFF5F5F5FFF626262FF6565
          65FF666666FF0000002D0000001E000000080000000100000000000000000000
          0001000000060000001D0000002EF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0
          E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0
          E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0E8FFF1F0
          E8FF6C6C6CFF0000002E0000001D000000060000000100000000000000000000
          0001000000030000001600000027F0EFE8FF565656FF7B7B7BFFC3C3C3FFF1F0
          E8FFF0EFE8FFA5A5A5FFD4D4D4FFF0EFE8FFAAAAAAFFCDCDCDFFF1F0E8FFA8A8
          A8FFCCCCCCFFF0EFE8FF8C8C8CFFD7D7D7FFF0EFE8FF7B7B7BFFB6B6B6FFF1F0
          E8FF737373FF0000002700000016000000030000000100000000000000000000
          0000000000010000000B0000001CF0EFE7FF000BE0FF1721E2FF8F94F2FFF0EF
          E8FFF0EFE7FF979797FFADADADFFF0EFE7FF949494FFA6A6A6FFF0EFE7FF9494
          94FFA4A4A4FFF0EFE7FF1923E3FF686EECFFF0EFE7FF2630E5FF6970EDFFF0EF
          E7FF7B7B7BFF0000001C0000000B000000010000000000000000000000000000
          000000000000000000040000000EF0EFE7FF000BE0FF0813E0FF5A61EBFFF0EF
          E7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EF
          E7FFF0EFE7FFF0EFE7FF020DE0FF0D17E1FFF0EFE7FF0510E0FF131DE1FFF0EF
          E7FF818181FF0000000E00000004000000000000000000000000000000000000
          0000000000000000000100000006F0EFE7FFF0EFE7FFF0EFE7FFF0EFE7FFF0EF
          E7FFF0EFE7FFA5A5A5FFD4D4D4FFF0EFE7FFA8A8A8FFCECECEFFF0EFE7FFAEAE
          AEFFCCCCCCFFF0EFE7FF000BE0FF000BE0FFF0EFE7FF000BE0FF000BE0FFF0EF
          E7FF898989FF0000000600000001000000000000000000000000000000000000
          0001000000000000000000000002EFEEE6FF6D6D6DFFA7A7A7FFDEDEDEFFEFEE
          E6FFEFEEE6FF949494FFA8A8A8FFEFEEE6FF979797FFAFAFAFFFEFEEE6FF9999
          99FFA5A5A5FFEFEEE6FFEFEEE6FFEFEEE6FFEFEEE6FFEFEEE6FFEFEEE6FFEFEE
          E6FF8D8D8DFF0000000200000000000000000000000100000000000000000000
          0001000000000000000100000001EEEDE6FFA7A7A7FFAEAEAEFFBBBBBBFFEFEE
          E6FFEFEEE6FFEFEEE6FFEEEDE6FFEFEEE6FFEFEEE6FFEFEEE6FFEFEEE6FFEFEE
          E6FFEFEEE6FFEFEEE6FFA9A9A9FFB5B5B5FFBBBBBBFFCFCFCFFFF5F5F5FFEEED
          E6FF8F8F8FFF0000000100000001000000000000000100000000000000000000
          0000000000000000000000000001EEEDE5FFA6A6A6FFA6A6A6FFA6A6A6FFEEED
          E5FFEEEDE5FFA3A3A3FFD3D3D3FFEEEDE5FFA5A5A5FFBBBBBBFFEEEDE5FFA1A1
          A1FFC7C7C7FFEEEDE5FFA6A6A6FFA6A6A6FFA6A6A6FFADADADFFD9D9D9FFEEED
          E5FF919191FF0000000100000000000000000000000000000000000000000000
          0000000000000000000000000001EDECE4FF686868FF8B8B8BFFC5C5C5FFEDEC
          E4FFEDECE4FF969696FFAFAFAFFFEDECE4FF939393FFA0A0A0FFEDECE5FF9898
          98FFA7A7A7FFEDECE4FF939393FF939393FF939393FF939393FF878787FFEDEC
          E4FF919191FF0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000ECEBE4FFA6A6A6FFB3B3B3FFDBDBDBFFECEB
          E4FFECEBE3FFECEBE3FFECEBE4FFECEBE4FFECEBE4FFECEBE4FFECEBE4FFECEB
          E4FFECEBE3FFECEBE4FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFAFAFAFFFECEB
          E4FF909090FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000EBEAE2FFA6A6A6FFA8A8A8FFB0B0B0FFEBEA
          E2FFEBEAE2FFA3A3A3FFD0D0D0FFEBEAE2FF9E9E9EFFC0C0C0FFEBEAE3FFA7A7
          A7FFC5C5C5FFEBEAE3FFA6A6A6FFA6A6A6FFA6A6A6FFA9A9A9FFB1B1B1FFEBEA
          E2FF8E8E8EFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E9E8E1FFE9E8E1FFE9E8E1FFE9E8E1FFE9E8
          E1FFE9E8E1FF959595FFA8A8A8FFE9E8E1FF969696FFA2A2A2FFE9E8E1FF9797
          97FFA2A2A2FFE9E8E1FFE9E8E1FFE9E8E1FFEAE9E2FFE9E8E1FFE9E8E1FFE9E8
          E1FF8C8C8CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E7E6DFFF939393FF939393FF939393FFE7E6
          DFFFE7E6DFFFE7E6DFFFE7E6DFFFE7E6E0FFE7E6DFFFE7E6DFFFE7E6DFFFE7E6
          DFFFE7E6DFFFE7E6E0FF939393FF939393FF7A7A7AFFC7C7C7FFDCDCDCFFE6E5
          DFFF898989FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E5E4DEFFD7B26FFFD7B26FFFD7B26FFFE5E4
          DDFFE5E4DDFFA0A0A0FFCCCCCCFFE4E3DDFFACACACFFD4D4D4FFE5E4DDFFA2A2
          A2FFC8C8C8FFE5E4DDFFA6A6A6FFA6A6A6FFA8A8A8FFB4B4B4FFC5C5C5FFE4E3
          DDFF898989FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E3E2DCFFD7B26FFFD7B26FFFD7B26FFFE3E2
          DBFFE3E2DBFF939393FFA0A0A0FFE2E1DBFF969696FFA5A5A5FFE2E1DBFF9393
          93FF9E9E9EFFE2E1DBFFA6A6A6FFA6A6A6FFA6A6A6FFA7A7A7FFBABABAFFE2E1
          DBFF8A8A8AFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000E2E1DBFFE2E1DBFFE2E1DBFFE2E1DBFFE1E0
          DAFFE0DFDAFFE0DFD9FFE0DFD9FFE0DFD9FFE0DFD9FFDFDED8FFDFDED9FFE0DF
          D9FFE0DFD9FFE0DFD9FFDFDED9FFE0DFD9FFE0DFD9FFE0DFD9FFE0DFD9FFE0DF
          D9FF8C8C8CFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D2D1CDFFD1D0CDFFD1D0CDFFD2D1CDFFD2D1
          CDFFD2D1CDFFD1D0CDFFD1D0CDFFD2D1CDFFD2D1CDFFD1D0CDFFD1D0CDFFD1D0
          CCFFAEAB98FFA8A490FFA29E88FF9D9983FF99947DFF97927AFF938E76FFCBCA
          C6FF8E8E8EFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CECDCAFFCECDCAFFCFCECAFFCFCECAFFCECD
          CAFFCFCECAFFCFCECAFFCECDCAFFCECDCAFFCECDCAFFCFCECAFF000BE0FFCECD
          C9FFAFAC99FFA9A491FFA29F88FF9E9983FF99947DFF97927AFF938E76FFC6C5
          C2FF939393FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000CBCAC7FFCCCBC8FFCCCBC8FFCCCBC8FFCCCB
          C8FFCCCBC8FFCCCBC8FFCCCBC8FFCCCBC8FFCCCBC8FFCCCBC8FFCBCAC7FFCBCA
          C7FFCAC9C6FFCAC9C6FFC8C7C4FFC7C6C2FFC6C5C2FFC5C4C0FFC3C2BFFFC1C0
          BDFF959595FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C9C8C5FF646464FF696969FF727272FF7878
          78FF808080FF858585FF8A8A8AFF8F8F8FFF929292FF949494FF979797FF9D9D
          9DFF9E9E9EFFA2A2A2FFA5A5A5FFA7A7A7FFA9A9A9FFA7A7A7FFA7A7A7FFBCBC
          B9FF9B9B9BFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C7C6C4FF5E5E5EFFF2F2F2FFF2F2F2FFF4F4
          F4FFF4F4F4FFF6F6F6FFF7F7F7FFF8F8F8FFFAFAFAFFFBFBFBFFFCFCFCFFFDFD
          FDFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1FFB9B8
          B6FF9F9F9FFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C5C3FF5A5A5AFFF0F0F0FF7DEDC4FF7BEC
          C2FF78E9BEFF74E6BAFF70E3B6FF6BDEB0FF64D9A9FF5DD4A1FF55CD98FF4EC7
          8FFF45C086FF3DB97CFF35B373FF2EAD6BFF28A865FFFFFFFFFF9B9B9BFFB4B3
          B1FFA3A3A3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C5C4C2FF515151FFEEEEEEFF7DEDC4FF7BEC
          C2FF78E9BEFF74E6BAFF70E2B5FF6ADEAFFF63D8A7FF5CD39FFF55CD97FF4CC6
          8DFF44BF84FF3BB87AFF34B272FF2DAC6AFF27A763FFFFFFFFFF929292FFB1B1
          AFFFA9A9A9FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C4C3C1FF4E4E4EFFEDEDEDFF7DEDC4FF7AEB
          C1FF77E9BEFF73E6B9FF6FE2B4FF69DDAEFF63D8A7FF5CD29FFF54CC96FF4BC5
          8DFF43BE83FF3BB87AFF33B171FF2CAC6AFF26A763FFFFFFFFFF8B8B8BFFAFAE
          ACFFADADADFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C4C3C1FF4A4A4AFFECECECFFEDEDEDFFEEEE
          EEFFF0F0F0FFF2F2F2FFF4F4F4FFF6F6F6FFF7F7F7FFF9F9F9FFFAFAFAFFFCFC
          FCFFFDFDFDFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFACAB
          A9FFB0B0B0FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C4C3C0FF484848FF484848FF494949FF4A4A
          4AFF4C4C4CFF4C4C4CFF4C4C4CFF4D4D4DFF4E4E4EFF4E4E4EFF515151FF5353
          53FF585858FF616161FF656565FF6E6E6EFF757575FF7A7A7AFF7E7E7EFFAAA9
          A7FFB3B3B3FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C4C3C0FFC3C2C0FFC3C2C0FFC2C1BFFFC2C1
          BFFFC1C0BEFFC1C0BEFFC0BFBDFFC0BFBDFFBEBDBBFFBDBCBAFFBCBBB9FFBAB9
          B7FFB8B7B5FFB6B5B3FFB2B1B0FFB1B0AEFFAEADACFFAEADABFFABAAA8FFA8A8
          A7FFB5B5B5FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040000000D0000000D00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          001D0000003304171D6505273387021218410001010300000000000000000000
          0000000000000000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000030000001A0000
          0037030C0E5C0E4F66E41E5777FF295D7AEC081E265700000000000000000707
          070C242321401716163D06050523000000120000000800000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000016000000350000
          003E0613199E1D536BFF507F9BFF7E9FB8FF224F60B400010108000000004E4C
          495CB8B2A7F07F7C75E6696762C552504C9D353431701B1A19470A0909290101
          0115000000090000000400000001000000000000000000000000000000000000
          00000000000000000000000000000000000100000011000000320000003E0106
          08550B1828E01B2F44FF3E6980FF518096FF1637428500000001000000006765
          6173BAB4A9FF948C8BFFC1ABAAFFAFA09EFF9C938FFC87827EEC74706BD15A57
          53A93F3C397D242321530E0E0D30020202190000000B00000004000000010000
          00000000000000000000000000000000000D0000002E0000003F0000003B0714
          1F91172B47FF172742FF1C2940FF122334CB0206071C00000000000000006765
          6173BAB4A9FF968B8AFFA78989FFAE8D8DFFC2A0A0FFCDB2B1FFA8B8A3FF92A4
          8FFF8F978AFE898A82F3787570DA625F5BB74746418B2B2A275E141413390505
          051E0000000D000000050000000A000000280000003E0000003D01060843172D
          47D6223A5DFF364864FF283851F3030D15530000000000000000000000006865
          6173B9B4A9FFA29493FFB49291FF7C6362FF836969FFAA908EFFAED1A9FF99CE
          99FF9CCC9CFF9CC69CFFB6C5B5FFB9B7B7FFA6A5A2FF94918DF8827F7AE46C69
          64C3504E49993533306C1B1A184D090908450101013F0000002E0A1A27772A47
          6EFC3F5779FF5D6D87FF1425369B000101060000000000000000000000006866
          6173B9B4A9FF9C9799FFD2C0C9FFB49C9FFFA58788FFD9B5B2FFB1D2AAFF95CB
          96FF97CC97FF97CC97FFCAE0CAFFE9E8E9FFE5E5E6FFDFDFDFFFCFCFCFFFB5B4
          B3FFAAA9A7FF9E9C98FC8B8883EC73716BD25B5853AD37393985244060D43E5C
          83FF8090A9FF455972D801080C27000000000000000000000000000000006866
          6273BAB4A9FF85929EFFA4D2FFFFADD2FCFFB9D0F1FFCDD4E9FFC3DBC5FFADD6
          ADFFA4D3A4FF9CCF9CFFC9DFC9FFE6E6E6FFE5E5E5FFE6E6E6FFD5D5D5FF8D8D
          8DFF909090FFA8A8A9FFB9BCB9FF98AF97FF91A48DFF7A8E89FE3E6188FF7D91
          ABFF909EB5F90F1E2C6500000000000000000000000000000000000000006966
          6273BAB4A9FF82909CFF9BCEFFFF97CCFFFF96CCFFFFA0D0FDFFA5ADB4FF9B9D
          9AFFACB4ACFFBDCCBDFFDEE7DEFFE9E8E9FFE7E7E7FFE6E6E6FFE7E6E6FF9E9D
          9CFF717170FF787777FFA1A6A1FF769476FF587657FF4B796FFF497694FFA9BC
          CBFE3E50639F0002030C00000000000000000000000000000000000000006967
          6273BAB4A9FF828F99FFA1D2FEFF9BCFFFFF98CDFFFFA2D0FEFFC2C9D0FF8A89
          89FF737373FF8C8B8CFFDDDCDDFFE7E7E7FFE7E7E7FFE9E8E8FFE5E9EEFFBFCE
          DDFFACB4BCFF9B9D9EFFC1C6C1FF8AAA8AFF4D6651FF265764FF60A1B2FF6E95
          9BE1111415250000000000000000000000000000000000000000000000006967
          6273B9B3A9FF818D82FF9EC8AFFF93B9B3FF9FC9D3FFACD5EAFFDFE5EAFFB0B0
          AFFF888888FFC1C1C1FFE7E7E7FFE5E5E5FFE5E5E5FFE6E5E4FFD6E3EEFFA0CD
          F9FFA8C3DDFFA1A7ACFF7C7C7CFF555855FF303739FF275469FF84AAB4FF7783
          82DD1514131C0000000000000000000000000000000000000000000000006765
          6173B6B0A7FF7C8A7AFF87B486FF577556FF5F7E5EFF9AC39CFFE1E8E1FFE7E7
          E7FFDFDFDFFFE4E4E4FFEDEAEAFFE8E6E6FFE6E6E6FFE6E6E5FFD8DFE5FFC7D4
          E1FFBABBBCFF928F8BFF7C756FFF77675DFF564940FF434546FF606364FF9EA1
          A2F74F54546F0001010200000000000000000000000000000000000000006664
          6073B3ACA3FF798777FF94C595FF5D7F5DFF577657FF9AC79AFFDDE5DDFFE6E5
          E6FFE6E6E6FFE6E7E7FFF4E0E0FFFCD4D4FFF9D9D9FFEADADAFFE3E3E3FFCFCB
          C6FF988C7FFF94918EFFAEB0B4FFDAB7ADFFAD8D81FF97786AFFA98778FF7C71
          67FF8A8A89E92828283B00000000000000000000000000000000000000006562
          5E73AFA99FFF858983FFC9DFC9FFAFCBAFFF99BC99FFA9D2A9FFDFE6DEFFE7E6
          E5FFE6E5E5FFE5E6E5FFF5DDDDFFFFCBCBFFFECACAFFE3CCCDFFCAC5C0FF9789
          7AFFAEB2B4FFC3D1DEFFD2D9DFFFE7CCBEFFC8A894FFAD8D77FFD9AF96FF9D88
          6AED605643D44040408600000000000000000000000000000000000000006361
          5D73ABA59CFF898887FFE8E7E8FFE6E7E6FFE4E7E4FFDEE6E1FFC8E0F3FFC9DE
          F3FFD6E3EEFFDFE5EBFFF4DFE0FFFFCFCFFFF8CACBFFD2C8C7FFA79683FF9EA7
          A9FFB9C8D2FFD1DADDFFDEDFDAFFB7A586FFB49D77FFC5AA81FFD0B083FFA289
          58E96D5829AA3F3B33AB0203030600000000000000000000000000000000615F
          5B73A7A198FF868684FFE7E7E7FFE5E5E5FFE5E5E5FFE4E6E8FFACD4FCFF97CC
          FFFF9DCEFFFFA6D3FFFFB2C9CCFFB5BCA4FFCBC7B7FFC2BAB1FFB9A383FFBCC3
          BAFFD6DAD4FFCED2C7FFCCC9B1FFBEA773FF9F864BFFA08647FFAD9350FFA488
          3FEE9A7F38CB555041BF0203040A00000000000000000000000000000000605D
          5973A49E94FF84817FFFE3DEDEFFE6E4E4FFE8E7E7FFE5E8EAFFACD5FCFF96CB
          FFFF97CCFFFF99CDFFFF8CB1B4FF526F51FF577358FFA9AC99FFC0AF74FFD8CC
          A9FFDED5B5FFD4CBA3FFD3C695FFDEC47EFFC2A452FFB6963DFFD0AF50FFBF9D
          37F9C1A657F84C4943A200010102000000000000000000000000000000005E5C
          5773A09B91FF7E7271FFA78D8DFF9E8989FFB8A4A4FFD4C6C7FFC8DDF3FFAAD0
          F5FFA5D2FDFFA0D0FFFFA2CDC9FF5E7D5CFF4E6A4FFF919B8BFFC4AF74FFDAC8
          97FFDDCFA5FFDBC992FFE4CE8BFFECD281FFE9CB6AFFE3C252FFE7C243FFE2BE
          44FFA2966FEF2020214800000000000000000000000000000000000000005C5A
          56739C968CFF867876FFC09B9BFF7D6464FF836868FFA98E8EFFDDD7D7FF9496
          98FF9A9FA4FFBEC9D5FFC4DFD0FF9DC79CFF90B890FF94B395FFBCB99DFFCFB9
          76FFECDDAAFFEEDFA9FFF2DF9BFFF6DE89FFF4D86EFFF1CF4DFFE7C545FFBBAD
          78F94343427B0202020400000000000000000000000000000000000000005B58
          5473999389FF7E706DFFE7BDBCFFCAA4A3FFB59292FFDEB8B8FFEAE4E4FF9E9E
          9EFF767675FFC1BFBFFFC6DFC6FF9ACE9AFF9FD09FFFA2D2A2FFB3D2BFFFAFB4
          ACFFAFA16EFFC3B069FFD3BD6BFFD8BF60FFD2B957FFC5B26BFFB3AD96FF706F
          6DDE10100F1E0000000000000000000000000000000000000000000000005855
          5173A29A91FF4C4B66FF6C667CFF8F7F88FFAF9697FFCBAEABFFD6D1CEFFC4C4
          C2FFA0A09FFFD6D5D6FFC6E0C6FF97CD97FF97CC97FF97CC95FFA5D3C0FFA0CE
          FBFFA3C4E4FFA2B5C2FFA5AFAAFFA1AC92FF9CAD95FFB7C8BAFFC6CFC8FF6462
          5DDC0E0D0C1B0000000000000000000000000000000000000000000000005753
          4F73A49B95FF203EAEFF3557C9FF6377C0FF4A5CA5FF31428BFF4A5383FF6A6D
          85FF85848FFFA3A1A3FFA9B8A5FF96BE93FF9AC898FF9BCD98FFA8D5C2FF9CD0
          FFFF98CDFFFF98CDFFFFA5D3F2FF91BC96FF5A795AFF698C69FF8EB28EFF5C5E
          55DC0E0D0C1B0000000000000000000000000000000000000000000000005552
          4D73A09791FF1E3DAFFF395FDBFF849EEAFF6A86E5FF0231CEFF0C38CBFF667C
          D3FF4B63BFFF1A36A4FF334499FF626893FF6A7188FF717C81FF839394FF8BA7
          C2FF90B6D9FF97C4EFFFA7D3EDFF9CCB9EFF608160FF516E51FF86AD86FF585A
          51DC0E0D0C1B0000000000000000000000000000000000000000000000004F4C
          4870ABA197FF72748FFF55649EFF4A5EAAFF3955B6FF153DBCFF133DC6FF5B78
          DCFF4263DAFF0029CEFF0F33D1FF8C9BE8FF7986DEFF3D4DC9FF1324B1FF2D37
          A2FF60639AFF6B6E94FF6C7393FF7A8A82FF768A74FF6E856AFF8FB08BFF5455
          4BDC0D0C0B1B0000000000000000000000000000000000000000000000001C1B
          192C6A655F9A857E74BE988F84DBA0988DF09D958FFC918B8EFF79798CFF5962
          8DFF3C4E94FF1E3AA3FF1535B5FF435CCFFF5268DDFF2942DCFF0017D5FF1429
          D9FF7E89EAFF777FE2FF101BC5FF131AB8FF4A4BAFFF7977A3FF5B5A89FF4F4A
          57DC0E0D0C1B0000000000000000000000000000000000000000000000000000
          0000000000010505050A10100F1B232120363A383557504D497A645F59A16E69
          62C4706C65DE6D6967F1616168FD53566DFF4C527EFF434D96FF3644AEFF2F40
          C5FF4857D9FF4352E3FF081BE2FF000FE3FF424AECFF898DF4FF272DE4FF4D4A
          98DC100F0A1B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020505
          050C0D0D0D1E1B1A19392E2C2A5B44423E815D5952A4756E65C6857C72E2897F
          7BF4817983FD746F8DFF64639DFF5254B1FF4D50C6FF5255DAFF2E34E8FF5855
          9ADC0F0E091B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101020807070E141312222422
          203D3835315E4F4A4285645D52AB746A5ECA7E746AE3837977F6837982FF6960
          60D20B0A09170000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020202040807070F1312122424221F4137332F62201E
          1C3E010101020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000003000000080000000B0000000C0000
          0008000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000050000000A000000120000001C000000290101013C0303034D0101
          01390000001F0000001100000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002000000060000000D0000
          00150000002000000032050505501616167A323232A9545454D56C6C6CEC4747
          47D30606066C0000002B00000010000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000004000000090000000F0000001800000027030303401010
          106529292995474747C4616161E7727272FB6C6C6CFF626262FF858585FF9292
          92FF303030D4000000360000000B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000A000000120000001D010101310A0A0A512020207F3E3E3EAF5C5C5CDA7171
          71F57C7C7CFF848484FF919191FFABABABFF7A7A7AFF4C4C4CFF686868FF9797
          97FF464646F10000003A00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000020000000E0505
          0534181818673535359A545454C96E6E6EEB7E7E7EFD858585FF919191FFA0A0
          A0FFB3B3B3FFC2C2C2FFC3C3C3FFC4C4C4FF9C9C9CFF666666FF686868FF9696
          96FF484848F20101013800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000191919476161
          61CB818181F7888888FF909090FF9F9F9FFFB3B3B3FFC5C5C5FFD4D4D4FFDADA
          DAFFDBDBDBFFDADADAFFD6D6D6FFC2C2C2FF9C9C9CFF727272FF6B6B6BFF9696
          96FF4B4B4BF10202023700000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000C0C0C21797979D0B4B4
          B4FFB8B8B8FFC5C5C5FFD8D8D8FFE7E7E7FFF0F0F0FFF2F2F2FFF0F0F0FFECEC
          ECFFE7E7E7FFE2E2E2FFDDDDDDFFCDCDCDFF9D9D9DFF797979FF6E6E6EFF9797
          97FF4D4D4DF10202023600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000404040B4B4B4B85CBCBCBFEE9E9
          E9FFF0F0F0FFF8F8F8FFFCFCFCFFFEFEFEFFFEFEFEFFFDFDFDFFF4F4F4FFEAEA
          EAFFECECECFFE8E8E8FFE4E4E4FFD8D8D8FFA1A1A1FF7E7E7EFF707070FF9797
          97FF4E4E4EF00303033500000000000000000000000000000000000000000000
          00000000000000000000000000000000000009090918A1A1A1CBFCFCFCFFFFFF
          FFFFFFFFFFFFFEFEFEFFFCFCFCFFFAFAFAFFF6F6F6FFB6B6B6FF737373FF5454
          54FFA4A4A4FFEDEDEDFFE9E9E9FFDFDFDFFFA7A7A7FF828282FF727272FF9797
          97FF505050F00404043400000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005F5F5F87F7F7F7FFFFFF
          FFFFFFFFFFFFFFFFFFFFAAAAAAFFCBCBCBFFC0C0C0FF5B5B5BFFB8B8B8FF7F7F
          7FFF686868FFF0F0F0FFEDEDEDFFE3E3E3FFAAAAAAFF868686FF747474FF9797
          97FF525252EF0404043300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004848487BE9E9E9FFFFFF
          FFFFFFFFFFFFFEFEFEFF757575FFB1B1B1FFD4D4D4FFCDCDCDFFFFFFFFFFA2A2
          A2FF7C7C7CFFFBFBFBFFF7F7F7FFEAEAEAFFABABABFF898989FF777777FF9797
          97FF535353EF0505053200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004646467CDEDEDEFFFFFF
          FFFFFFFFFFFFFEFEFEFF7F7F7FFFB8B8B8FFDADADAFF959595FF989898FF7171
          71FFC8C8C8FFFFFFFFFFFEFEFEFFF0F0F0FFACACACFF8D8D8DFF797979FF9797
          97FF565656EE0505053100000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004747477CDCDCDCFFFFFF
          FFFFF8F8F8FFF7F7F7FF878787FFBFBFBFFFBABABAFF7D7D7DFFBABABAFFD0D0
          D0FFF4F4F4FFFFFFFFFFFFFFFFFFF3F3F3FFADADADFF909090FF7B7B7BFF9797
          97FF575757ED0606063000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004747477CDDDDDDFFFFFF
          FFFFC0C0C0FF989898FF7E7E7EFFC4C4C4FFBFBFBFFF797979FF9A9A9AFF8F8F
          8FFFD1D1D1FFFFFFFFFFFFFFFFFFF4F4F3FFADADADFF919191FF7E7E7EFF9797
          97FF595959ED0606062E00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004949497CDFDFDFFFFFFF
          FFFFF2F2F2FFAAAAAAFF818181FFD7D7D7FFE6E6E6FFC7C7C6FFDDDDDCFFF2F2
          F0FFFDFDFDFFFDFDFEFFF3F3FBFFD7D7EAFF9F9FABFF939392FF808080FF9797
          97FF5B5B5BEC0707072E00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A7CE0E0E0FFFFFF
          FFFFFFFFFFFFFDFDFCFFF9F9F7FFFEFEFEFFFDFDFFFFF5F5FDFFE1E1F5FFC4C3
          EAFFA7A7DEFF8B8BD3FF6565C7FF4E4EBCFF4543A0FF69688CFF848483FF9797
          97FF5C5C5CEB0707072D00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004B4B4B7CE1E1E1FFFDFC
          FFFFF0EFFBFFDEDEF6FFC5C4EEFFAFAEE5FF8F8FDAFF6261CCFF4A49C3FF4746
          C0FF5A5AC4FF5C5BC5FF3C3CBBFF3434B7FF2A2796FF454383FF888887FF9898
          98FF5E5E5EEB0808082C00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004C4C4D7CA1A0D3FF9C9B
          E5FF8281DCFF8382D9FF8281D7FF8282D5FF4F4EC9FF2F2EC1FF2E2DC0FF4443
          C4FF5B5BCAFF5959C8FF3C3CBFFF3131B9FF27258FFF44437FFF8C8C8BFF9A9A
          9AFF606060EA0808082B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004B4B4E7C6362C6FF6E6D
          D9FF9594E0FF7473D8FF8483DBFF7B7BD8FF2A29C4FF302FC5FF3C3BC7FF4F4D
          CBFF6362CEFF6C6BD0FF5453C6FF4D4CBFFF292787FF43427AFF90908FFF9C9C
          9CFF636363EA0909092A00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004D4D4F7C5B59C6FF3231
          CFFF7877DDFF5857D4FF5C5AD5FF6361D8FF4A48D3FF5553D5FF5957D4FF5755
          D1FF5E5CCFFF6766BEFF5C5AC4FF5958C6FF292880FF434277FF949493FF9E9E
          9EFF656565E90909092A00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004F4F517C7B78D7FF5955
          E4FF5E5CE0FF5653DFFF5B58E1FF615DE1FF625EE0FF605CDDFF5D5ADAFF5D5A
          D9FF8381D2FF484774FF4947AAFF615FCFFF272779FF424273FF9B9B9AFFA0A0
          A0FF676767E80909092900000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005050527C8480DFFF7470
          E2FF7775BFFF6E6AE8FF6A65ECFF6863E9FF6662E7FF6561E5FF635FE2FF7F7C
          E5FFA2A0DFFF5352A7FF615FC9FF6A69C7FF1F1E72FF474775FFA4A4A3FFA1A1
          A1FF686868E60909092600000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005151537C8582E0FF9492
          DDFF605E9FFF6B66EAFF6E69EFFF6B67E9FF6865E1FF6562D7FF5F5CCCFF9796
          D8FF7B7AC3FF5A59B4FF5E5DAEFF6261A8FF62629AFF858599FFA6A6A6FFA1A1
          A1FF5C5C5CCB0404041300000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005353547C9F9DD7FFA4A2
          DFFF5A57C8FF5856C5FF5A58BCFF5E5DB5FF6665B0FF6F6FADFF7A7AABFFB2B2
          C8FFA6A5B7FF9D9DABFFA5A5ABFFA8A8AAFFACACABFFABABAAFFA9A9A9FF9292
          92F72A2A2A690000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000052525279C3C3C4FFC0C0
          CDFF908FB3FF9A99B3FFA5A5B5FFAEAEB5FFB3B3B6FFB6B6B6FFB6B6B4FFC5C5
          C4FFC7C7C5FFB1B1B0FFAFAFAFFFB3B3B3FE989898ED848484D86D6D6DBC3030
          3067020202080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000030303049B0B0B0EFD0D0
          D0FFC3C3C1FFC2C2C0FFC2C2C0FFC2C2C2FFB2B2B2F4A3A3A3E4909090D07A7A
          7AB5999999CEA7A7A7FE9E9E9EFF7F7F7FCC1C1C1C3E08080817020202090000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000030303053232324C8080
          80A9BABABAF2B3B3B3FFB4B4B4FF8B8B8BC92B2B2B4714141423090909120101
          01050F0F0F1C404040673D3D3D6D101010250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          04073636364F626262944E4E4E7E141414250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000343027473F3B324D0201
          0102000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000016D634DA0978A6BD61210
          0C18000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000181611223D3A304B0404030545413753A3977BD22724
          1C2F00000000403B2E5B5F5948780807060A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000453E3068A99B78F02B281D3C0D0C0A0D645F4B723431
          273900000000685F4B9AA89977F1262219340000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000024231D2CA5987ED34943345C000000002F2D23333F3C
          31440202020239362E43A99E82D83E3A2D4C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004040304575240634E4A3A570000000026221A38958A
          6CCB3430254509090709625D49704744354F0202010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000201E18224745364D0C0B0A0C1B181426A698
          7DE261594486000000002C2A212F444234490909070A00000000000000000000
          000000000000000000001B1915212A28232F0403030400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E0D0A1583795FB4544F3E6F020202026660
          4E786C6550810505040517151021867C63B14A46375E00000000000000000000
          0000000000000302010671654DACAB9E7CE8302C224000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000807050C8A7F68BE877B60BC07060508201F
          1823514E3D5811110D1212100C1C9C8F73DE84785CBC08070509000000000000
          000000000000010000027067549BB3A483FF5A523D7D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000047433853847A62A214130F1D0605
          04102E2C233A1717121C010101016B65558093886DBA16151018000000001C1A
          152536332C3F0302020339372E40B6AA8EE37B725996050504050B0A07125E58
          48773E3B31490101000100000000000000000000000000000000000000000000
          000000000000000000000000000000000000100F0C165C57447C625944995D52
          3E9D514A39841D1B15370100010F2A28204265604C8422201A2D000000006056
          4294AC9E7AF12F2C214109090709726C55827872598614130F14221E1539A495
          72F5958967D312110D1900000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F1C163A847653D888754BFF816D
          46FF87754EFC71654ABD625840A481744FD48A7D58D64B4535790000000B4E49
          3D67B9AB8DFB57503D740000000039372B3E7570597F323027350F0D0B149E95
          80CAAD9F7EF02F2C223A00000000000000000000000000000000000000000000
          000000000000000000010505041429251C50716447BB8F7F52FF8A794FFF8877
          50FF88764FFF8F7E53FF938356FF918250FF958751FF908455E929251C561E1C
          173791886EBC6C655083030303031D1A13299E9171D88C8469B40D0C09115B56
          4767AB9F7FD24A46375200000000000000000000000000000000000000000000
          0000000000010F0D0A2463593EA497895BF3988A5AFF9D9066FFA1946EFF9F92
          6EFFA0926EFFA0936DFFA3976FFFA69B70FFAA9F72FFA79B67FF93865CE38278
          53CC897E5CCC69634C96100F0C1B0F0E0A1A95896ED7A69874F429261C391B1A
          151D777158835653415E05040305000000000000000000000000000000000000
          00000202010D6259419CB5AB7FFFB8AE86FFB4A984FFB1A481FFAFA280FFAEA0
          7FFFAEA180FFB1A482FFB5A986FFB9AF8CFFBFB692FFC1B992FFC2BA92FFC4BC
          94FFBFB58BFFA39770EB312C2259000000036964567BB7A98AED454031530303
          02034C4839525B57446312110D13000000000000000000000000000000000000
          000018151033A29674E6B3A480FFA99873FFA99772FFAA9975FFAD9C7AFFB0A0
          80FFB4A586FFB9AC8DFFBFB395FFC6BB9EFFCCC3A6FFD2CAAFFFD7D0B6FFDCD6
          BDFFDFD9C1FFD3CBABFF6B614AA60000000C23221B278A8166A1575341610202
          010227251D2A534F3E5A1F1E1722000000000000000000000000000000000000
          0000201C1441BCB398F0DBD3BFFFD0C5AEFFCBBFA6FFC8BCA3FFC8BCA3FFC9BD
          A5FFCBC0A9FFCFC5AEFFD5CCB6FFDBD3BFFFE0DAC7FFE5DFCEFFE9E4D4FFEDE9
          D9FFEEEBDCFFEAE5D3FF80765FBA03030215070605074E4A3A5454503F5B0D0C
          0A0E0B0B080C3F3C2F4429281F2D010101010000000000000000000000000000
          00000807041A928871C8F2EFE3FFF8F7EFFFF7F5EDFFF6F4ECFFF6F3EBFFF5F2
          EAFFF4F1E9FFF4F1E9FFF5F3EAFFF6F4ECFFF7F5EDFFF8F6EEFFF9F7F0FFFAF8
          F1FFFAF7EFFFD9D1BEFF675C45C20E0C08350000000422211A27403E30481514
          10180000000024231B272A29202E050403050000000000000000000000000000
          0000000000012D271D53B6AC95E4F4F0E6FFFEFCF9FFFFFEFCFFFFFEFCFFFEFE
          FDFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFE7E0CFFFD7CD
          B8FFBDB197FF988969FF998C6DFD6B5F45C6211C125C262117593A34266C201D
          1545010100120D0D0A13212019250909070A0000000000000000000000000000
          00000000000000000004201C1442726956A8ADA48FDCBFB6A3E9C2BAA9ECF3F0
          EBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4DED1FF928262FF7E6D
          4AFF7D6A47FF827149FF928359FFA0936CFF958862F5988C63F6988C63F5867A
          55E35A4F37AC201C135211100C210908060B0000000000000000000000000000
          00000000000000000000000000000101000A0B09052415110B41443B289AA194
          74FAD4CBB7FFEBE5DAFFF0ECE2FFE7E1D4FFC8BFA8FF9A8C6BFF8E7F5EFF9484
          64FF968765FF988A65FF9A8D64FFA09469FFA39768FF9A8E55FF9C9155FFA095
          5CFFA19661FF8B7D54EB3932237A030202130000000100000000000000000000
          0000000000000000000000000000000000000101010B443B298296895BF49C91
          5CFF948854FF9A8D5FFFA89D7BFFA59978FFA29777FFA99E7FFFADA283FFADA1
          84FFADA184FFAFA485FFB7AD8FFFBDB495FFBEB694FFB0A677FFA69C64FFA69C
          65FFA89E67FFA89D67FF908357EE252017580000000500000000000000000000
          000000000000000000000000000000000000201C144495865DECAA9C6AFFA596
          64FFA1925FFFA49566FFB4A786FFB4A787FFB2A484FFB2A485FFB3A587FFB4A7
          8AFFB6A98DFFBDB196FFCBC2ACFFD1C9B3FFD6CFBAFFD3CDB3FFC3BA94FFC3BB
          94FFC4BC95FFC3BB93FFB2A676FF64593EB10201011400000000000000000000
          000000000000000000000000000000000000453D2C78B8AB84FFB6A884FFAF9E
          79FFAC9B75FFAE9D79FFBAAB8FFFBEB095FFBBAD91FFBAAC90FFBDAF94FFC0B3
          99FFC3B79EFFCCC2ACFFD9D1C2FFDED7C9FFE3DED0FFE6E1D3FFDAD4BCFFDAD4
          BBFFDCD6BEFFDDD7BFFFD0C8A7FF8C805CD90C0A082800000000000000000000
          000000000000000000000000000000000000413A2B70CFC5A7FFEBE8D8FFE9E4
          D4FFE6E1D0FFE4DFCEFFEBE7DCFFF0EDE6FFEBE7DDFFE6E1D4FFE5E0D4FFE6E1
          D5FFE7E2D6FFEBE6DCFFF4F1ECFFF6F4F0FFF8F6F2FFF7F6F0FFEFECDFFFEEEB
          DEFFEEEBDEFFEFECE0FFE2DDC6FF8C7F60CF0907062100000000000000000000
          00000000000000000000000000000000000019161032A89C7EDFEFEBDDFFFBFB
          F7FFFBFBF7FFFBFAF7FFFCFCF9FFFFFEFEFFFEFDFCFFFCFCF9FFFCFBF9FFFCFB
          F9FFFCFBF9FFFCFBF9FFFEFEFDFFFFFFFFFFFFFFFFFFFEFDFCFFFBFAF7FFFBFA
          F7FFFBFBF8FFFCFBF7FFDCD4BCFF5B523F930000000A00000000000000000000
          000000000000000000000000000000000000000000043A34285FB4A88BE4E9E3
          D0FFF7F4ECFFFAF8F2FFF7F4EBFFF2EDDDFFF7F3E9FFFEFDFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFBFFFBF9F4FFFEFDFBFFFFFFFEFFFFFE
          FDFFFCFAF6FFEAE3D0FF998D72CF16130F320000000100000000000000000000
          0000000000000000000000000000000000000000000000000004211D163A665D
          4A92978D74C4A69B81D3CBBFA0F3F2ECDAFFF6F1E4FFF8F5EBFFFCFAF4FFFDFC
          F9FFFDFCF9FFFCFAF5FFFAF7EFFFF5F0E1FFF3ECD9FFF4EFDEFFF2EBD6FFECE3
          CBFFD7CBAEF98B8067BC1F1C163D000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0005060504130908061E7066539AECE3CDFFFDFBF6FFFEFDFAFFFEFDFAFFFAF7
          EFFFF5EFDFFFFAF7EDFFF9F6ECFFF9F6ECFFFAF6EDFFFAF5EAFFE2D6BBFC867B
          63B53B362A5F0A08071A00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000016130F27938770B9E3D9C0FCF1EAD9FFEFE7D6FFC4B9
          A1E7CBBEA2EEF7F2E5FFFEFDFAFFFEFEFDFFFEFDFBFFF5EFE1FFA4987FCC110F
          0B29000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000E0C0A1B453F33636B62508D5952427B1F1C
          163A413B2F60B8AC91D9E7DCC4FCEEE6D1FFE3DAC2FAA39880C828241D440000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000010000
          0000000000031D1A1531554E3F756B63508E4B44376B12100D26000000030000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000000000000000000012020162D55563E6832321F4901010112000000040000
          000B0000000E0000000A00000007000000050000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010100A17B2B28DBFF8F6AEFDD4D380E32D2C1851000000160000
          002C00000034000000310000002D00000029000000240000001F0000001B0000
          0017000000130000000F0000000B000000080000000500000003000000020000
          0001000000010000000100000000000000000000000000000000000000000000
          00000000000021201628D5CF92E6EEE587FFE8DE81FC4845265E0000000B0000
          00250000003200000035000000380000003A0000003B0000003C0000003C0000
          003B0000003900000036000000330000002D000000260000001F000000170000
          00110000000E0000000D00000008000000020000000000000000000000000000
          000000000000050503078075439CD9C572FFA69755C915140A1C000000000000
          00050000000A0000000D00000011000000150000001A0000001F000000230000
          00280000002C000000300000003300000033000000300000002D000000280000
          00210000001A000000140000000E000000060000000100000000000000000000
          000000000000000000001C180C289A8347D03B32195100000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          000400000006000000090000000C0000000E00000010000000140000001C0000
          001B000000150000000E00000009000000050000000100000000000000000000
          000000000000000000000504040A61563BAA37352C6509090B16121212230D0D
          0D17010101010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          0006000000040000000200000001000000000000000000000000000000000000
          000000000000000000000000000044433877B1B17DF2969572D5868474E46C6A
          63D2373633660303030500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000011111124AEAC89E2CDC98FFFBCB779FF9793
          7BFF7C796FF33E3C397203030305000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A192F9E9B8DECDDD998FFF1EC8FFFE6E1
          94FFACAA92FF848279F3403F3C72030303050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000131313248E8C84E0EBEADEFFFDFADAFFF2EB
          98FFE6DE93FFB1AF99FF8B8A83F3444340720303030500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010103504F4C82D2D1CDFBFFFFFFFFFAF8
          DFFFECE292FFE0D68EFFB4B29EFF94938DF34746447203030305000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000606060C605F5D8FDDDCD9FAFEFE
          FEFFF7F3D7FFE6D98AFFDBCF89FFB8B6A4FF9C9C98F34A494772030303050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000606060C6464618FDFDE
          DCFBFBFAF7FFF2ECCCFFE0CF82FFD7C785FFBCBAAAFFA6A7A3F34D4D4B720303
          0305000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000606060C6868
          668FE2E1DFFBF9F8F3FFEDE5C0FFD9C579FFD2C081FFC0BFB0FFACADABF34F4F
          4D72030303050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000606
          060C6C6C6A8FE6E6E4FBF8F7EFFFE8DCB3FFD2BB71FFCDB87CFFC0BFB1FFAFB1
          AEF350504E720303030500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000707070C71706F8FEDECEBFBF9F6ECFFE1D2A6FFCBB068FFC7B077FFBDBB
          ADFFA8A9A4F34D4C4A7203030305000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707070C7574738FF1F0EFFBF7F3E8FFDAC798FFC4A660FFB6A0
          6EFFA8A698FF9E9E98F34B4B4872030303050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000707070C7675758FF1F0F0FBF4EFE2FFD0B98BFFA88F
          5AFFA18F63FF9D9A88FF95948BF3484845720404040500000000000000000000
          0002000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000707070C7676758FF2F1F0FBE7E1D4FFB8A5
          6CFFAD9746FF9F9468FF909084FF8B897EF34646427205050509242423407171
          719D5B5B5B870707071100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000707070C7978778FD6D5D0FBB6B2
          9FFFA49F88FF918D7DFF898678FF838172FF7D7B6FF170706EB4C2C2C2EBF2F2
          F1FFB8BABAFD4D4F509A07070711000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000909090D62625E8F9F9C
          92FA979487FF898677FF807C6CFF7A7667FF94948DFFD8D9D9FFF8F9F9FFE1E0
          DEFF8C8A85FF8E9191FD575859980505050B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000808080C5756
          518F888476FB7D7A69FF777363FF949289FFD2D2CFFFE9E9E9FFEAECECFFABAE
          ADFF84827CFFA3A29DFF9C9D9DE5121212250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000808
          080C51504A8F777364FA8C8A81FFC8C6C2FFE1E0DDFFDEDDDAFFC2C4C1FF8C94
          94FF808481FF8D8B84FF62615EAC040404090000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B0B0B13706F6CC4B2B1ABFFC7C6C1FFD3D2CDFFC7C6C1FF908E85FF807F
          75FF6B6455FF635B4DFE3635326E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000026262646A8A8A5EEBDBBB6FFBDBBB6FFCDCCC8FFABA8A1FFA49F94FF9E95
          87FF827868FF655A48FF595144DE292825470000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0004737372A7CFCECCFFC4C3BFFFD1D0CCFFC6C5C0FFB2AFA7FFB8B2A7FFB7AE
          A2FF9D9486FF7B7161FF5D5240FF574F42DE2322213B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          01056E6E6EA0D7D7D6FFDAD9D7FFDDDCDAFFC5C4BFFFA5A39AFFA9A499FFB6AF
          A3FFAAA295FF897F70FF6A604EFF554937FF4E4840AB07070707000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000F0F0F1E828282B5E6E6E5FFDADAD8FFD0D0CCFF98978FFEA3A198FFA6A1
          96FF9C9486FF8D8374FF716656FF584D3AFF564E42D212121218000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0F0F1E878787B4BEBEBEF17A7A79B34F4E4C848D8B84EBABA7
          9FFF979084FF7D7464FF6D6251FF584D3AFF554F44C20D0D0D0F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B0B0B171C1C1C340505050D020202023D3C3A628C8A
          81EDB2AEA6FFA6A096FF80786AFF62594AF83A38346800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030303033232
          30536E6B63C287837AE4746E66CF3F3D396E0707070900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000C0C0C111B1B1A2A11101018010101010000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000040000
          0006000000060000000600000005000000030000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000008000000130000001D00000024000000280000
          002B0000002C0000002B00000029000000250000001F000000160000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000800000027000000380000003B0000003D0000003E0000
          003D00000040000000400000003F0000003F0000003E0000003B0000002E0000
          000F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000060000001D070605373A342878615742AB615642AB3833
          2879060605420201013D0A090847060605410000003700000033000000260000
          000E000000050000000700000008000000090000000900000008000000060000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000004040306594F3B878D7C53F7847047FF826E48FF8A78
          52F6625842A35F553FA07E714FD1786C4BC23E382A6904030320000000200000
          0024000000290000002D0000002F00000030000000300000002F0000002C0000
          002800000021000000180000000D000000040000000000000000000000000000
          0000000000000E0C0A12443D2E608F7F55EE88774BFF86754CFF85734CFF8574
          4BFF917F55FD928255FE8F804DFF93854FFF968857F13B3528770000003A0000
          003C0000003E0000004000000040000000400000004000000040000000400000
          00400000003E0000003C000000340000001C0000000300000000000000000202
          02033932255380734DC8938553F7938555FF9B8E65FF9A8C66FF9A8B66FF9A8C
          66FF9A8C64FF9D9066FFA09468FFA39868FFA29761FF8D7F56E0675E42B2544C
          369C242018660202024000000040000000400000004000000040000000400000
          00400000003F0000003D000000360000001E0000000400000000000000003A34
          2655A19569EEB0A679FFB0A67EFFAFA47EFFAFA481FFAEA280FFADA17FFFAEA1
          80FFAFA481FFB2A783FFB6AB86FFBAB18AFFBBB287FFB6AD7EFFBAB083FFB7AC
          7EFFA1956BEE47402F8901010134000000340000003400000032000000300000
          002C000000260000001D000000110000000500000000000000000D0B0814887D
          5DC4B9AE87FFB4A682FFAE9F7AFFAC9C78FFAB9B78FFAC9C7AFFAE9E7DFFB1A2
          82FFB5A787FFBAAD8DFFC0B495FFC6BC9CFFCBC2A3FFCFC8AAFFD3CCAFFFD6D0
          B3FFD1CAA9FFA99D78E9231F173E000000090000000C0000000B000000090000
          00060000000400000001000000000000000000000000000000002520173AB1A6
          86ECBFB294FFB2A17FFFB09E7DFFB1A07FFFB3A383FFB6A688FFBAAB8DFFBEB1
          94FFC3B79CFFC9BEA4FFCFC5ACFFD5CCB4FFDAD2BBFFDED8C2FFE3DEC9FFE7E2
          CEFFE8E3D1FFD4CBAFFF4840306B000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000019150F2AADA4
          89DFEFEBDEFFEBE6D9FFE6E1D1FFE3DCCCFFE0D9C8FFDFD7C7FFDFD7C7FFE0D9
          C9FFE2DCCCFFE5DFD0FFE8E3D5FFEBE7D9FFEEEADDFFF0EDE1FFF2EFE3FFF3F0
          E5FFF5F2E8FFD4CBB5F9332D2151000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002010004675D
          4995E6E0CFFFFBFAF5FFFAF9F4FFFAF9F4FFFBFAF4FFFBF9F4FFFBF9F4FFFBF9
          F4FFFBF9F4FFFBF9F4FFFBF9F4FFFBF9F4FFFBF9F4FFFBF9F3FFFBF9F2FFFAF8
          F0FFE8E2D4FFAFA184FA5449349A110E09230000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000100E
          091D7E735DB0DFD8C7FCF8F5EEFFFDFCF8FFFDFCF8FFFEFEFDFFFFFEFEFFFEFE
          FDFFFEFEFDFFFFFEFDFFFEFEFDFFFFFEFEFFFFFFFFFFE4DDCEFFC3B699FFB5A6
          89FF978561FF9A8B67FFA59876FF776A4DCD372F20683931226A352E1F63231E
          14430B0906170000000100000000000000000000000000000000000000000000
          0000090705123F382A65807660B1A19881D1A19780D0C1BAA9E8F9F7F4FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFE9E3D7FFA1916FFF84714CFF8370
          4CFF85724CFF89784DFF938559FFA2956DFFA0936BFEA4986CFFA4996BFF9A8F
          63F67D714DD2433A28780B090615000000000000000000000000000000000000
          0000000000000000000002010006070502111C170F376C5F41BEB2A583FFD7CF
          BBFFEAE4D7FFEDE8DDFFE4DECFFFC9BEA6FFA39472FF978864FF988867FF9788
          67FF998A67FF9A8C67FF9D8F67FFA2966BFFA19564FF978B50FF998E51FF9D92
          57FFA1975FFF9D915FFD685C3FB4110F0A1F0000000000000000000000000000
          000000000000000000000000000018150F2A796C49C9A19560FF9F935AFF998C
          55FFA09263FFAFA27EFFADA07CFFACA07DFFAFA482FFAEA384FFADA183FFADA1
          83FFAEA284FFB1A686FFB9AF90FFBDB494FFBDB592FFADA473FFA59A61FFA59A
          62FFA59B63FFA69C65FFA19560FF5F5439A10504030800000000000000000000
          000000000000000000000303020664593EA4A89B69FFA99D6AFFA59764FFA394
          60FFA99B6CFFBAAE8DFFB8AC8BFFB5A887FFB3A686FFB3A587FFB4A689FFB5A8
          8BFFB7AB8EFFC1B79DFFCCC4ADFFD1C9B3FFD5CEB8FFD1CAAEFFC0B78FFFC0B8
          8FFFC1B890FFC1B890FFB7AE7FFF9A8C5FF12520173E00000000000000000000
          0000000000000000000015120D22978A65E1B2A47BFFA7956DFFA39168FFA390
          67FFA89670FFB5A587FFB8A98CFFB6A789FFB5A688FFB8A98CFFBAAC91FFBDB0
          96FFC1B59BFFCEC4B0FFD7CFBEFFDBD5C4FFE0DBCBFFE2DDCDFFD5CEB4FFD5CF
          B2FFD8D2B6FFD8D2B6FFD6CFB2FFB6AA7EFF453D2C6E00000000000000000000
          0000000000000000000019151028A89D7AE7E0DBC4FFDFD9C5FFDBD4BFFFD8D0
          BAFFD7CEB8FFE0D9CAFFE2DCD0FFDED7C9FFD7CFBDFFD7CFBDFFD7D0BEFFD9D1
          C0FFDBD4C4FFE5DFD3FFEDE9E1FFF0EDE6FFF3F0EAFFF3F1EAFFEAE6D6FFE9E5
          D4FFEAE6D6FFEAE6D6FFEAE6D6FFC8BD99FF4A42307200000000000000000000
          000000000000000000000807050D887B5FBDE4DEC9FFF7F5EFFFF7F5EEFFF7F5
          EEFFF7F5EEFFFAF9F4FFFFFFFEFFFDFDFBFFF9F8F3FFF8F7F3FFF8F7F2FFF8F7
          F2FFF8F7F2FFFAF9F5FFFEFEFCFFFEFEFDFFFEFEFDFFFCFCF9FFF7F6F0FFF7F6
          EFFFF7F6EFFFF8F6F0FFF4F1E7FFBFB492F52D281E4500000000000000000000
          0000000000000000000000000000342E234CB8AB8CE9EFE9DAFFFDFDF9FFFFFF
          FFFFFFFFFFFFFEFEFCFFFAF8F1FFFBFAF6FFFFFFFEFFFFFFFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFCF9FFE4DCC6FF82755CB10807050D00000000000000000000
          0000000000000000000000000000010101023630254C9B8E73C7D5C9AFF8E7DF
          CAFFE9E1CEFFEAE1CAFFEFE8D3FFF3EDDCFFFAF7F0FFFEFDFBFFFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFEFFFDFDFAFFF8F5EBFFF5F1E3FFF9F7EEFFFAF8F0FFFAF8
          EFFFF6F1E3FFE3D9BFFF9A8D71C71F1B152C0000000000000000000000000000
          000000000000000000000000000000000000000000000E0C09143530254A564E
          3D7362584683B7A98BDFF5EFDEFFFAF7EEFFF9F6EDFFFBF8F0FFFCFAF5FFFCFA
          F3FFFAF7EFFFF9F6EBFFF7F3E5FFF5F0E0FFF5EFDFFFF5EFDDFFEEE4C8FFDFD2
          B4FDBDAF92E36F65519117151021000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005D554478E1D6BCFCFAF7EEFFFEFDFBFFFFFEFCFFFBF9F4FFEDE5
          D1FFF7F2E4FFFBF9F2FFFBF9F2FFFBF9F2FFFBF9F3FFFBF8EFFFE0D5B8FB685E
          4B871B1813250302020400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B0A080F7066538BCEC1A5EDE9DFC6FFE8DFC8FEC5B9A0E2988B
          72BCDFD4BAF8F9F6EBFFFEFDFAFFFEFEFCFFFDFCF7FFF0E8D6FF9B8F76BB100E
          0B15000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000404030629251E3550483A634C45385F211E182B0C0B
          09106A614F82CABC9FE7E8DDC2FEEBE1C9FFDACEB3F4928770AF1F1C17280000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000303020424211A2D50493B615951426B353026410908070C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000000000000110000
          005C000000670000006700000067000000670000006700000067000000670000
          0067000000670000006700000067000000670000006700000067000000670000
          0067000000670000006700000067000000670000006700000067000000670000
          0067000000670000006700000067000000670000005C000000113A393576997B
          4CF0987641F3A18B68F3967036F3A39070F3967036F3A28D6BF3997947F39A7C
          4AF3A08965F3977137F3A38F6FF3967036F3A08963F398743DF39A7D4CF39C81
          54F397723AF3A59579F3967036F3A5967AF398733CF3A08861F39D8256F39875
          3FF3A5967AF3967036F3A6987EF398743CF3534732CC000000214A3F2C87BF99
          5CFFB47E2AFFB8893EFFBB8F49FFB27921FFC19C62FFAF7315FFC4A36FFFB27B
          24FFBC914DFFBA8C44FFB47F2BFFBE9758FFAF7214FFBF9A5DFFB0751AFFBA8E
          47FFB68232FFB8893EFFC19C61FFB1771DFFC6A979FFB07519FFC3A16BFFB684
          34FFB9893FFFC19D63FFB1781FFFC7AB7CFF635030D400000021514F4B87D3C5
          AEFFD9D4C8FFD3C5AEFFD9D3C8FFD3C6AEFFD6CDBBFFD5CCBAFFD3C6AFFFD9D5
          CAFFD3C5AEFFD9D5CBFFD3C5AEFFD7D0C2FFD4C8B3FFD3C6B0FFD7D1C3FFD3C5
          AEFFD8D2C4FFD3C5AEFFD9D5CAFFD4C8B2FFD5CBB8FFD8D1C3FFD3C5AEFFDAD7
          CFFFD3C5AEFFD9D5CBFFD4C8B2FFD5CCBAFF737474D40000002154565787E1E5
          E8FFE0E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE0E5
          E8FFE0E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5
          E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FFE0E5E8FFE1E5E8FFE1E5
          E8FFE1E5E8FFE1E5E8FFE1E5E8FFE1E5E8FF747678D40000002154565787E1E6
          E8FFBFC3C5FFBEC2C4FFB5B8BAFFB7BBBDFFB2B6B8FFC7CBCDFFB7BBBDFFE1E6
          E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6
          E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6
          E8FFE1E6E8FFE1E6E8FFE1E6E8FFE1E6E8FF747778D40000002155565787E2E7
          E9FFC5C9CBFFB8BBBDFFBCBFC1FFADB1B2FFBCBFC1FFE2E6E8FFE3E7E9FFE2E7
          E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7
          E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7
          E9FFE2E7E9FFE2E7E9FFE2E7E9FFE2E7E9FF747778D40000002155565787E3E7
          E9FFCBCED0FFC0C3C5FFC6CACBFFCFD3D5FFBDC1C2FFBCBFC1FFCED2D3FFBEC1
          C3FFB2B5B7FFBDC1C3FFD8DCDEFFB8BBBCFFB4B7B9FFE0E4E6FFE3E7E9FFE3E7
          EAFFE3E7E9FFE3E7E9FFE3E7EAFFE3E7E9FFE3E7E9FFE3E7E9FFE3E7EAFFE3E7
          E9FFE3E7E9FFE3E7E9FFE3E7E9FFE3E7E9FF757779D40000002155575787E4E8
          EAFFAFB2B4FFA6A9AAFF8A8D8EFF999C9DFFA1A3A5FFACAFB0FF87898AFFB4B7
          B9FFB5B8BAFF9B9E9FFFB0B3B4FFC4C7C9FFBABDBFFFACAFB0FFE4E8EAFFE4E8
          EAFFE4E8EAFFE4E8EAFFE4E8EAFFE4E8EAFFD9DCDEFFD6D9DBFFE4E8EAFFE4E8
          EAFFE4E8EAFFE4E8EAFFE4E8EAFFE4E8EAFF757879D40000002155575787E5E9
          EBFFB0B3B4FF999B9CFFAAADAEFFBEC1C3FF9FA1A2FF9B9E9FFF989A9BFFAAAC
          AEFFA1A4A5FFA3A5A6FF9FA1A3FF959798FFB2B5B6FFBEC1C3FFE5E9EBFFE5E9
          EBFFE5E9EBFFE1E4E6FFCFD2D4FFB5B8BAFF969899FF9A9C9DFFC2C5C6FFCED1
          D3FFBEC1C2FFC9CCCEFFBFC2C3FFD1D4D5FF757879D40000002155575887E6EA
          EBFFC1C4C5FFBBBEBFFFA4A7A8FFBABDBEFFB1B4B5FF9FA1A2FFACAEB0FFAAAD
          AEFFAEB1B2FFBCBFC0FFA9ABACFFB4B7B8FFA7AAABFFD0D3D5FFE6EAEBFFE6EA
          EBFFE6EAEBFFB5B7B9FF737576FFADB0B1FFD6D9DBFF858788FF909293FFACAE
          AFFF4F5051FF636465FF6A6B6CFF8F9192FF767879D40000002156575887E7EB
          ECFFBABDBEFFB3B5B6FFABAEAEFFCDD0D1FFC6C8CAFFB1B4B5FFADB0B1FFC2C4
          C5FFC9CCCDFFB6B9BAFFADAFB0FFACAFB0FFB3B5B6FFBBBDBEFFB7B9BAFFAEB0
          B1FFC1C3C5FFB8BABBFFD1D4D5FFD5D8D9FFD9DDDEFFE1E4E5FFE6EAEBFFE7EA
          EBFFAAACADFFA3A6A6FFB6B8B9FF9B9D9EFF757778D40000002157585987E8EB
          ECFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9EC
          EDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9ECEDFFE9EC
          EDFFE9ECEDFFBFC1C2FFE1E4E6FFB0B3B3FFA9ABACFFABADAEFFA2A4A5FFE6E9
          EAFFC4C7C8FFE9ECEDFFE9ECEDFFE9ECEDFF777979D4000000215A5B5B87F7F8
          F8FFE9ECEDFFEAEDEDFFEAEDEDFFEAECEDFFEAECEDFFEAECEDFFEAEDEDFFEAEC
          EDFFEAECEDFFEAEDEDFFEAECEDFFEAECEDFFEAECEDFFEAEDEDFFEAECEDFFEAED
          EDFFEAECEDFFE0E3E4FF9D9FA0FFCDD0D0FFDCDEDFFFE1E4E5FFE0E2E3FFA4A6
          A7FFCDD0D0FFEAECEDFFEAEDEDFFEAEDEDFF777979D4000000215A5B5C87FEFE
          FEFFF6F7F7FFE9ECEDFFEBEDEEFFEBEDEEFFEBEDEEFFEAEDEEFFEBEDEEFFEBED
          EEFFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFFD6D9D9FFD5D7
          D8FFEBEEEEFFEBEDEEFFBFC1C2FF8F9191FF9A9C9CFF8E8F90FFA6A8A8FFC4C6
          C7FFEBEDEEFFEBEDEEFFEBEDEEFFEBEDEEFF787979D4000000215A5B5C87A7A7
          A7FFB7B7B7FFF7F8F8FFEAEDEEFFEBEEEFFFEBEEEFFFEBEEEFFFEBEEEFFFEBEE
          EFFFEBEEEFFFEBEEEFFFEBEEEFFFEBEEEFFFECEEEFFFEBEEEFFFC3C6C6FFADAF
          AFFFBDBFC0FFC7C9C9FFC5C7C8FFAEB0B0FF989A9AFFB5B7B7FFCED0D1FFEBEE
          EEFFEBEEEFFFEBEEEFFFEBEEEFFFEBEEEFFF78797AD40000002156565587F5F5
          F5FFBCBCBCFFAEAEAEFFF6F7F8FFE5E2D9FFE5E1D6FFE0D7C5FFE7E3DBFFE0D7
          C5FFE6E2D8FFE1D8C8FFE2DACBFFE4DED2FFE0D7C5FFE5E0D6FFE0D7C5FFE5E0
          D6FFE0D7C5FFE4DED1FFE4DDD1FFE1D7C5FFE7E4DCFFE0D7C5FFE7E5DDFFE0D7
          C5FFE4DED2FFE4DED1FFE1D7C6FFE7E4DDFF74716BD4000000214B402E87D3BA
          91FFF4F4F4FF888888FFB6B6B6FFF1EBE2FFCAAB79FFB78230FFBC8D43FFC197
          55FFB37A21FFCAA872FFAF7315FFC59F63FFB37B23FFBB8A3EFFBB8B3EFFB37B
          23FFC39A59FFB07417FFCDAE7EFFB37A22FFC49C5DFFBC8E44FFB98637FFC8A5
          6DFFB07418FFCDB080FFB37A22FFC59F62FF6C614FD400000021514D4586BD8E
          44FFD3BA91FFECECECFFA9A9A9FFF3F3F3FFF1EBE2FFCBAB79FFB78230FFBC8D
          43FFC29855FFB37A21FFCAA872FFAF7315FFC59F63FFB37B24FFBB8A3EFFBB8B
          3EFFB37B24FFC59F62FFB07417FFCDAF7EFFB37A22FFC49C5DFFBD8E44FFB986
          37FFC8A56DFFB07418FFCEB080FFB37A22FF645235D2000000205B513F85CFB4
          89FFBF9654FFDBCBB1FFF9FAFBFFF9FAFBFFF9FAFBFFEBE7DEFFCEB58BFFBB8E
          45FFC5A269FFC5A167FFBC8F47FFCEB386FFB88739FFCDB183FFB9893EFFC49F
          64FFC09755FFBE934FFFC9A976FFB9893DFFD3BD98FFB9893DFFCDB183FFBF96
          54FFC29B5DFFCBAD7CFFB9893EFFD4BE9AFF5A4C35B00000000B010101010101
          0103010101030101010301010103010101030101010301010103010101030101
          0103010101030101010301010103010101030101010301010103010101030101
          0103010101030101010301010103010101030101010301010103010101030101
          0103010101030101010301010103010101030101010200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000070000000D00000016000000120000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003000000060000000A0000
          001300000120000008350000154E0204296E0D104591191E61B40507276E0000
          0011000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000500000009000000100000001B0000042B00000F4300022162060938831117
          52A4242A71C53C468EDF5E66A8F17E88BFFCA0A8CDFFA5ADCCFF2D3573CB0000
          0430000000040000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000060000092F0000
          185402042C740B0F4697191E63B92E347CD4454A8EEA5E649AF9767CA2FF8E92
          A8FFA7A9B2FFBABCBCFFC6C6C3FFC7C7C2FFC4C3BFFFBEBDB8FF6D73A2F90406
          28710000000E0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000050000123F262973D2555E
          9EF47279AEFD8F94B7FFA3A5B7FFB3B2B8FFBEBCB9FFC9C7BFFFD3D1C9FFD7D6
          CEFFD5D3CCFFCDCBC5FFC3C0B8FFB8B2AAFFB6B1AAFFBFBCB8FFA6A7B5FF2428
          67C2000002290000000300000000000000000000000000000000000000000000
          00000000000000000000000000010000000C000000220000257664659CFCC2C1
          B5FFCFCEC4FFDBD9D2FFE4E2DEFFE8E8E6FFF1F0F0FFEAE6E4FFE2DCD8FFDBD5
          CFFFD0C8C0FFC6BDB4FFBCB2A7FFB7ADA1FFBBB4ABFFC8C6C2FFC9C7C4FF6368
          9DF5010321650000000B00000000000000000000000000000000000000000000
          00000000000000000003000000130000002D0000003E0B0D4EA83347C5FFB8BC
          CAFFC6C4BCFFBAB9B5FFAEAEACFFB6B6B5FFD6D6D6FFDFD7D3FFD7CEC8FFDBD3
          CDFFD6CEC6FFD4CDC5FFC8C0B6FFC3BBB0FFCFCEC5FFD2D0CAFFD9D8D3FFA6A7
          BAFF1A1F5BB60000012200000002000000000000000000000000000000000000
          00000000000100000015000000340000003D00011B6C5257ADEF2848E0FF586D
          D0FFBABAB3FFAEADA7FFADACA9FFB4B4B3FFBABABAFFE5E4E3FFE0D8D4FFDDD5
          D0FFDBD3CDFFDCD5CEFFD6CFC6FFCFC8BDFFCBC3B7FFD2CDC4FFE1E1DBFFD9D8
          D6FF555894F000011B5A00000009000000000000000000000000000000000000
          00000000000100000016000000380000034825286DC2A0A9E8FF2748E0FF0A2E
          D8FF939DCBFFB2B1A7FFAFAFAAFFB1B1AFFFB7B7B6FFCCCCCCFFE7E3E0FFD9D0
          CBFFD8CFC9FFDFD8D1FFDAD3CAFFD2C9BDFFD2CABEFFD0C8BCFFD0C7BCFFF0EE
          E8FFA1A2BAFF111550AB0000001C000000010000000000000000000000000000
          000000000000000000050000002105062F817B80C7F9B4BEF4FF2848DFFF0023
          DAFF324ED7FFB7B9C2FFADACA6FFADADAAFFB5B5B4FFB9B9B9FFDEDDDCFFDED6
          D1FFD7CEC8FFE0D9D3FFDCD5CDFFD5CCC2FFD3CABEFFDAD5C9FFE9E8DFFFF6F6
          F1FFDDDDDDFF444987EB0000154F000000070000000000000000000000000000
          0000000000000000000000000A243E428DD4B5BAF0FFADB7F3FF2F4EE0FF0024
          D9FF0026DAFF6B7DD4FFBFBFB8FFAEAEAAFFADADABFFB6B6B5FFC4C3C3FFE6E3
          E1FFD9D0CAFFDDD5CFFFDED7D0FFDAD2C9FFD4CCC1FFD3CBBEFFD9D2C7FFDCD6
          CCFFF3F2ECFF9192B0FF0B0E47A0000000170000000100000000000000000000
          0000000000000000000112134981979ADCFFB4BCF3FFA7B3F2FF3C59E2FF0025
          DAFF0026DAFF1335D9FFA2AAD0FFB8B6B0FFADACA9FFAEAEADFFB4B4B4FFD5D4
          D3FFDFD7D3FFD8CEC8FFDAD1CBFFDAD2CAFFDBD4CBFFD5CEC2FFD9D2C6FFE3E0
          D8FFF4F5EFFFD3D2D5FF36377BE4000011440000000500000000000000000000
          000000000000000117345F61AAE4B5B9F1FFA7B0F0FFA1AEF1FF4E68E5FF0025
          D9FF0027DAFF0025DAFF3E58D8FFBEBEC5FFADABA7FFAAA9A7FFAFAEAEFFB8B7
          B7FFE0DDDBFFD8CFC9FFDCD4CEFFD9D1C9FFD9D1C8FFDAD4C9FFE0DCD1FFE0DC
          D2FFE6E2DBFFF3F3EDFF8080A5FF06093E930000001200000000000000000000
          000000000208262967A4A8A9E5FFA9AFF0FF9FA9EFFF97A7EFFF637BE8FF0329
          DAFF0027DAFF0027DAFF0328DAFF7887D5FFC0BDB9FFB1AFADFFA7A6A5FFAEAD
          ADFFCAC9C8FFDFD9D5FFDBD2CDFFD9D0C9FFD5CCC3FFDBD4CAFFD6CEC2FFD7D0
          C4FFE1DCD4FFF5F4EFFFC8C6CCFF282A71DD00000D3A00000004000000000000
          000006072A527E7FC3F4AFB1EFFF9EA5EDFF95A1EEFF8D9EEEFF768BEBFF1336
          DCFF0026D9FF0027D9FF0026DAFF1B39D7FFAAACCCFFB1AEAAFFA9A7A6FFB3B2
          B1FFC2C1C0FFE6E4E3FFE9E5E2FFEDEBE8FFEFEDE9FFEFEFE8FFEDEDE4FFE8E8
          DFFFE8E7DFFFF0F0EBFFF0F0EBFF6E6D98FE020535850000000C000000000000
          0816414387C4AFAFEAFF9FA2ECFF969EECFF8C9AECFF8396EDFF7B90ECFF304F
          E0FF0025D9FF0027DAFF0126D8FF001FD1FF4B59CDFFCAC7CCFFD9D6D3FFE3E0
          DFFFE9E7E5FFEAE8E7FFE8E6E5FFE5E2E0FFE1DEDAFFDBD7D1FFD1CBC4FFC5BE
          B5FFC8C2B9FFEEEDE5FFFDFDF7FFB9B7C3FF151852AC0000020C000000001215
          43759696D5FDA4A3ECFF969AEAFF8D96EBFF8392EBFF7A8EEBFF748AEBFF516C
          E6FF062BDBFF0026D9FF0224D4FF051ECCFF0D1DC4FF8A8BCCFFD7D3CDFFC4BD
          B9FFC8C1BDFFC7BFBBFFCBC4BFFFD3CDC8FFE2DEDAFFE0DCD6FFE2E0D9FFE0DE
          D7FFDDDCD6FFDDDEDEFAD0D2D7EFA6A7B7DD1A1C2D510000000000000E224F51
          98D6AFABECFF9695E8FF8D92E9FF848EE9FF7A8BEAFF7187EAFF6A81E9FF6078
          E8FF1D3FDEFF0024D6FF0420CFFF081BC6FF0914BDFF2C2EBAFFBBB7CEFFCEC8
          C2FFDDDAD9FFE3E1E3FFDEDEE4FCD3D4DCF1BCBEC8E09E9EACC87C7E8CAE5D5F
          6E904042506E282A364E16172133090A111E01010306000000000000040B2226
          5E979594DAFE9393E9FF848AE7FF7B87E8FF7083E9FF687FE9FF6179E8FF5C75
          E7FF3C59E1FF0625D2FF061DC9FF0A17C0FF0D12B8FF0F0CAFFF4C4BA5EB7779
          85B25D5F6E91434554712A2B3A53171823370A0B12200202060E000001040000
          0000000000000000000000000000000000000000000000000000000000000000
          091737397BB79697E2FF7E85E7FF717FE7FF677CE8FF5F77E8FF5872E7FF526C
          E5FF4961E0FF182FCFFF0819C3FF0C14BBFF0F0FB3FF110BA3FB04053F710000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000102142B4C5097D2878EE6FF6878E6FF5E75E7FF5670E6FF4F6AE5FF4963
          E2FF465BDCFF2B3CCFFF0B16BEFF0E11B5FF110CADFF0B096EB7000107100000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000050724465B5FB0E7707FE7FF536CE5FF4D68E5FF4662E3FF4159
          DDFF3E50D6FF323ECBFF1117BAFF100DB0FF0F0A95EA0204213F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D1039665D66C2F4566FE6FF4360E4FF3E59DFFF3A4F
          D7FF3745CFFF3139C6FF1718B6FF110BA9FF07084D8600000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000106161A52875567D2FC405CE2FF374ED9FF3344
          D1FF303AC8FF2C2FBFFF1B15B0FF0C0A7CCA01020D1B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000006101C266DA9465AD4FF3145D4FF2D39
          CAFF292EC1FF2623B8FF18129EF303062E530000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000020F21212B86C63643CBFF262E
          C3FF2223BAFF1E18AEFF0C0D5E9C000103070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000002051D391E2697DE2428
          BDFF1C17B2FF130F8ADA03051629000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004092F571617
          9DEF150FA3FB06083C6900000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000001030408
          3E71070B5C9E0102070F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          02050002050C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000000000000000000000000000000000000000000000000
          0000000000000000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000000010000013D2604576E4F0C943F29
          05520A05000E0000000000000000000000000000000000000000000000000D07
          00136042098660430A7D26150133010000020000000000000000000000000000
          00000905000D593C087D64470B832C19023A0201000300000000000000000000
          000000000000000000000000000000000000381D0050BD8713E9DFC62AFFCD8E
          12F84423005900000000000000000000000000000000000000000602000A7647
          0599D8B725FDDCB422FFA45D06CF100700170000000000000000000000000301
          0005673B0488D5AD20FADDBB25FFB16909DC190C002300000000000000000000
          0000000000000000000000000000000000005B300386D28516FFDFA72DFFD895
          37FF673E148F00000000000000000000000000000000000000000F070018A45C
          0BD6DB9C21FFDEA334FFBE792FF22414053A0000000000000000000000000804
          000E945209C6DA971FFFDFA533FFC78332F9311C084B00000000000000000000
          0000000000000000000000000000000000002E1C0A4CB27F4BEFD7AA79FFB794
          71E4312315490000000000000000000000000000000000000000010000046C47
          219ECB9962FDD7AF85FF82684BAF0C0803160000000000000000000000000000
          00005D3C1B8BC9935EFCD8AE82FF917356BE120C061F00000000000000000000
          00000000000000000000000000000000000004020109241B123B534537783129
          214A000000000000000000000000000000000000000000000000000000000E09
          0519382C215554473A7A120E0B1E000000000000000000000000000000000000
          00000B07041433281D4F56483B7C18140F270000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000120A001D130B011C020100030000000000000000000000000000
          00000000000000000000000000000905000F190E012506030008000000000000
          000000000000000000000000000000000000170D012169490A91583C08721E10
          0128000000000000000000000000000000000000000000000000000000000000
          0000241502309E7C17C8B4911BDA724405900B05001000000000000000000000
          000000000000000000000B05000F75530D98BC9C1FE591620DB3271400330000
          00000000000000000000000000000E0600168C5608B3DDBE27FFDAAC1EFF8C4E
          04B4060200090000000000000000000000000000000000000000000000000603
          000B8A4D04B5DCAA1DFFDFB424FFC3750EF22915013D00000000000000000000
          000000000000000000004F28006FD19013FDE1BD26FFD79118FF613304840000
          00000000000000000000000000001D0E002EB76A0EEADDA024FFDDA136FFAB6D
          28E0140B02210000000000000000000000000000000000000000000000000201
          00057D4812AED49038FFDEA457FFC08F57F42F1E0E4B00000000000000000000
          0000000000000000000042240664C8802EFEDDA04CFFD6A062FF654525930000
          00010000000000000000000000000704000E83582CBAD19F6AFFD3AD84FD6D54
          3C950503000B0000000000000000000000000000000000000000000000000000
          000031221351917255C4B59B84E65A4B3C7E0302000700000000000000000000
          00000000000000000000130C052375593DA9B19579E2897461B5120D091E0000
          000000000000000000000000000000000000130D07214033275F4E4237730A08
          0612000000000000000000000000000000000000000000000000000000000000
          0000000000000604020D15110D270504030A0000000000000000000000000000
          000000000000000000000000000002010006120E0A220C0A0717000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000602
          000A020000030000000000000000000000000000000000000000000000000704
          000A3622044E271A03350804000B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002113012D8766
          11B37F6211A0382002480100000100000000000000000000000004010006603D
          077CCDB024F6C89D1BF07340039403010005000000000000000000000000150C
          011F392505521B12022403010004000000000000000000000000000000000000
          000000000000000000000000000000000000000000000F070019945705C2DEB8
          24FFDEB322FFA55F06CD0D0600130000000000000000000000001C0D002BB56B
          08E7DEAA1FFFDDA226FFAB6516DD130A011F0000000000000000140A001D8F62
          0EB6D4BB28FCB98513E143230156000000000000000000000000000000000000
          0000000000000000000000000000000000000000000013090020A55D11DED995
          2AFFDEA145FFB47A3AE81A0F042B0000000000000000000000000B0600149560
          28CFD69B56FFDBAB75FF936E4CC50E08031A00000000000000004925006DD083
          0FFFDFB024FFDA9724FF78440DA0000000010000000000000000000000000000
          000000000000000000000000000000000000000000000201000663452798BC93
          6DF1CBAA8AF85E4B398203020007000000000000000000000000000000012E21
          154C75604CA2857463B5201913310000000000000000000000002D190649BB7C
          39F7DAA361FFD3A673FD60452A88000000020000000000000000000000000000
          00000000000000000000000000000000000000000000000000000604020D211A
          1337332A23500604030B00000000000000000000000000000000000000000000
          0000010000030403010B00000001000000000000000000000000080502104736
          256F87715DB66A5A4C9209060410000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020101070202010700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000905000F190E012506030008000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000B05000F75530D98BC9C1FE591620DB3271400330000
          00000000000000000000000000000000000000000000010100022C1A02423624
          044B110A01170100000100000000000000000000000000000000000000000000
          00000000000000000000331F034B5B3D087D2F1C023E06030009000000000000
          000000000000000000004F28006FD19013FDE1BD26FFD79118FF613304840000
          000000000000000000000000000000000000000000003C210152BC9118E7D3B5
          24F99E620AC4170B001F00000000000000000000000000000000000000000000
          000000000000351C0149BB8B16E4DDC129FFC47E0DF0381B004C000000000000
          0000000000000000000042240664C8802EFEDDA04CFFD6A062FF654525930000
          0001000000000000000000000000000000000502000A884904BDDA9A18FFE0AF
          28FFCD811EFA381E055000000000000000000000000000000000000000000000
          0000000000006837038FD69017FFDFAB2BFFD58F2EFF5E360F86000000000000
          00000000000000000000130C052375593DA9B19579E2897461B5120D091E0000
          00000000000000000000000000000000000000000000653E1697CE904BFFDCA9
          6EFFB68D62E5281A0D3E00000000000000000000000000000000000000000000
          0000000000003A230C59C1864BF8DAAA74FFBB966FE934251650000000000000
          000000000000000000000000000002010006120E0A220C0A0717000000000000
          000000000000000000000000000000000000000000001810092B5D4935878A76
          62B93A3026540000000000000000000000000000000000000000000000000000
          0000000000000704020D33261A4F6555448E3930265500000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010302
          0108010000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008A87
          8A8EA59F9FAA9F9D9FAA35353539000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006E6D6E72A59F9FAABBB3BBC7ADB2
          C6FF4A6D94FF4A6D94FF9F979AAA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D1C1C1DA59FA5AAA59D9FAAC6C7D6FF6386A5FF104D7BFF0851
          84FF084173FF084173FF9F979AAA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001D1C1C1D8A87
          8A8EA59D9FAAC6C3C6E3849EB5FF215D8CFF085184FF086D9CFF088EC6FF089E
          D6FF104D7BFF104D7BFFCEC9C6E31B1B1B1D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008A878A8EA59F9FAACECECEE39CB2
          C6FF39719CFF084D84FF08699CFF088ABDFF10A2D6FF08A2D6FF08A2D6FF08A2
          D6FF104D7BFF104D7BFFE7DFDEFFE7DFDEFF9A979AAA9F979AAA9F979AAA9F97
          9AAA9F979AAA6B67677200000000000000000000000000000000000000000000
          00000000000039383939AAA2A5AAC1B7BBC7B5C3D6FF528AADFF08598CFF1065
          94FF1086B5FF10A2D6FF10A6D6FF10A2D6FF10A2D6FF10A2D6FF10A2D6FF08A2
          D6FF104D7BFF104D7BFF00497BFF00497BFF00497BFF00497BFF00497BFF0049
          7BFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          000000000000CECED5E373A2BDFF186594FF086594FF107DB5FF189ED6FF18A6
          DEFF18A6D6FF18A6D6FF18A6D6FF10A6D6FF10A2D6FF10A2D6FF10A2D6FF10A2
          D6FF084D7BFF084D7BFF00699CFF00699CFF00699CFF00699CFF00699CFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          0000000000003186B5FF107DADFF189ACEFF21AADEFF21AADEFF21AADEFF18A6
          DEFF18A6DEFF18A6D6FF18A6D6FF18A6D6FF10A6D6FF10A2D6FF10A2D6FF10A2
          D6FF084D7BFF084D7BFFCE9263FFEF9A6BFFEF9A6BFFE79263FFE79263FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          000000000000186D9CFF29AADEFF21AADEFF21AADEFF21AADEFF21AADEFF21AA
          DEFF18A6DEFF18A6DEFF18A6D6FF18A6D6FF18A6D6FF10A6D6FF10A2D6FF10A2
          D6FF10517BFF10517BFFF7BA9CFFF7A684FFEF9A6BFFE7926BFFE79263FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF29AEDEFF29AADEFF21AADEFF21AADEFF21AADEFF21AA
          DEFF21AADEFF18A6DEFF18A6DEFF18A6D6FF18A6D6FF18A6D6FF10A6D6FF10A2
          D6FF105584FF105584FFFFDFC6FFFFCFB5FFF7AE8CFFEF9E73FFE7966BFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF29AEDEFF29AEDEFF29AADEFF21AADEFF21AADEFF21AA
          DEFF21AADEFF21AADEFF18A6DEFF18A6DEFF18A6D6FF18A6D6FF18A6D6FF10A6
          D6FF105584FF105584FFEFB684FFFFE7CEFFF7C3ADFFF7B294FFEFA27BFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF29AEDEFF29AEDEFF29AEDEFF29AADEFF21AADEFF21AA
          DEFF21AADEFF21AADEFF21AADEFF18A6DEFF18A6DEFF18A6D6FF18A6D6FF18A6
          D6FF105584FF105584FFBD825AFFD69673FFFFF3D6FFF7C7ADFFF7B294FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AADEFF21AA
          DEFF21AADEFF21AADEFF21AADEFF21A6D6FF21A6D6FF18A6D6FF18A6D6FF18A6
          D6FF105984FF105984FFF7C384FFAD7552FFCEA273FFFFDBC6FFFFD7B5FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AA
          DEFF29AADEFF21AADEFF29A6D6FF528EADFF4296B5FF29A2CEFF21A6D6FF18A6
          D6FF10598CFF10598CFFFFD794FFF7C384FFCE9263FFAD7142FFBD7552FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF31AEE7FF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AE
          DEFF29AADEFF29AADEFF8C8E9CFFCEB2B5FFB59A9CFF5A8A9CFF21A2CEFF18A6
          DEFF105D8CFF105D8CFFFFD79CFFFFD7A5FFFFD7A5FFFFD7A5FFFFD79CFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF31B2E7FF31AEE7FF31AEE7FF31AEE7FF29AEDEFF29AE
          DEFF29AEDEFF39A6CEFFBDAAADFFE7CFCEFFE7CFCEFF94828CFF29A2CEFF18A6
          DEFF105D8CFF105D8CFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF31B2E7FF31B2E7FF31AEE7FF31AEE7FF31AEE7FF29AE
          DEFF29AEDEFF29AEDEFF9C9AA5FFE7CFCEFFD6BEBDFF6B869CFF21A6D6FF21AA
          DEFF105D8CFF105D8CFFFFDBADFFFFDBADFFFFDBADFFFFDBADFFFFDBADFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF39B2E7FF31B2E7FF31B2E7FF31AEE7FF31AEE7FF31AE
          E7FF29AEDEFF29AEDEFF39A6D6FF8496A5FF6B96ADFF29A6D6FF21AADEFF21AA
          DEFF106194FF106194FFFFDBA5FFFFDBADFFFFDBADFFFFDBADFFFFDBA5FF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF39B2E7FF39B2E7FF31B2E7FF31B2E7FF31AEE7FF31AE
          E7FF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AADEFF29AADEFF21AADEFF21AA
          DEFF106194FF106194FFFFDFADFFFFDFADFFFFDFB5FFFFDFADFFFFDFADFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF39B2E7FF39B2E7FF39B2E7FF31B2E7FF31B2E7FF31AE
          E7FF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AADEFF29AADEFF21AA
          DEFF106594FF106594FFBDC7DEFF8CA6FFFF7392FFFF8CA6FFFFBDC7DEFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF39B2E7FF39B2E7FF39B2E7FF39B2E7FF31B2E7FF31B2
          E7FF31AEE7FF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AADEFF29AA
          DEFF106594FF106594FF94BAFFFFADDFFFFF9CD3FFFF9CD3FFFF84B2FFFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF42B6E7FF39B2E7FF39B2E7FF39B2E7FF39B2E7FF31B2
          E7FF31B2E7FF31AEE7FF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AEDEFF29AA
          DEFF106994FF106994FFC6EBFFFFBDEBFFFFB5E3FFFFA5D7FFFF9CD7FFFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF42B6E7FF42B6E7FF39B6E7FF39B2E7FF39B2E7FF39B2
          E7FF31B2E7FF31B2E7FF31B2E7FF31AEE7FF31AEE7FF29AEDEFF29AEDEFF29AE
          DEFF10699CFF10699CFFEFFFFFFFD6F7FFFFC6EBFFFFB5E3FFFF9CD3FFFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          00000000000000699CFF42B6E7FF42B6E7FF42B6E7FF39B6E7FF39B2E7FF39B2
          E7FF39B2E7FF31B2E7FF31B2E7FF31B2E7FF31AEE7FF31AEE7FF29AEDEFF29AE
          DEFF10699CFF10699CFFC6EFFFFFDEF7FFFFCEF3FFFFBDE7FFFFBDEBFFFF0069
          9CFF00497BFF9F979AAA00000000000000000000000000000000000000000000
          0000000000001875A5FF42B6EFFF42B6E7FF42B6E7FF42B6E7FF39B6E7FF39B2
          E7FF39B2E7FF39B2E7FF31B2E7FF31B2E7FF31B2E7FF31AEE7FF31AEE7FF29AE
          DEFF106D9CFF106D9CFFA5C7FFFFC6EFFFFFEFFFFFFFC6EFFFFF9CC3FFFF0069
          9CFF00497BFF9F9A9AAA00000000000000000000000000000000000000000000
          0000000000003186B5FF1075A5FF218ABDFF31A2D6FF42B6E7FF42B6E7FF39B6
          E7FF39B2E7FF39B2E7FF39B2E7FF31B2E7FF31B2E7FF31B2E7FF31AEE7FF31AE
          E7FF106DA5FF106D9CFF00497BFF00497BFF00497BFF00497BFF00497BFF0049
          7BFF00497BFFA59F9FAA00000000000000000000000000000000000000000000
          000000000000AAA7AAAAD6E3EFFF84B2CEFF217DADFF0871A5FF218ABDFF29A2
          D6FF39B2E7FF39B2E7FF39B2E7FF39B2E7FF31B2E7FF31B2E7FF31B2E7FF31AE
          E7FF08699CFF08699CFF00699CFF00699CFF00699CFF00699CFF00699CFF0069
          9CFF00699CFFAAA5AAAA00000000000000000000000000000000000000000000
          00000000000000000000393839398D8C8D8EAAA7AAAAC6CEDCE384B2CEFF3186
          B5FF00699CFF1882B5FF299ACEFF39AEE7FF39B2E7FF39B2E7FF31B2E7FF31B2
          E7FF086DA5FF086DA5FFD5CECEE3A59FA5AAAAA7AAAAAAA7AAAAAAA7AAAAAAA7
          AAAAAAA7AAAA5554555500000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D1D1D1D8D8C8D8EAAA7
          AAAACED0DCE394BAD6FF3186B5FF00699CFF1882B5FF2196C6FF31AADEFF31B2
          E7FF0871A5FF0871A5FF9F9D9FAA000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001D1D1D1D8D8C8D8EAAA7AAAABBBEC6C79CC3DEFF398EB5FF00699CFF187D
          ADFF00699CFF00699CFF8A878A8E000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D1D1D1D8D8C8D8EAAA7AAAABBBEC6C7A5C7
          DEFF4A96BDFF4A96BDFF55545555000000000000000000000000000000000000
          000000000000000000001D1D1D1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 528
    Top = 96
    PixelsPerInch = 96
    object cxsAlerta: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
end
