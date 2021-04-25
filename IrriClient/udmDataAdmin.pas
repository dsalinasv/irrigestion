unit udmDataAdmin;

interface

uses
  Forms, Windows, SysUtils, Classes, WideStrings, DbxDatasnap, DBClient,
  DSConnect, DB, SqlExpr, IOUtils, IPPeerClient, Data.DBXCommon,
  Data.DbxHTTPLayer, Data.FMTBcd, cxLocalization, Vcl.ExtCtrls, cxGrid,
  cxLookAndFeels, dxSkinsForm, Vcl.Dialogs, dxSkinsCore, dxSkinOffice2007Blue,
  cxClasses;

type
  TdmData = class(TDataModule)
    cntConexion: TSQLConnection;
    dspConexion: TDSProviderConnection;
    cxLocalizer: TcxLocalizer;
    dsCiclo: TDataSource;
    cdsCiclo: TClientDataSet;
    cdsCicloID_CICLO: TStringField;
    cdsCicloNOMBRE: TStringField;
    dsSuelo: TDataSource;
    cdsSuelo: TClientDataSet;
    cdsSueloID_SUELO: TStringField;
    cdsSueloARCILLA: TFloatField;
    cdsSueloARENA: TFloatField;
    cdsSueloNOMBRE: TStringField;
    cdsSueloMO: TFloatField;
    cdsSueloDA: TFloatField;
    cdsSueloLIMO: TFloatField;
    dsSubsistema: TDataSource;
    cdsSubsistema: TClientDataSet;
    dsSistema: TDataSource;
    cdsSistema: TClientDataSet;
    cdsSistemaID_SISTEMA: TStringField;
    cdsSistemaNOMBRE: TStringField;
    cdsSistemadtsSubsistemas: TDataSetField;
    cdsSubsistemaID_SUBSISTEMA: TStringField;
    cdsSubsistemaNOMBRE: TStringField;
    cdsSubsistemaPROMEDIO: TFloatField;
    cdsSubsistemaMAXIMO: TFloatField;
    cdsSubsistemaUD: TFloatField;
    cdsSubsistemaID_SISTEMA: TStringField;
    dsEstado: TDataSource;
    cdsEstado: TClientDataSet;
    dsEstacion: TDataSource;
    cdsEstacion: TClientDataSet;
    dsFenologia: TDataSource;
    dsVariedad: TDataSource;
    cdsVariedad: TClientDataSet;
    dsTipo: TDataSource;
    cdsTipo: TClientDataSet;
    cdsFenologia: TClientDataSet;
    dsCultivo: TDataSource;
    cdsCultivo: TClientDataSet;
    cdsCultivoID_CULTIVO: TStringField;
    cdsCultivoNOMBRE: TStringField;
    cdsCultivodtsTipos: TDataSetField;
    cdsTipoID_TIPO: TStringField;
    cdsTipoORDEN: TIntegerField;
    cdsTipoID_SISTEMA: TStringField;
    cdsTipoNOMBRE: TStringField;
    cdsTipoTUMIN: TFloatField;
    cdsTipoTUMAX: TFloatField;
    cdsTipoKMAX: TFloatField;
    cdsTipoXKMAX: TFloatField;
    cdsTipoPRO: TFloatField;
    cdsTipoPRMAX: TFloatField;
    cdsTipoALPHA0: TFloatField;
    cdsTipoALPHA1: TFloatField;
    cdsTipoALPHA2: TFloatField;
    cdsTipoALPHA3: TFloatField;
    cdsTipoALPHA4: TFloatField;
    cdsTipoID_CULTIVO: TStringField;
    cdsTipodtsVariedades: TDataSetField;
    cdsTipodtsFenologias: TDataSetField;
    cdsVariedadID_VARIEDAD: TStringField;
    cdsVariedadNOMBRE: TStringField;
    cdsVariedadID_TIPO: TStringField;
    cdsFenologiaID_FENOLOGIA: TStringField;
    cdsFenologiaORDEN: TIntegerField;
    cdsFenologiaNOMBRE: TStringField;
    cdsFenologiaCLAVE: TStringField;
    cdsFenologiaDGC: TFloatField;
    cdsFenologiaID_TIPO: TStringField;
    cdsTipoKCO: TFloatField;
    dxSkinController: TdxSkinController;
    opnDialog: TOpenDialog;
    dsUsuario: TDataSource;
    cdsUsuario: TClientDataSet;
    sdExcel: TSaveDialog;
    dsConsultaGeneral: TDataSource;
    cdsConsultaGeneral: TClientDataSet;
    cdsTipoALPHA5: TFloatField;
    cdsConsultaGeneralUSUSARIO: TStringField;
    cdsConsultaGeneralPARCELA: TStringField;
    cdsConsultaGeneralESTACION: TStringField;
    cdsConsultaGeneralSIEMBRA: TStringField;
    cdsConsultaGeneralFECHA: TSQLTimeStampField;
    cdsConsultaGeneralCULTIVO: TStringField;
    cdsConsultaGeneralCICLO: TStringField;
    cdsConsultaGeneralVARIEDAD: TStringField;
    cdsConsultaGeneralTIPO: TStringField;
    cdsConsultaGeneralINI: TSQLTimeStampField;
    cdsConsultaGeneralHORAS: TFloatField;
    cdsConsultaGeneralAVANCE: TFloatField;
    cdsConsultaGeneralGASTO: TFloatField;
    cdsConsultaGeneralLAMINA: TFloatField;
    cdsConsultaGeneralRENDIMIENTO: TFloatField;
    cdsConsultaGeneralVOLUMEN: TFloatField;
    cdsConsultaGeneralLAMINA_BRUTA: TFloatField;
    cdsConsultaGeneralEA: TFloatField;
    cdsConsultaGeneralProdAgua: TFloatField;
    cdsUsuarioID_USUARIO: TStringField;
    cdsUsuarioNOMBRE: TStringField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioPASSWORD: TStringField;
    cdsUsuarioACTIVO: TIntegerField;
    cdsConsultaGeneralUBICACION: TStringField;
    cdsEstadoID_ESTADO: TSmallintField;
    cdsEstadoNOMBRE: TStringField;
    cdsEstadodtsEstaciones: TDataSetField;
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
    procedure cdsConsultaGeneralCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    function GetId: String;
    procedure CargarDatos;
    procedure LoadConfig;
  public
    { Public declarations }
    procedure Exportar(Grid: TcxGrid);
  end;

