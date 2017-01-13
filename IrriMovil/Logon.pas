unit Logon;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, Data.DB, Datasnap.DBClient,
  FMX.ListBox;

type
  TLogonForm = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Label1: TLabel;
    txtUsuario: TEdit;
    txtContrasenia: TEdit;
    Label2: TLabel;
    Layout3: TLayout;
    Button1: TButton;
    StyleBook: TStyleBook;
    Layout4: TLayout;
    cmbNombre: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogonForm: TLogonForm;

implementation

{$R *.fmx}

uses MasterDetail, Data;

procedure TLogonForm.Button1Click(Sender: TObject);
var
  TempUser:     String;
  TempPassword: String;
  id:           Integer;
begin
  TempUser     := txtUsuario.Text;
  TempPassword := txtContrasenia.Text;
  dmData.cntDatos.Close;
  dmData.cntDatos.Params.Values['ServerConnection']:= 'TsmModulo.GetConnectionIrri' +
    cmbNombre.Items[cmbNombre.ItemIndex];
  id := dmData.VerificaLogin(TempUser, TempPassword);
  case id of
    -1: ShowMessage('Usuario o contraseña invalido');
    0: ShowMessage('Usuario inactivo');
    1: begin
      with TMasterDetailForm.Create(Self) do
      begin
        Login;
        Show;
      end;
    end;
  end;
end;

end.
