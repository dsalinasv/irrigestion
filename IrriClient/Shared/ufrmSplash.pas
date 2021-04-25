unit ufrmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel;

type
  TfrmSplash = class(TForm)
    lblLoad: TcxLabel;
    cmbName: TcxComboBox;
    btnElegir: TcxButton;
    procedure btnElegirClick(Sender: TObject);
  private
    procedure SetLoad(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    function ElegirManual: String;
  published
    property Load: String write SetLoad;
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

{ TfrmSplash }

procedure TfrmSplash.btnElegirClick(Sender: TObject);
begin
  Close;
end;

function TfrmSplash.ElegirManual: String;
begin
end;

procedure TfrmSplash.SetLoad(const Value: String);
begin
  lblLoad.Caption:= Value;
  Refresh;
end;

end.
