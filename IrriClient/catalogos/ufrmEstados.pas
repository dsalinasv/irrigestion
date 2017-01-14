unit ufrmEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, dxRibbonSkins, dxRibbonCustomizationForm, cxTextEdit, cxCheckBox,
  cxContainer, cxDBEdit, cxLabel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, System.ImageList, Vcl.ImgList, Vcl.DBActns, System.Actions,
  Vcl.ActnList, dxBar, cxClasses, dxRibbon, cxScrollBox, cxGridLevel,
  cxGridCustomView, cxGrid, cxPC;

type
  TfrmEstados = class(TfrmCatalogo)
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Label1: TcxLabel;
    DBEdit1: TcxDBTextEdit;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridDBTableView2NOMBRE: TcxGridDBColumn;
    cxGridDBTableView2ID_ESTACION: TcxGridDBColumn;
    cxGridDBTableView2ACTIVO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstados: TfrmEstados;

implementation

{$R *.dfm}

uses udmDataAdmin;

procedure TfrmEstados.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    dmData.cdsEstado.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

initialization
  RegisterClass(TfrmEstados);

end.
