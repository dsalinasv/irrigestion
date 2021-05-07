unit ufrmEstratos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxButtonEdit,
  Vcl.Menus, cxContainer, cxLabel, cxDBLabel, Vcl.StdCtrls, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfrmEstratos = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ESPESOR: TcxGridDBColumn;
    cxGrid1DBTableView1HA: TcxGridDBColumn;
    btnCalcularHA: TcxButton;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBLabel4: TcxDBLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    procedure cxGrid1DBTableView1HAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnCalcularHAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstratos: TfrmEstratos;

implementation

{$R *.dfm}

uses udmData, ufrmSuelo;

procedure TfrmEstratos.btnCalcularHAClick(Sender: TObject);
begin
  if dmData.cdsEstratos.State in dsEditModes then
    dmData.cdsEstratos.Post;
  dmData.cdsParcela.Edit;
  dmData.cdsParcelaHA.Value:=  dmData.cdsEstratosHA_POND.Value;
  Close;
end;

procedure TfrmEstratos.cxGrid1DBTableView1HAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  with TfrmSuelo.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.
