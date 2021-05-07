object frmSplash: TfrmSplash
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Elige un cultivo'
  ClientHeight = 71
  ClientWidth = 194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblLoad: TcxLabel
    Left = 0
    Top = 54
    Align = alBottom
    Transparent = True
    ExplicitTop = 50
  end
  object cmbName: TcxComboBox
    Left = 24
    Top = 0
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 1
    Width = 153
  end
  object btnElegir: TcxButton
    Left = 64
    Top = 27
    Width = 75
    Height = 25
    Caption = 'Elegir'
    Default = True
    TabOrder = 2
    OnClick = btnElegirClick
  end
end
