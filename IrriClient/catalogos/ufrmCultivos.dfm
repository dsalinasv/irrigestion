inherited frmCultivos: TfrmCultivos
  Left = 355
  Top = 172
  Caption = 'Cultivos'
  ClientWidth = 640
  ExplicitWidth = 656
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    Width = 640
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Properties.ActivePage = tabDatos
    LookAndFeel.SkinName = ''
    ExplicitWidth = 640
    ClientRectRight = 640
    inherited tabListado: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitTop = 24
      ExplicitWidth = 640
      ExplicitHeight = 420
      inherited grdDatos: TcxGrid
        Width = 640
        Height = 420
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        LookAndFeel.SkinName = ''
        ExplicitWidth = 640
        ExplicitHeight = 420
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmData.dsCultivo
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitTop = 24
      ExplicitWidth = 640
      ExplicitHeight = 420
      inherited ScrollBox1: TcxScrollBox
        Width = 640
        Height = 420
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 640
        ExplicitHeight = 420
        object cxLabel1: TcxLabel
          Left = 3
          Top = 49
          Caption = 'Tipo'
          Transparent = True
        end
        object DBEdit1: TcxDBTextEdit
          Left = 3
          Top = 26
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsCultivo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 500
        end
        object DBGrid2: TcxGrid
          Left = 1
          Top = 72
          Width = 608
          Height = 91
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          LookAndFeel.SkinName = ''
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
            DataController.DataSource = dmData.dsTipo
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
            object DBGrid2DBTableView1ORDEN: TcxGridDBColumn
              DataBinding.FieldName = 'ORDEN'
            end
            object DBGrid2DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object DBGrid2DBTableView1ID_SISTEMA: TcxGridDBColumn
              DataBinding.FieldName = 'ID_SISTEMA'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.KeyFieldNames = 'ID_SISTEMA'
              Properties.ListColumns = <
                item
                  FieldName = 'NOMBRE'
                end>
              Properties.ListSource = dmData.dsSistema
            end
            object DBGrid2DBTableView1TUMIN: TcxGridDBColumn
              DataBinding.FieldName = 'TUMIN'
            end
            object DBGrid2DBTableView1TUMAX: TcxGridDBColumn
              DataBinding.FieldName = 'TUMAX'
            end
            object DBGrid2DBTableView1KMAX: TcxGridDBColumn
              DataBinding.FieldName = 'KMAX'
            end
            object DBGrid2DBTableView1KCO: TcxGridDBColumn
              DataBinding.FieldName = 'KCO'
            end
            object DBGrid2DBTableView1XKMAX: TcxGridDBColumn
              DataBinding.FieldName = 'XKMAX'
            end
            object DBGrid2DBTableView1PRO: TcxGridDBColumn
              DataBinding.FieldName = 'PRO'
            end
            object DBGrid2DBTableView1PRMAX: TcxGridDBColumn
              DataBinding.FieldName = 'PRMAX'
            end
            object DBGrid2DBTableView1ALPHA0: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA0'
            end
            object DBGrid2DBTableView1ALPHA1: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA1'
            end
            object DBGrid2DBTableView1ALPHA2: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA2'
            end
            object DBGrid2DBTableView1ALPHA3: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA3'
            end
            object DBGrid2DBTableView1ALPHA4: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA4'
            end
            object DBGrid2DBTableView1ALPHA5: TcxGridDBColumn
              DataBinding.FieldName = 'ALPHA5'
            end
          end
          object DBGrid2Level1: TcxGridLevel
            GridView = DBGrid2DBTableView1
          end
        end
        object Label1: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Nombre'
          FocusControl = DBEdit1
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 3
          Top = 169
          Caption = 'Variedades'
          Transparent = True
        end
        object DBGrid3: TcxGrid
          Left = 3
          Top = 190
          Width = 334
          Height = 120
          TabOrder = 5
          LookAndFeel.SkinName = ''
          object DBGrid3DBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dmData.dsVariedad
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
            object DBGrid3DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
          end
          object DBGrid3Level1: TcxGridLevel
            GridView = DBGrid3DBTableView1
          end
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 316
          Caption = 'Fenolog'#237'a'
          Transparent = True
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 339
          Width = 534
          Height = 67
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 7
          LookAndFeel.SkinName = ''
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dmData.dsFenologia
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
            object cxGridDBTableView1ORDEN: TcxGridDBColumn
              DataBinding.FieldName = 'ORDEN'
            end
            object cxGridDBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object cxGridDBTableView1CLAVE: TcxGridDBColumn
              DataBinding.FieldName = 'CLAVE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 70
            end
            object cxGridDBTableView1DGC: TcxGridDBColumn
              DataBinding.FieldName = 'DGC'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 640
    ExplicitWidth = 640
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
