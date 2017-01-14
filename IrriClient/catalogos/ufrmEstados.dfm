inherited frmEstados: TfrmEstados
  Caption = 'Estados'
  ClientHeight = 585
  ClientWidth = 878
  OnShow = FormShow
  ExplicitWidth = 894
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    Width = 878
    Height = 463
    LookAndFeel.SkinName = ''
    ExplicitWidth = 878
    ExplicitHeight = 463
    ClientRectBottom = 463
    ClientRectRight = 878
    inherited tabListado: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 878
      ExplicitHeight = 439
      inherited grdDatos: TcxGrid
        Width = 878
        Height = 439
        LookAndFeel.SkinName = ''
        ExplicitWidth = 878
        ExplicitHeight = 439
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataSource = dmData.dsEstado
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      ExplicitTop = 24
      ExplicitWidth = 878
      ExplicitHeight = 439
      inherited ScrollBox1: TcxScrollBox
        Width = 878
        Height = 439
        ExplicitWidth = 878
        ExplicitHeight = 439
        object cxGrid2: TcxGrid
          Left = 3
          Top = 54
          Width = 862
          Height = 371
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object cxGridDBTableView2: TcxGridDBTableView
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
            DataController.DataSource = dmData.dsEstacion
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
            OptionsView.Indicator = True
            object cxGridDBTableView2ID_ESTACION: TcxGridDBColumn
              DataBinding.FieldName = 'ID_ESTACION'
            end
            object cxGridDBTableView2NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object cxGridDBTableView2ACTIVO: TcxGridDBColumn
              DataBinding.FieldName = 'ACTIVO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
        object Label1: TcxLabel
          Left = 3
          Top = 6
          Caption = 'Nombre'
          FocusControl = DBEdit1
          Transparent = True
        end
        object DBEdit1: TcxDBTextEdit
          Left = 3
          Top = 27
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsEstado
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 500
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 878
    ExplicitWidth = 878
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
