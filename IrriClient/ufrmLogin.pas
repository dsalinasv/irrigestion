unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmBase, cxGraphics, cxControls,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit;

type
  TfrmLogin = class(TfrmBase)
    lblContrasenia: TcxLabel;
    lblUsuario: TcxLabel;
    txtUsuario: TcxTextEdit;
    btnCancelar: TcxButton;
    btnOK: TcxButton;
    txtContrasenia: TcxTextEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses udmData, ufrmMain;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
var
  TempUser:     String;
  TempPassword: String;
  id:           Integer;
begin
  TempUser     := txtUsuario.Text;
  TempPassword := txtContrasenia.Text;
  id := dmData.VerificaLogin(TempUser, TempPassword);
  case id of
    -1: ShowMessage('Usuario o contraseña invalido');
    0: ShowMessage('Usuario inactivo');
    1: begin
      dmData.Login;
      Hide;
      with TfrmMain.Create(Self) do
      try
        ShowModal;
      finally
        Free;
      end;
    end;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action:= CaFree;
end;

end.
