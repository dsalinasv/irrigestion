object frmEstratos: TfrmEstratos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Estratos'
  ClientHeight = 209
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 281
    Height = 193
    TabOrder = 0
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
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Refresh.Enabled = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Enabled = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Enabled = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      Navigator.Visible = True
      DataController.DataSource = dmData.dsEstratos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsData.Appending = True
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1ESPESOR: TcxGridDBColumn
        DataBinding.FieldName = 'ESPESOR'
        Width = 43
      end
      object cxGrid1DBTableView1HA: TcxGridDBColumn
        DataBinding.FieldName = 'HA'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxGrid1DBTableView1HAPropertiesButtonClick
        Width = 119
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnCalcularHA: TcxButton
    Left = 318
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 1
    OnClick = btnCalcularHAClick
  end
  object cxDBLabel2: TcxDBLabel
    Left = 321
    Top = 23
    DataBinding.DataField = 'CC_POND'
    Height = 21
    Width = 72
  end
  object cxDBLabel3: TcxDBLabel
    Left = 321
    Top = 65
    DataBinding.DataField = 'PMP_POND'
    Height = 21
    Width = 72
  end
  object cxLabel2: TcxLabel
    Left = 295
    Top = 8
    Caption = 'CC Ponderada'
  end
  object cxLabel3: TcxLabel
    Left = 295
    Top = 50
    Caption = 'PMP Ponderada'
  end
  object cxDBLabel4: TcxDBLabel
    Left = 321
    Top = 107
    DataBinding.DataField = 'SAT_POND'
    Height = 21
    Width = 72
  end
  object cxLabel4: TcxLabel
    Left = 295
    Top = 92
    Caption = 'Sat. Ponderada'
  end
  object cxLabel1: TcxLabel
    Left = 295
    Top = 134
    Caption = 'HA Ponderada'
  end
  object cxDBLabel1: TcxDBLabel
    Left = 321
    Top = 149
    DataBinding.DataField = 'HA_POND'
    Height = 21
    Width = 72
  end
end
