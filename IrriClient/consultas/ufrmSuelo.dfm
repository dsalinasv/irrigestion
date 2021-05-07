object frmSuelo: TfrmSuelo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Suelo'
  ClientHeight = 313
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    257
    313)
  PixelsPerInch = 96
  TextHeight = 13
  object pnlEstrato: TcxGroupBox
    Left = 4
    Top = 2
    Caption = 'Caracterizaci'#243'n ed'#225'fica'
    TabOrder = 0
    DesignSize = (
      249
      296)
    Height = 303
    Width = 249
    object cxLabel2: TcxLabel
      Left = 3
      Top = 42
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Arcilla (%)'
      FocusControl = txtArcilla
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 66
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Arena (%)'
      FocusControl = txtArena
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 3
      Top = 90
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Limo (%)'
      FocusControl = txtLimo
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 3
      Top = 114
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Da (g/cm'#179')'
      FocusControl = txtDa
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 3
      Top = 138
      Anchors = [akLeft, akTop, akRight]
      Caption = 'MO (%)'
      FocusControl = txtMO
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 3
      Top = 162
      Anchors = [akLeft, akTop, akRight]
      Caption = 'CC (cm'#179'/cm'#179')'
      FocusControl = txtCC
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 3
      Top = 186
      Anchors = [akLeft, akTop, akRight]
      Caption = 'PMP (cm'#179'/cm'#179')'
      FocusControl = txtPMP
      Transparent = True
    end
    object cxLabel13: TcxLabel
      Left = 3
      Top = 17
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Suelo'
      Transparent = True
    end
    object cmbSuelos: TcxLookupComboBox
      Left = 78
      Top = 16
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'ID_SUELO'
      Properties.ListColumns = <
        item
          FieldName = 'NOMBRE'
        end
        item
          FieldName = 'ARCILLA'
        end
        item
          FieldName = 'ARENA'
        end
        item
          Caption = 'LIMO'
          FieldName = 'LIMO'
        end
        item
          FieldName = 'DA'
        end
        item
          FieldName = 'MO'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dmData.dsSuelo
      Properties.MaxLength = 0
      TabOrder = 15
      Width = 163
    end
    object txtArcilla: TcxDBTextEdit
      Left = 78
      Top = 41
      DataBinding.DataField = 'ARCILLA'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 0
      Width = 163
    end
    object txtArena: TcxDBTextEdit
      Left = 78
      Top = 65
      DataBinding.DataField = 'ARENA'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 2
      Width = 163
    end
    object txtLimo: TcxDBTextEdit
      Left = 78
      Top = 89
      DataBinding.DataField = 'LIMO'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 4
      Width = 163
    end
    object txtDa: TcxDBTextEdit
      Left = 78
      Top = 113
      DataBinding.DataField = 'DA'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 6
      Width = 163
    end
    object txtMO: TcxDBTextEdit
      Left = 78
      Top = 137
      DataBinding.DataField = 'MO'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 8
      Width = 163
    end
    object txtCC: TcxDBTextEdit
      Left = 78
      Top = 161
      DataBinding.DataField = 'CC'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 10
      Width = 163
    end
    object txtPMP: TcxDBTextEdit
      Left = 78
      Top = 185
      DataBinding.DataField = 'PMP'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 12
      Width = 163
    end
    object btnCalcularHA: TcxButton
      Left = 92
      Top = 263
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 16
      OnClick = btnCalcularHAClick
    end
    object cxLabel5: TcxLabel
      Left = 3
      Top = 237
      Anchors = [akLeft, akTop, akRight]
      Caption = 'HA (%)'
      FocusControl = txtHA
      Transparent = True
    end
    object txtHA: TcxDBTextEdit
      Left = 78
      Top = 236
      DataBinding.DataField = 'HA'
      DataBinding.DataSource = dmData.dsSuelo
      TabOrder = 18
      Width = 163
    end
  end
  object cxLabel1: TcxLabel
    Left = 7
    Top = 219
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Saturaci'#243'n'
    FocusControl = txtSaturacion
    Transparent = True
  end
  object txtSaturacion: TcxDBTextEdit
    Left = 82
    Top = 218
    DataBinding.DataField = 'SATURACION'
    DataBinding.DataSource = dmData.dsSuelo
    TabOrder = 2
    Width = 163
  end
end
