unit ufrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList, dxBar, cxClasses,
  dxRibbon, cxScrollBox, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxContainer, cxLabel,
  cxCheckBox, cxDBEdit, cxTextEdit;

type
  TfrmUsuarios = class(TfrmCatalogo)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    lblPassword: TcxLabel;
    lblLogin: TcxLabel;
    lblNombre: TcxLabel;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

uses udmDataAdmin;

initialization
  RegisterClass(TfrmUsuarios);

end.
