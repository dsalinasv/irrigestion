inherited frmSistemas: TfrmSistemas
  Caption = 'Sistemas de riego'
  ClientHeight = 665
  ExplicitTop = -163
  ExplicitWidth = 608
  ExplicitHeight = 703
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcDatos: TcxPageControl
    Height = 539
    ExplicitHeight = 539
    ClientRectBottom = 533
    inherited tabListado: TcxTabSheet
      Caption = 'Sistema'
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 583
      ExplicitHeight = 507
      inherited grdDatos: TcxGrid
        Width = 583
        Height = 507
        ExplicitWidth = 583
        ExplicitHeight = 507
        inherited grdDatosDBTableView1: TcxGridDBTableView
          DataController.DataSource = dmData.dsSistema
          object grdDatosDBTableView1NOMBRE: TcxGridDBColumn
            DataBinding.FieldName = 'NOMBRE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
      end
    end
    inherited tabDatos: TcxTabSheet
      Caption = 'Subsistema'
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 583
      ExplicitHeight = 507
      inherited ScrollBox1: TcxScrollBox
        Width = 583
        Height = 507
        ExplicitWidth = 583
        ExplicitHeight = 507
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 2
          Top = 26
          DataBinding.DataField = 'NOMBRE'
          DataBinding.DataSource = dmData.dsSistema
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 500
        end
        object cxGrid1: TcxGrid
          Left = 3
          Top = 76
          Width = 526
          Height = 428
          TabOrder = 3
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
            DataController.DataSource = dmData.dsSubsistema
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
            object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
              DataBinding.FieldName = 'NOMBRE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
            end
            object cxGrid1DBTableView1PROMEDIO: TcxGridDBColumn
              DataBinding.FieldName = 'PROMEDIO'
            end
            object cxGrid1DBTableView1MAXIMO: TcxGridDBColumn
              DataBinding.FieldName = 'MAXIMO'
            end
            object cxGrid1DBTableView1UD: TcxGridDBColumn
              DataBinding.FieldName = 'UD'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 3
          Caption = 'Nombre'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 53
          Caption = 'Subsistemas de riego'
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
