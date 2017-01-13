unit ufrmSubsistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, cxControls, cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmSubsistema = class(TForm)
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    btnElegir: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnElegirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubsistema: TfrmSubsistema;

implementation

{$R *.dfm}

uses udmData;

procedure TfrmSubsistema.btnElegirClick(Sender: TObject);
begin
  Close;
  dmData.cdsSiembra.Edit;
  dmData.cdsSiembraEFICIENCIA.Value:= dmData.cdsSubsistemaMAXIMO.Value;
end;

procedure TfrmSubsistema.FormCreate(Sender: TObject);
begin
  dmData.cdsSistema.Locate('ID_SISTEMA', dmData.cdsTipoID_SISTEMA.Value, []);
end;

end.
