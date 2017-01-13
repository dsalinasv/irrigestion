unit ufrmSuelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxGroupBox;

type
  TfrmSuelo = class(TForm)
    pnlEstrato: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel13: TcxLabel;
    cmbSuelos: TcxLookupComboBox;
    txtArcilla: TcxDBTextEdit;
    txtArena: TcxDBTextEdit;
    txtLimo: TcxDBTextEdit;
    txtDa: TcxDBTextEdit;
    txtMO: TcxDBTextEdit;
    txtCC: TcxDBTextEdit;
    txtPMP: TcxDBTextEdit;
    btnCalcularHA: TcxButton;
    cxLabel1: TcxLabel;
    txtSaturacion: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    txtHA: TcxDBTextEdit;
    procedure btnCalcularHAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuelo: TfrmSuelo;

implementation

{$R *.dfm}

uses udmData;

procedure TfrmSuelo.btnCalcularHAClick(Sender: TObject);
begin
  dmData.cdsEstratos.Edit;
  dmData.cdsEstratosCC.Value:= dmData.cdsSueloCC.Value;
  dmData.cdsEstratosPMP.Value:= dmData.cdsSueloPMP.Value;
  dmData.cdsEstratosSATURACION.Value:= dmData.cdsSueloSATURACION.Value;
  Close;
end;

end.