var
  dmData: TdmData;

implementation

{$R *.dfm}

uses
  IniFiles, ufrmSplash, cxGridExportLink, cxGraphics, ufrmMainAdmin, Vcl.Controls;

function TdmData.GetId: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TdmData.LoadConfig;
var
  names: TStringList;
  i: byte;
begin
  with TIniFile.Create('./config.ini') do
  try
    names:= TStringList.Create;
    cntConexion.Params.Values['HostName']:= ReadString('connection', 'host', '');
    ReadSectionValues('databases', names);
    for i:= 0 to Pred(names.Count) do
    begin
      frmSplash.cmbName.Properties.Items.Add(names.ValueFromIndex[i]);
    end;
  finally
    Free;
    names.Free;
  end;
end;

procedure TdmData.AsignarEventos;
var
  i: integer;
begin
  for i:= 0 to Pred(ComponentCount) do
  begin
    if Components[i] is TClientDataset then
    begin
      //(Components[i] as TClientDataSet).OnNewRecord:= cdsNewRecord;
      (Components[i] as TClientDataSet).OnReconcileError:= cdsReconcileError;
    end;
  end;
end;

procedure TdmData.cdsConsultaGeneralCalcFields(DataSet: TDataSet);
begin
  if (not cdsConsultaGeneralINI.IsNull) and
    (not cdsConsultaGeneralHORAS.IsNull) then
  begin
    if (not cdsConsultaGeneralGASTO.IsNull) and
      (not cdsConsultaGeneralAVANCE.IsNull) and
      (cdsConsultaGeneralAVANCE.Value > 0) then
    begin
      cdsConsultaGeneralVOLUMEN.Value:= cdsConsultaGeneralGASTO.Value *
        cdsConsultaGeneralHORAS.Value * 3.6;
      cdsConsultaGeneralLAMINA_BRUTA.Value:= cdsConsultaGeneralVOLUMEN.Value /
        (cdsConsultaGeneralAVANCE.Value * 100);
    end;
  end;
  if (cdsConsultaGeneralLAMINA_BRUTA.Value>0) then
  begin
    cdsConsultaGeneralEA.Value:=
      (cdsConsultaGeneralLAMINA.Value /
      cdsConsultaGeneralLAMINA_BRUTA.Value) * 100;
  end;
  if (cdsConsultaGeneralVOLUMEN.Value > 0) and (cdsConsultaGeneralAVANCE.Value > 0) then
    cdsConsultaGeneralProdAgua.Value:= cdsConsultaGeneralRENDIMIENTO.Value * 1000 /
     (cdsConsultaGeneralVOLUMEN.Value / cdsConsultaGeneralAVANCE.Value)
  else
    cdsConsultaGeneralProdAgua.Value:= 0;
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
    cdsSueloLIMO.Value:= 100 - (cdsSueloARCILLA.Value + cdsSueloARENA.Value)
  else
    cdsSueloLIMO.Value:= 0
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
  try
    frmSplash:= TfrmSplash.Create(Application);
    LoadConfig;
    frmSplash.ShowModal;
    frmSplash.Load:= 'Cargando idioma español';
    cxLocalizer.Active:= true;
    cxLocalizer.Locale:= 1034;
    AsignarEventos;
    cntConexion.Params.Values['ServerConnection']:= 'TsmModulo.GetConnection' +
       frmSplash.cmbName.ItemIndex.ToString;
    frmSplash.Load:= 'Conectando al servidor ' + cntConexion.Params.Values['HostName'];
    cntConexion.Open;
    Screen.Cursor := crHourglass;
    CargarDatos;
    frmSplash.Free;
    Screen.Cursor := crDefault;
  except
    on E : Exception do
    begin
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
      ExportGridToExcel(FileName, Grid, true, true, false);
  end;
end;

procedure TdmData.CargarDatos;
procedure Abrir(DataSet: TDataSet);
begin
  DataSet.Open;
end;
begin
  Abrir(cdsUsuario);
  Abrir(cdsCiclo);
  Abrir(cdsSuelo);
  Abrir(cdsSistema);
  Abrir(cdsCultivo);
end;

end.
