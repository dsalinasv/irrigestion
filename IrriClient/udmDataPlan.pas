unit udmDataPlan;

interface

uses
  Forms, Windows, SysUtils, Classes, WideStrings, DbxDatasnap, DBClient,
  DSConnect, DB, SqlExpr, IOUtils, IPPeerClient, Data.DBXCommon,
  Data.DbxHTTPLayer, Data.FMTBcd, cxLocalization, cxGrid, Vcl.ExtCtrls,
  cxLookAndFeels, dxSkinsForm, Vcl.Dialogs,
  Datasnap.Provider, cxClasses;

type
  TdmData = class(TDataModule)
    cntConexion: TSQLConnection;
    dspConexion: TDSProviderConnection;
    cxLocalizer: TcxLocalizer;
    dsEstacion: TDataSource;
    cdsEstacion: TClientDataSet;
    dsEstado: TDataSource;
    cdsEstado: TClientDataSet;
    opnDialog: TOpenDialog;
    cdsSistema: TClientDataSet;
    cdsSistemaID_SISTEMA: TStringField;
    cdsSistemaNOMBRE: TStringField;
    cdsSistemadtsSubsistemas: TDataSetField;
    dsSubsistema: TDataSource;
    dsTipo: TDataSource;
    dsCultivo: TDataSource;
    cdsCultivo: TClientDataSet;
    cdsCultivoID_CULTIVO: TStringField;
    cdsCultivoNOMBRE: TStringField;
    cdsTipo: TClientDataSet;
    cdsTipoID_TIPO: TStringField;
    cdsTipoNOMBRE: TStringField;
    cdsTipoPRMAX: TFloatField;
    cdsTipoTUMAX: TFloatField;
    cdsTipoTUMIN: TFloatField;
    cdsTipoTIPO: TStringField;
    cdsSubsistema: TClientDataSet;
    sdExcel: TSaveDialog;
    cdsCultivodtsTipo: TDataSetField;
    ssmPlan: TSqlServerMethod;
    cdsSubsistemaID_SUBSISTEMA: TStringField;
    cdsSubsistemaNOMBRE: TStringField;
    cdsSubsistemaPROMEDIO: TFloatField;
    cdsSubsistemaMAXIMO: TFloatField;
    cdsSubsistemaUD: TFloatField;
    cdsSubsistemaID_SISTEMA: TStringField;
    cdsTipoID_SISTEMA: TStringField;
    dsSuelo: TDataSource;
    cdsSuelo: TClientDataSet;
    cdsSueloID_SUELO: TStringField;
    cdsSueloARCILLA: TFloatField;
    cdsSueloARENA: TFloatField;
    cdsSueloNOMBRE: TStringField;
    cdsSueloMO: TFloatField;
    cdsSueloDA: TFloatField;
    cdsSueloLIMO: TFloatField;
    cdsSueloCC: TFloatField;
    cdsSueloPMP: TFloatField;
    cdsSueloHA: TFloatField;
    cdsSueloSATURACION: TFloatField;
    cdsEstadoID_ESTADO: TSmallintField;
    cdsEstadoNOMBRE: TStringField;
    cdsEstadodtsEstacion: TDataSetField;
    cdsEstacionID_ESTACION: TIntegerField;
    cdsEstacionID_ESTADO: TSmallintField;
    cdsEstacionNOMBRE: TStringField;
    cdsEstacionACTIVO: TSmallintField;
    procedure AsignarEventos;
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsSueloCalcFields(DataSet: TDataSet);
    procedure cdsTipoCalcFields(DataSet: TDataSet);
  private
    FNombre: String;
    { Private declarations }
    function GetId: String;
    procedure CargarDatos;
    procedure SetNombre(const Value: String);
  public
    { Public declarations }
    procedure Exportar(Grid: TcxGrid);
  published
    property Nombre: String read FNombre write SetNombre;
  end;

var
  dmData: TdmData;

implementation

{$R *.dfm}

uses ufrmSplash, cxGridExportLink, ufrmMainPlan, Vcl.Controls,
  ApplicationVersionHelper;

function TdmData.GetId: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TdmData.AsignarEventos;
var
  i: integer;
begin
  for i:= 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TClientDataset then
    begin
      (Components[i] as TClientDataSet).AfterDelete:= cdsAfterPost;
