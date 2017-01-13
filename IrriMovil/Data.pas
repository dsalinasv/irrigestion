unit Data;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IPPeerClient,
  Data.DBXCommon, Data.DbxHTTPLayer, Data.DB, Datasnap.DBClient,
  Datasnap.DSConnect, Data.SqlExpr, Data.FMTBcd, Datasnap.Provider;

type
  TdmData = class(TDataModule)
    cntDatos: TSQLConnection;
    dspConexion: TDSProviderConnection;
    cdsUser: TClientDataSet;
    cdsUserID_USUARIO: TStringField;
    cdsUserNOMBRE: TStringField;
    cdsUserLOGIN: TStringField;
    cdsUserPASSWORD: TStringField;
    cdsUserACTIVO: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
    function VerificaLogin(TempUser, TempPassword: String): integer;
  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses
  FMX.Dialogs;

function TdmData.VerificaLogin(TempUser, TempPassword: String): integer;
begin
  cdsUser.Close;
  cdsUser.Params.ParamByName('UCLOGIN').AsString:= UpperCase(TempUser);
  cdsUser.Params.ParamByName('UCPASSWORD').AsString:= TempPassword;
  cdsUser.Open;
  if cdsUser.IsEmpty then
    Exit(-1)
  else
    Exit(cdsUserACTIVO.Value);
end;

end.
