object frmSubsistema: TfrmSubsistema
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Subsistema de riego'
  ClientHeight = 65
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    249
    65)
  PixelsPerInch = 96
  TextHeight = 13
  object btnElegir: TcxButton
    Left = 166
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Elegir'
    Default = True
    TabOrder = 0
    OnClick = btnElegirClick
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 78
    Top = 8
    Properties.CharCase = ecUpperCase
    Properties.DropDownAutoSize = True
    Properties.GridMode = True
    Properties.KeyFieldNames = 'ID_SUBSISTEMA'
    Properties.ListColumns = <
      item
        FieldName = 'NOMBRE'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dmData.dsSubsistema
    Properties.MaxLength = 0
    TabOrder = 1
    Width = 163
  end
  object cxLabel21: TcxLabel
    Left = 3
    Top = 9
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Subsistema'
    Transparent = True
  end
end
