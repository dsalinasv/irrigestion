unit ufrmCorreos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxRibbonCustomizationForm, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, dxBar, Datasnap.DBClient, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, cxClasses, dxRibbon, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid;

type
  TfrmCorreos = class(TForm)
    IOHSOSSL: TIdSSLIOHandlerSocketOpenSSL;
    Mensaje: TIdMessage;
    SMTP: TIdSMTP;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsCorreos: TClientDataSet;
    dsCoreos: TDataSource;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Correo: TcxGridDBColumn;
    cdsCorreosNombre: TStringField;
    cdsCorreosCargo: TStringField;
    cdsCorreosCorreo: TStringField;
    cdsCorreosEnviar: TBooleanField;
    cxGrid1DBTableView1Enviar: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    imgDatos32: TcxImageList;
    imgDatos16: TcxImageList;
    ActionList1: TActionList;
    actGuardar: TAction;
    actEnviar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure SMTPFailedRecipient(Sender: TObject; const AAddress, ACode,
      AText: string; var VContinue: Boolean);
    procedure actGuardarExecute(Sender: TObject);
    procedure actEnviarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorreos: TfrmCorreos;

implementation

{$R *.dfm}

uses IOUtils, IdSSLOpenSSLHeaders, udmData;

procedure TfrmCorreos.actEnviarExecute(Sender: TObject);
begin
  Mensaje.Recipients.Clear;
  cdsCorreos.DisableControls;
  cdsCorreos.First;
  while not cdsCorreos.Eof do
  begin
    if cdsCorreosEnviar.AsBoolean then
      Mensaje.Recipients.Add.Address:= cdsCorreosCorreo.AsString;
    cdsCorreos.Next;
  end;
  cdsCorreos.EnableControls;
  try
    SMTP.Connect;
  except
    ShowMessage('Error al conectar con el servidor.');
  end;
  if SMTP.Connected then
  begin
    try
      SMTP.Send( Mensaje );
    except
      ShowMessage('Fallo en el envio de email');
    end;
    try
      SMTP.Disconnect;
    except
      ShowMessage('Error al desconectar del servidor.');
    end;
  end;
  Close;
end;

procedure TfrmCorreos.actGuardarExecute(Sender: TObject);
begin
  cdsCorreos.SaveToFile(TPath.GetHomePath + TPath.DirectorySeparatorChar +
    ChangeFileExt(ExtractFileName(Application.ExeName), '.lst'));
end;

procedure TfrmCorreos.FormCreate(Sender: TObject);
var
  sLista: String;
begin
  IdSSLOpenSSLHeaders.Load;
  sLista:= TPath.GetHomePath + TPath.DirectorySeparatorChar +
    ChangeFileExt(ExtractFileName(Application.ExeName), '.lst');
  if TFile.Exists(sLista) then
    cdsCorreos.LoadFromFile(sLista);
end;

procedure TfrmCorreos.SMTPFailedRecipient(Sender: TObject; const AAddress,
  ACode, AText: string; var VContinue: Boolean);
begin
  VContinue:= True;
end;

end.