//      (Components[i] as TClientDataSet).AfterPost:= cdsAfterPost;
      (Components[i] as TClientDataSet).OnNewRecord:= cdsNewRecord;
      (Components[i] as TClientDataSet).OnReconcileError:= cdsReconcileError;
    end;
  end;
end;

procedure TdmData.cdsNewRecord(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).FieldByName(
    StringReplace(DataSet.Name, 'cds', 'ID_', [])).AsString := GetId;
end;

procedure TdmData.cdsAfterPost(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).ApplyUpdates(0)
end;

procedure TdmData.cdsReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
begin
  inherited;
  Application.MessageBox(PChar(E.Message),'Error',MB_OK + MB_ICONERROR);
end;

procedure TdmData.cdsSueloCalcFields(DataSet: TDataSet);
begin
  if (not cdsSueloARCILLA.IsNull) and (not cdsSueloARENA.IsNull) then
  begin
    cdsSueloLIMO.Value:= 100 - (cdsSueloARCILLA.Value + cdsSueloARENA.Value);
    if (not cdsSueloDA.IsNull) and (not cdsSueloMO.IsNull) then
    begin
      cdsSueloCC.Value:= 0.3486 - 0.0018 *
        cdsSueloARENA.Value + 0.0039 *
        cdsSueloARCILLA.Value + 0.0228 *
        cdsSueloMO.Value - 0.0738 *
        cdsSueloDA.Value;
      cdsSueloPMP.Value:= 0.0854 - 0.0004 *
        cdsSueloARENA.Value + 0.0044 *
        cdsSueloARCILLA.Value + 0.0122 *
        cdsSueloMO.Value - 0.0182 *
        cdsSueloDA.Value;
      cdsSueloSATURACION.Value:= 1 - cdsSueloDA.Value / 2.65;
      cdsSueloHA.Value:= cdsSueloCC.Value - cdsSueloPMP.Value;
    end;
  end;
end;

procedure TdmData.cdsTipoCalcFields(DataSet: TDataSet);
begin
  cdsSistema.Locate('ID_SISTEMA', cdsTipoID_SISTEMA.Value, []);
  cdsTipoTIPO.Value:= cdsTipoNOMBRE.Value + ' - ' +
    cdsSistemaNOMBRE.Value;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
const
  HOST = 'cevaf.redirectme.net';
begin
  try
    frmSplash:= TfrmSplash.Create(Application);
    if frmSplash.ElegirAuto(ParamStr(1)) then
    begin
      Nombre:= ParamStr(1);
    end
    else
    begin
      Nombre:= frmSplash.ElegirManual;
    end;
    frmSplash.Show;
    frmSplash.Load:= 'Cargando idioma español';
    cxLocalizer.Active:= true;
    cxLocalizer.Locale:= 1034;
    AsignarEventos;
    cntConexion.Params.Values['HostName']:= HOST;
    cntConexion.Params.Values['HostName']:= HOST;
    cntConexion.Params.Values['ServerConnection']:= 'TsmModulo.GetConnection' +
       Nombre;
    frmSplash.Load:= 'Conectando al servidor ' + cntConexion.Params.Values['HostName'];
    cntConexion.Open;
    Screen.Cursor := crHourglass;
    CargarDatos;
    frmSplash.Free;
    Screen.Cursor := crDefault;
  except
    on E : Exception do
    begin
      Screen.Cursor := crDefault;
      frmSplash.Load:= 'Imposible conectar con el servidor ' + E.Message;
      Sleep(3000);
      Application.Terminate
    end;
  end;
end;

procedure TdmData.Exportar(Grid: TcxGrid);
begin
  with sdExcel do
  begin
    if Execute then
      ExportGridToExcel(FileName, Grid);
  end;
end;

procedure TdmData.CargarDatos;
procedure Abrir(DataSet: TDataSet; sMensaje: String);
begin
  DataSet.Open;
  frmSplash.Load := 'Cargando ' + sMensaje;
end;
begin
  Abrir(cdsSuelo, 'texturas de suelo');
  Abrir(cdsSistema, 'sistemas de riego');
  Abrir(cdsCultivo, 'cultivos');
  Abrir(cdsEstado, 'distritos');
end;

procedure TdmData.SetNombre(const Value: String);
begin
  FNombre := Value;
end;

end.
