unit usrvMetodos;

interface

uses
  System.SysUtils, System.Classes, Generics.Collections, Data.DBXFirebird,
  Data.FMTBcd, Data.SqlExpr, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  Datasnap.DSProviderDataModuleAdapter, Data.DBXCommon, uData;

type
  TsmModulo = class(TDSServerModule)
    cntConexion: TSQLConnection;
    dtsEstados: TSQLDataSet;
    dspEstados: TDataSetProvider;
    dtsParcelas: TSQLDataSet;
    dtsUsuario: TSQLDataSet;
    dtsPluviometros: TSQLDataSet;
    dtsFenologias: TSQLDataSet;
    dtsTipos: TSQLDataSet;
    dtsRiegos: TSQLDataSet;
    dtsUsuarios: TSQLDataSet;
    dspUsuarios: TDataSetProvider;
    dtsCiclos: TSQLDataSet;
    dtsSiembras: TSQLDataSet;
    dspSiembras: TDataSetProvider;
    dtsLluvias: TSQLDataSet;
    dtsCultivos: TSQLDataSet;
    dtsSistemas: TSQLDataSet;
    dtsSubsistemas: TSQLDataSet;
    dtsSuelos: TSQLDataSet;
    dtsVariedades: TSQLDataSet;
    cdsPredicciones: TClientDataSet;
    dspLluvias: TDataSetProvider;
    dspParcelas: TDataSetProvider;
    dspUsuario: TDataSetProvider;
    dspCultivos: TDataSetProvider;
    dspPluviometros: TDataSetProvider;
    dspSistemas: TDataSetProvider;
    dspVariedades: TDataSetProvider;
    dspCiclos: TDataSetProvider;
    dspSubsistemas: TDataSetProvider;
    dspSuelos: TDataSetProvider;
    dspRiegos: TDataSetProvider;
    dspFenologias: TDataSetProvider;
    dsSistema: TDataSource;
    dsPluviometros: TDataSource;
    dtsCultivosID_CULTIVO: TStringField;
    dtsCultivosNOMBRE: TStringField;
    dsCultivos: TDataSource;
    dtsCiclosID_CICLO: TStringField;
    dtsCiclosNOMBRE: TStringField;
    dtsTiposID_TIPO: TStringField;
    dtsTiposNOMBRE: TStringField;
    dtsTiposPRMAX: TFloatField;
    dtsTiposTUMAX: TFloatField;
    dtsTiposTUMIN: TFloatField;
    dtsTiposID_SISTEMA: TStringField;
    dspTipos: TDataSetProvider;
    dsTipos: TDataSource;
    dtsFenologiasID_FENOLOGIA: TStringField;
    dtsFenologiasCLAVE: TStringField;
    dtsFenologiasDGC: TFloatField;
    dtsFenologiasNOMBRE: TStringField;
    dtsFenologiasORDEN: TIntegerField;
    dtsFenologiasID_TIPO: TStringField;
    dtsLluviasID_LLUVIA: TStringField;
    dtsLluviasFECHA: TSQLTimeStampField;
    dtsLluviasID_PLUVIOMETRO: TStringField;
    dtsLluviasPP: TFloatField;
    dtsPluviometrosID_PLUVIOMETRO: TStringField;
    dtsPluviometrosALTITUD: TFloatField;
    dtsPluviometrosALTURA: TFloatField;
    dtsPluviometrosLATITUD: TFloatField;
    dtsPluviometrosLONGITUD: TFloatField;
    dtsPluviometrosNOMBRE: TStringField;
    dtsPluviometrosUBICACION: TStringField;
    dsUsuario: TDataSource;
    dtsSistemasID_SISTEMA: TStringField;
    dtsSistemasNOMBRE: TStringField;
    dtsSubsistemasID_SUBSISTEMA: TStringField;
    dtsSubsistemasMAXIMO: TFloatField;
    dtsSubsistemasNOMBRE: TStringField;
    dtsSubsistemasPROMEDIO: TFloatField;
    dtsSubsistemasUD: TFloatField;
    dtsSubsistemasID_SISTEMA: TStringField;
    dtsSuelosID_SUELO: TStringField;
    dtsSuelosARCILLA: TFloatField;
    dtsSuelosARENA: TFloatField;
    dtsSuelosNOMBRE: TStringField;
    dtsSuelosMO: TFloatField;
    dtsSuelosDA: TFloatField;
    dtsVariedadesID_VARIEDAD: TStringField;
    dtsVariedadesNOMBRE: TStringField;
    dtsVariedadesID_TIPO: TStringField;
    cdsPrediccionesNUMERO_RIEGO: TIntegerField;
    cdsPrediccionesFECHA_RIEGO: TDateTimeField;
    cdsPrediccionesLAMINA: TFloatField;
    cdsPrediccionesDGCA: TFloatField;
    cdsPrediccionesETAPA: TStringField;
    cdsPrediccionesMENSAJE: TStringField;
    dsSiembras: TDataSource;
    dsParcelas: TDataSource;
    dtsEstaciones: TSQLDataSet;
    dspEstaciones: TDataSetProvider;
    dsEstados: TDataSource;
    dsEstaciones: TDataSource;
    dtsParcelasID_PARCELA: TStringField;
    dtsParcelasNOMBRE: TStringField;
    dtsParcelasSUPERFICIE: TFloatField;
    dtsParcelasID_PLUVIOMETRO: TStringField;
    dtsParcelasUBICACION: TStringField;
    dtsSiembrasID_SIEMBRA: TStringField;
    dtsSiembrasID_CULTIVO: TStringField;
    dtsSiembrasFECHA: TSQLTimeStampField;
    dtsSiembrasNOMBRE: TStringField;
    dtsSiembrasRENDIMIENTO: TFloatField;
    dtsSiembrasSUPERFICIE: TFloatField;
    dtsSiembrasID_TIPO: TStringField;
    dtsSiembrasID_PARCELA: TStringField;
    dtsSiembrasID_VARIEDAD: TStringField;
    dtsSiembrasGASTO: TFloatField;
    dtsSiembrasHUMEDAD: TIntegerField;
    dtsSiembrasCOSECHADA: TSmallintField;
    dtsSiembrasID_CICLO: TStringField;
    dtsRiegosID_RIEGO: TStringField;
    dtsParcelasID_ESTACION: TStringField;
    cdsData: TClientDataSet;
    dtsEstadosNOMBRE: TStringField;
    dtsRiegosID_SIEMBRA: TStringField;
    dtsRiegosINI: TSQLTimeStampField;
    dtsRiegosHORAS: TFloatField;
    dtsRiegosAVANCE: TFloatField;
    dtsRiegosGASTO: TFloatField;
    dtsRiegosLAMINA: TFloatField;
    dtsRiegosNOTAS: TBlobField;
    dsEstado: TDataSource;
    dspEstacion: TDataSetProvider;
    dtsEstacion: TSQLDataSet;
    dspEstado: TDataSetProvider;
    dtsEstado: TSQLDataSet;
    dsCultivo: TDataSource;
    dsTipo: TDataSource;
    dspTipo: TDataSetProvider;
    dspVariedad: TDataSetProvider;
    dspCultivo: TDataSetProvider;
    dtsVariedad: TSQLDataSet;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    dtsCultivo: TSQLDataSet;
    StringField9: TStringField;
    StringField10: TStringField;
    dtsTipo: TSQLDataSet;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField7: TFloatField;
    cdsDataDGC: TFloatField;
    cdsDataETO: TFloatField;
    cdsDataETAPA: TStringField;
    cdsDataFECHA: TDateTimeField;
    cdsDataTEMP: TFloatField;
    qryConsultaGeneral: TSQLQuery;
    qryConsultaUsuario: TSQLQuery;
    dspConsultaGeneral: TDataSetProvider;
    dspConsultaUsuario: TDataSetProvider;
    cdsDataACUMULADO: TFloatField;
    qryClima: TSQLQuery;
    dspClima: TDataSetProvider;
    cdsClima: TClientDataSet;
    qrySiembra: TSQLQuery;
    qryTipo: TSQLQuery;
    qryParcela: TSQLQuery;
    qryEstacion: TSQLQuery;
    qryHistorico: TSQLQuery;
    qrySuelo: TSQLQuery;
    qryEtapa: TSQLQuery;
    qryAvg: TSQLQuery;
    qryTipoID_TIPO: TStringField;
    qryTipoORDEN: TIntegerField;
    qryTipoID_SISTEMA: TStringField;
    qryTipoNOMBRE: TStringField;
    qryTipoTUMIN: TFloatField;
    qryTipoTUMAX: TFloatField;
    qryTipoKMAX: TFloatField;
    qryTipoKCO: TFloatField;
    qryTipoXKMAX: TFloatField;
    qryTipoPRO: TFloatField;
    qryTipoPRMAX: TFloatField;
    qryTipoALPHA0: TFloatField;
    qryTipoALPHA1: TFloatField;
    qryTipoALPHA2: TFloatField;
    qryTipoALPHA3: TFloatField;
    qryTipoALPHA4: TFloatField;
    qryTipoID_CULTIVO: TStringField;
    qryTipoALPHA5: TFloatField;
    qrySiembraID_SIEMBRA: TStringField;
    qrySiembraID_CULTIVO: TStringField;
    qrySiembraFECHA: TSQLTimeStampField;
    qrySiembraNOMBRE: TStringField;
    qrySiembraRENDIMIENTO: TFloatField;
    qrySiembraSUPERFICIE: TFloatField;
    qrySiembraID_TIPO: TStringField;
    qrySiembraID_PARCELA: TStringField;
    qrySiembraID_VARIEDAD: TStringField;
    qrySiembraGASTO: TFloatField;
    qrySiembraHUMEDAD: TIntegerField;
    qrySiembraCOSECHADA: TSmallintField;
    qrySiembraID_CICLO: TStringField;
    qryParcelaID_PARCELA: TStringField;
    qryParcelaID_ESTACION: TStringField;
    qryParcelaNOMBRE: TStringField;
    qryParcelaSUPERFICIE: TFloatField;
    qryParcelaID_PLUVIOMETRO: TStringField;
    qryParcelaUBICACION: TStringField;
    qrySueloID_SUELO: TStringField;
    qrySueloARCILLA: TFloatField;
    qrySueloARENA: TFloatField;
    qrySueloNOMBRE: TStringField;
    qrySueloMO: TFloatField;
    qrySueloDA: TFloatField;
    qryUsuario: TSQLQuery;
    dspUser: TDataSetProvider;
    dtsParcelasHA: TFloatField;
    qryParcelaHA: TFloatField;
    dtsSiembrasEFICIENCIA: TFloatField;
    qrySiembraEFICIENCIA: TFloatField;
    qryConsultaGeneralUSUSARIO: TStringField;
    qryConsultaGeneralPARCELA: TStringField;
    qryConsultaGeneralESTACION: TStringField;
    qryConsultaGeneralSIEMBRA: TStringField;
    qryConsultaGeneralFECHA: TSQLTimeStampField;
    qryConsultaGeneralCULTIVO: TStringField;
    qryConsultaGeneralCICLO: TStringField;
    qryConsultaGeneralVARIEDAD: TStringField;
    qryConsultaGeneralTIPO: TStringField;
    qryConsultaGeneralINI: TSQLTimeStampField;
    qryConsultaGeneralHORAS: TFloatField;
    qryConsultaGeneralAVANCE: TFloatField;
    qryConsultaGeneralGASTO: TFloatField;
    qryConsultaGeneralLAMINA: TFloatField;
    qryConsultaUsuarioUSUSARIO: TStringField;
    qryConsultaUsuarioPARCELA: TStringField;
    qryConsultaUsuarioESTACION: TStringField;
    qryConsultaUsuarioSIEMBRA: TStringField;
    qryConsultaUsuarioFECHA: TSQLTimeStampField;
    qryConsultaUsuarioCULTIVO: TStringField;
    qryConsultaUsuarioCICLO: TStringField;
    qryConsultaUsuarioVARIEDAD: TStringField;
    qryConsultaUsuarioTIPO: TStringField;
    qryConsultaUsuarioINI: TSQLTimeStampField;
    qryConsultaUsuarioHORAS: TFloatField;
    qryConsultaUsuarioAVANCE: TFloatField;
    qryConsultaUsuarioGASTO: TFloatField;
    qryConsultaUsuarioLAMINA: TFloatField;
    qryConsultaGeneralRENDIMIENTO: TFloatField;
    qryConsultaUsuarioRENDIMIENTO: TFloatField;
    qryConsultaGeneralUBICACION: TStringField;
    qryConsultaUsuarioUBICACION: TStringField;
    qryUsuarioNOMBRE: TStringField;
    qryUsuarioLOGIN: TStringField;
    qryUsuarioPASSWORD: TStringField;
    qryUsuarioACTIVO: TIntegerField;
    dtsUsuariosNOMBRE: TStringField;
    dtsUsuariosLOGIN: TStringField;
    dtsUsuariosPASSWORD: TStringField;
    dtsUsuariosACTIVO: TIntegerField;
    dtsUsuarioNOMBRE: TStringField;
    dtsUsuarioLOGIN: TStringField;
    dtsUsuarioPASSWORD: TStringField;
    dtsUsuarioACTIVO: TIntegerField;
    dtsUsuariosID_USUARIO: TStringField;
    dtsUsuarioID_USUARIO: TStringField;
    qryUsuarioID_USUARIO: TStringField;
    dtsParcelasID_USUARIO: TStringField;
    dtsPluviometrosID_USUARIO: TStringField;
    qryParcelaID_USUARIO: TStringField;
    dtsTiposORDEN: TIntegerField;
    dtsTiposKMAX: TFloatField;
    dtsTiposKCO: TFloatField;
    dtsTiposXKMAX: TFloatField;
    dtsTiposPRO: TFloatField;
    dtsTiposALPHA0: TFloatField;
    dtsTiposALPHA1: TFloatField;
    dtsTiposALPHA2: TFloatField;
    dtsTiposALPHA3: TFloatField;
    dtsTiposALPHA4: TFloatField;
    dtsTiposALPHA5: TFloatField;
    dtsTiposID_CULTIVO: TStringField;
    cntShared: TSQLConnection;
    dtsEstadosID_ESTADO: TSmallintField;
    dtsEstadoID_ESTADO: TSmallintField;
    dtsParcelasID_ESTADO: TSmallintField;
    qryParcelaID_ESTADO: TSmallintField;
    qryHistoricoID_ESTACION: TIntegerField;
    qryHistoricoFECHA: TDateField;
    qryEstacionID_ESTACION: TIntegerField;
    qryEstacionID_ESTADO: TSmallintField;
    qryEstacionNOMBRE: TStringField;
    qryEstacionACTIVO: TSmallintField;
    dtsEstacionesID_ESTACION: TIntegerField;
    dtsEstacionesID_ESTADO: TSmallintField;
    dtsEstacionesNOMBRE: TStringField;
    dtsEstacionesACTIVO: TSmallintField;
    dtsEstacionID_ESTACION: TIntegerField;
    dtsEstacionID_ESTADO: TSmallintField;
    dtsEstacionNOMBRE: TStringField;
    dtsEstacionACTIVO: TSmallintField;
    qryClimaID_ESTACION: TIntegerField;
    qryClimaFECHA: TDateField;
    qryHistoricoTMED: TFloatField;
    qryHistoricoETO: TFloatField;
    qryClimaTMED: TFloatField;
    qryClimaETO: TFloatField;
    cdsClimaID_ESTACION: TIntegerField;
    cdsClimaFECHA: TDateField;
    cdsClimaTMED: TFloatField;
    cdsClimaETO: TFloatField;
    qryAvgETO: TFloatField;
    qryAvgTMED: TFloatField;
    dtsEstadoNOMBRE: TStringField;
  private
    function GetDgc(temp, tmin, tmax: double): double;
    function GetEtapa(idTipo: string; dgca: double): String;
    function GetHistoricos(etos: TDictionary<String, double>;
      tempList: TList<TTemp>; idEstacion: String; FechaSiembra: TDate; dias: Integer): Boolean;
    procedure CrearPredicciones;
    procedure GetTipo(idTipo: String; var Tumax, Tumin, Alpha0, Alpha1, Xkmax,
      Kmax, Kco, Pro, Prmax, Alpha2, Alpha3, Alpha4, Alpha5: double);
    function GetSiembra(idSiembra: String; var idParcela, idTipo: String; var FechaSiembra: TDate;
      var humedad: double): String;
    function GetParcela(idParcela: String; var idEstacion,
      idPluviometro: String; var ha: double): boolean;
    procedure GetRiegos(idSiembra: String; var FechaUltimoRiego: TDate;
      riegos: TDictionary<String, double>);
    procedure GetLluvias(idPluviometro: String;
      lluvias: TDictionary<String, double>);
  public
    { Public declarations }
    function Ping: boolean;
    function GetConnectionIrriCana: TDBXConnection;
    function GetConnectionIrriGranos: TDBXConnection;
    function GetConnectionIrriNogal: TDBXConnection;
    function GetConnectionIrriPapa: TDBXConnection;
    function GetClima(idTipo, idEstacion: String; ini, fin: TDateTime; tmin, tmax: double): TDataSet; overload;
    function GetFechaCosecha(idSiembra: String): TDateTime;
    function GetPlan(idTipo, idEstacion: String;
      FechaSiembra: TDateTime; ha, humedad: double): TDataSet;
    function GetLamina(idSiembra: String; dias: integer): TDataSet;
  end;

var
  smModulo: TsmModulo;

implementation

uses System.DateUtils, System.Math{, uLog};

const FORMATO = 'dd/mm/yyyy';

{$R *.dfm}
{ TsmModulo }

function TsmModulo.Ping: boolean;
begin
  Exit(cntConexion.Connected);
end;

function TsmModulo.GetConnectionIrriCana: TDBXConnection;
begin
  cntConexion.Close;
  cntConexion.Params.Values['Database']:= 'C:\AppServer\CANA.FDB';
  cntConexion.Open;
  Exit(cntConexion.DBXConnection)
end;

function TsmModulo.GetConnectionIrriGranos: TDBXConnection;
begin
  cntConexion.Close;
  cntConexion.Params.Values['Database']:= 'C:\AppServer\GRANOS.FDB';
  cntConexion.Open;
  Exit(cntConexion.DBXConnection)
end;

function TsmModulo.GetConnectionIrriNogal: TDBXConnection;
begin
  cntConexion.Close;
  cntConexion.Params.Values['Database']:= 'C:\AppServer\NOGAL.FDB';
  cntConexion.Open;
  Exit(cntConexion.DBXConnection)
end;

function TsmModulo.GetConnectionIrriPapa: TDBXConnection;
begin
  cntConexion.Close;
  cntConexion.Params.Values['Database']:= 'C:\AppServer\PAPA.FDB';
  cntConexion.Open;
  Exit(cntConexion.DBXConnection)
end;

function TsmModulo.GetEtapa(idTipo: string; dgca: double): String;
begin
  with qryEtapa do
  begin
    Close;
    ParamByName('ID').Value := idTipo;
    ParamByName('DGCA').Value := dgca;
    Open;
    if Fields[0].IsNull then
      Result := 'Siembra'
    else
      Result := Fields[0].Value;
  end;
end;

function TsmModulo.GetClima(idTipo, idEstacion: String; ini, fin: TDateTime; tmin, tmax: double): TDataSet;
var
  Acumulado: Double;
begin
  with cdsClima do
  begin
    Close;
    Params.ParamByName('ID_ESTACION').AsString:= idEstacion;
    Params.ParamByName('INI').Value := ini;
    Params.ParamByName('FIN').Value := fin;
    Open;
    cdsData.Close;
    cdsData.CreateDataSet;
    cdsData.Open;
    Acumulado:= 0;
    while not Eof do
    begin
      cdsData.Append;
      cdsDataFECHA.Value:= cdsClimaFECHA.AsDateTime;
      cdsDataETO.Value:= cdsClimaETO.Value;
      cdsDataTEMP.Value:= cdsClimaTMED.Value;
      cdsDataDGC.Value:= GetDgc(cdsClimaTMED.Value, tmin, tmax);
      Acumulado:= Acumulado + cdsDataDGC.Value;
      cdsDataACUMULADO.Value:= Acumulado;
      cdsDataETAPA.AsString:= GetEtapa(idTipo, cdsDataACUMULADO.Value);
      cdsData.Post;
      Next;
    end;
  end;
  Exit(cdsData)
end;

function complementaryError(const d: double): double;
var
  t, z, ans: double;
begin
  z := abs(d);
  t := 1.0 / (1.0 + 0.5 * z);
  ans := t * exp(-z * z - 1.26551223 + t *
    (1.00002368 + t * (0.37409196 + t * (0.09678418 + t * (-0.18628806 + t *
    (0.27886807 + t * (-1.13520398 + t * (1.48851587 + t * (-0.82215223 + t *
    0.17087277)))))))));
  if d >= 0.0 then
  begin
    Result := ans;
  end
  else
  begin
    Result := 2.0 - ans;
  end;
end;

function TsmModulo.GetDgc(temp, tmin, tmax: double): double;
begin
  Result := 0;
  if temp > tmax then
    Result := tmax - tmin
  else if temp > tmin then
    Result := temp - tmin;
end;

function TsmModulo.GetFechaCosecha(idSiembra: String): TDateTime;
var
  idTipo: String;
  idParcela: String;
  idEstacion: String;
  Alpha0: double;
  Tumin: double;
  Tumax: double;
  DgcAcumulado: double;
begin
  DgcAcumulado:= 0;
  with qrySiembra do
  begin
    Close;
    ParamByName('ID_SIEMBRA').AsString := idSiembra;
    Open;
    idTipo := qrySiembraID_TIPO.AsString;
    idParcela := qrySiembraID_PARCELA.AsString;
    Result := IncYear(qrySiembraFECHA.AsDateTime, -1);
  end;
  with qryTipo do
  begin
    Close;
    ParamByName('ID_TIPO').AsString := idTipo;
    Open;
    Alpha0 := qryTipoALPHA0.Value;
    Tumin := qryTipoTUMIN.Value;
    Tumax := qryTipoTUMAX.Value;
  end;
  with qryParcela do
  begin
    Close;
    ParamByName('ID_PARCELA').AsString := idParcela;
    Open;
    idEstacion := qryParcelaID_ESTACION.AsString;
  end;
  while (DgcAcumulado < Alpha0) and (Result < Date) do
  begin
    with qryHistorico do
    begin
      Close;
      ParamByName('ID_ESTACION').AsString:= idEstacion;
      ParamByName('FECHA').AsDate:= Result;
      Open;
      DgcAcumulado := DgcAcumulado + GetDgc(qryHistoricoTMED.Value, Tumin, Tumax);
    end;
    Result := IncDay(Result, 1);
  end;
  Result := IncYear(Result, 1);
  Result := IncDay(Result, -1);
end;

function TsmModulo.GetHistoricos(etos: TDictionary<String, double>;
  tempList: TList<TTemp>; idEstacion: String; FechaSiembra: TDate;
  dias: Integer): Boolean;
var
  avgEto: double;
  avgTemp: double;
  etosList: TList<TEto>;
  I: Integer;
  eto: TEto;
begin
  etosList := TList<TEto>.Create;
  try
    with cdsClima do
    begin
      Close;
      Params.ParamByName('ID_ESTACION').AsString:= idEstacion;
      Params.ParamByName('INI').AsDate:= FechaSiembra;
      Params.ParamByName('FIN').AsDate:= Date;
      Open;
      if IsEmpty then
      begin
        etosList.Free;
        Exit(True);
      end;
      while not Eof do
      begin
        etosList.Add(TEto.Create(cdsClimaFECHA.AsDateTime, cdsClimaETO.Value));
        tempList.Add(TTemp.Create(cdsClimaFECHA.AsDateTime, cdsClimaTMED.Value));
        Next;
      end;
    end;
    with qryAvg do
    begin
      Close;
      ParamByName('ID_ESTACION').AsString:= idEstacion;
      ParamByName('INI').AsDate:= IncDay(cdsClimaFECHA.AsDateTime, -7);
      ParamByName('FIN').AsDate:= cdsClimaFECHA.AsDateTime;
      Open;
      avgEto := qryAvgETO.Value;
      avgTemp := qryAvgTMED.Value;
    end;
    for I := 0 to Pred(dias) do
    begin
      etosList.Add(TEto.Create(IncDay(Date, I), avgEto));
      tempList.Add(TTemp.Create(IncDay(Date, I), avgTemp));
    end;
    for eto in etosList do
      etos.AddOrSetValue(FormatDateTime(FORMATO, eto.fecha), eto.valor);
  finally
    for eto in etosList do
      eto.Free;
    etosList.Free;
  end;
  Exit(FALSE);
end;

procedure TsmModulo.GetTipo(idTipo: String; var Tumax, Tumin, Alpha0, Alpha1, Xkmax, Kmax, Kco, Pro, Prmax, Alpha2, Alpha3, Alpha4, Alpha5: double);
begin
  with qryTipo do
  begin
    Close;
    ParamByName('ID_TIPO').AsString := idTipo;
    Open;
    Tumax := qryTipoTUMAX.Value;
    Tumin := qryTipoTUMIN.Value;
    Alpha0 := qryTipoALPHA0.Value;
    Alpha1 := qryTipoALPHA1.Value;
    Xkmax := qryTipoXKMAX.Value;
    Kmax := qryTipoKMAX.Value;
    Kco := qryTipoKCO.Value;
    Pro := qryTipoPRO.Value;
    Prmax := qryTipoPRMAX.Value;
    Alpha2 := qryTipoALPHA2.Value;
    Alpha3 := qryTipoALPHA3.Value;
    Alpha4 := qryTipoALPHA4.Value;
    Alpha5:= qryTipoALPHA5.Value;
  end;
end;

procedure TsmModulo.CrearPredicciones;
begin
  with cdsPredicciones do
  begin
    Close;
    CreateDataSet;
    Open;
    Append;
  end;
end;

function TsmModulo.GetPlan(idTipo, idEstacion: String;
  FechaSiembra: TDateTime; ha, humedad: double): TDataSet;
var
//Variables de historicos
  etos: TDictionary<String, double>;
  tempList: TList<TTemp>;
  temp: TTemp;
//Variables del tipo
  Tumax: double;
  Tumin: double;
  Alpha0: double;
  Alpha1: double;
  Xkmax: double;
  Kmax: double;
  Kco: double;
  Pro: double;
  Prmax: double;
  Alpha2: double;
  Alpha3: double;
  Alpha4: double;
  Alpha5: double;
  HaSiembra: double;
//Variables de cálculo diario
  DgcAcumulado: double;
  defAnterior: double;
  sFecha: String;
  eto: double;
  erfc: double;
  kc: double;
  pr: double;
  f: double;
  dia: TDia;
  riego: integer;
begin
  CrearPredicciones;
  etos := TDictionary<String, double>.Create;
  tempList := TList<TTemp>.Create;
  try
    if GetHistoricos(etos, tempList, idEstacion, fechaSiembra, 0) then
    begin
      cdsPrediccionesMENSAJE.AsString := 'No hay clima';
      cdsPredicciones.Post;
      Exit(cdsPredicciones);
    end;
    GetTipo(idTipo, Tumax, Tumin, Alpha0, Alpha1, Xkmax, Kmax, Kco, Pro, Prmax,
      Alpha2, Alpha3, Alpha4, Alpha5);
    HaSiembra := ha * (humedad / 100);
    DgcAcumulado := 0;
    defAnterior := 0;
//    cdsPrediccionesFECHA_RIEGO.AsDateTime := fechaSiembra;
//    cdsPrediccionesLAMINA.Value := ha * Prmax * 100;
//    cdsPrediccionesDGCA.Value:= 0;
//    cdsPrediccionesETAPA.AsString:= GetEtapa(idTipo, 0);
//    cdsPredicciones.Post;
    for temp in tempList do
    begin
      sFecha := FormatDateTime(FORMATO, temp.fecha);
      if not etos.TryGetValue(sFecha, eto) then
        eto := 0;
      DgcAcumulado := DgcAcumulado + GetDgc(temp.valor, Tumin, Tumax);
      if DgcAcumulado > Alpha0 then
        Break;
      if (ha > 0.12) and (dgcAcumulado >= Alpha5) then
        break;
      erfc := complementaryError(sqr(((DgcAcumulado / Alpha0) - Xkmax) / Alpha1));
      kc := Max(Kmax * erfc, Kco);
      pr := Pro + (Prmax - Pro) * (1 - exp(-(sqr(DgcAcumulado) / sqr(Alpha2))));
      f := Alpha3 - Alpha4 * kc;
      dia := TDia.Create(HaSiembra, kc, pr, f, defAnterior, eto, 0, 0);
//      log('fecha=' + sFecha + ', temp=' + FloatToStr(temp.valor) +
//         ', dgcAcu=' + FloatToStr(dgcAcumulado) +
//         ', eto=' + FloatToStr(eto) + ', erfc=' + FloatToStr(erfc) +
//         ', kc=' + FloatToStr(kc) + ', pr=' + FloatToStr(pr) +
//         ', mdp=' + FloatToStr(f));
      if dia.calcular then
      begin
//        cdsPredicciones.Append;
//        cdsPrediccionesFECHA_RIEGO.AsDateTime := IncDay(temp.fecha, -1);
//        cdsPrediccionesLAMINA.Value := defAnterior / 10;
//        cdsPrediccionesDGCA.Value:= DgcAcumulado;
//        cdsPrediccionesETAPA.AsString:= GetEtapa(idTipo, DgcAcumulado);
//        cdsPredicciones.Post;
        HaSiembra:= ha;
        dia.defAnterior:= 0;
        dia.calcular;
      end;
      defAnterior := dia.defActual;
      dia.Free;
    end;
    riego:= 0;
//    with cdsPredicciones do
//    begin
//      First;
//      while not Eof do
//      begin
//        Edit;
//        Inc(riego);
//        cdsPrediccionesNUMERO_RIEGO.Value:= riego;
//        Post;
//        Next;
//      end;
//    end;
  finally
    etos.Destroy;
    for temp in tempList do
      temp.Free;
    tempList.Free;
  end;
  Exit(cdsPredicciones);
end;

function TsmModulo.GetSiembra(idSiembra: String; var idParcela, idTipo: String; var FechaSiembra: TDate; var humedad: double): String;
begin
  with qrySiembra do
  begin
    Close;
    ParamByName('ID_SIEMBRA').AsString := idSiembra;
    Open;
    if IsEmpty then
    begin
      Exit('Falta configurar Siembras');
    end;
    if qrySiembraFECHA.IsNull then
    begin
      Exit('Falta configurar Fecha de Siembra');
    end;
    if qrySiembraEFICIENCIA.IsNull then
    begin
      Exit('Falta configurar Eficiencia');
    end;
    if qrySiembraID_VARIEDAD.IsNull then
    begin
      Exit('Falta configurar Variedad');
    end;
    if qrySiembraID_TIPO.IsNull then
    begin
      Exit('Falta configurar Tipo');
    end;
    idParcela := qrySiembraID_PARCELA.AsString;
    FechaSiembra:= qrySiembraFECHA.AsDateTime;
    humedad:= qrySiembraHUMEDAD.Value;
    idTipo:= qrySiembraID_TIPO.AsString;
  end;
  Exit(EmptyStr);
end;

function TsmModulo.GetParcela(idParcela: String; var idEstacion, idPluviometro: String; var ha: double): boolean;
begin
  with qryParcela do
  begin
    Close;
    ParamByName('ID_PARCELA').AsString := idParcela;
    Open;
    if qryParcelaID_ESTACION.IsNull then
    begin
      Exit(TRUE);
    end;
    idEstacion := qryParcelaID_ESTACION.AsString;
    idPluviometro:= qryParcelaID_PLUVIOMETRO.AsString;
    ha := qryParcelaHA.Value;
  end;
  Exit(FALSE);
end;

procedure TsmModulo.GetRiegos(idSiembra: String; var FechaUltimoRiego: TDate; riegos: TDictionary<String, double>);
var
  volumen: double;
  laminaBruta: double;
  sFecha: String;
begin
  with dtsRiegos do
  begin
    Close;
    ParamByName('ID_SIEMBRA').AsString := idSiembra;
    Open;
    while not Eof do
    begin
      FechaUltimoRiego := dtsRiegosINI.AsDateTime;
      volumen := dtsRiegosGASTO.Value * dtsRiegosHORAS
        .Value * 3.6;
      laminaBruta :=
        ((volumen / (dtsRiegosAVANCE.Value * 100)) * 10);
      sFecha := FormatDateTime(FORMATO, FechaUltimoRiego);
      riegos.AddOrSetValue(sFecha, laminaBruta);
      Next;
    end;
  end;
end;

procedure TsmModulo.GetLluvias(idPluviometro: String; lluvias: TDictionary<String, double>);
var
  sFecha: String;
begin
  with dtsLluvias do
  begin
    Close;
    ParamByName('ID_PLUVIOMETRO').AsString := idPluviometro;
    Open;
    while not Eof do
    begin
      sFecha := FormatDateTime(FORMATO, dtsLluviasFECHA.AsDateTime);
      lluvias.AddOrSetValue(sFecha, dtsLluviasPP.Value);
      Next;
    end;
  end;
end;

function TsmModulo.GetLamina(idSiembra: String; dias: integer): TDataSet;
var
  mensaje: String;
  idParcela: String;
  idEstacion: String;
  idTipo: String;
  idPluviometro: String;
//Variables de historicos
  etos: TDictionary<String, double>;
  riegos: TDictionary<String, double>;
  lluvias: TDictionary<String, double>;
  tempList: TList<TTemp>;
  temp: TTemp;
  FechaUltimoRiego: TDate;
  fechaSiembra: TDate;
//Variables de la parcela
  ha: double;
//Variables del tipo
  Tumax: double;
  Tumin: double;
  Alpha0: double;
  Alpha1: double;
  Xkmax: double;
  Kmax: double;
  Kco: double;
  Pro: double;
  Prmax: double;
  Alpha2: double;
  Alpha3: double;
  Alpha4: double;
  Alpha5: double;
  humedad: double;
  HaSiembra: double;
//Variables de cálculo diario
  DgcAcumulado: double;
  defAnterior: double;
  sFecha: String;
  eto: double;
  riego: double;
  lluvia: double;
  erfc: double;
  kc: double;
  pr: double;
  f: double;
  dia: TDia;
begin
  CrearPredicciones;
  mensaje:= GetSiembra(idSiembra, idParcela, idTipo, FechaSiembra, humedad);
  if mensaje <> EmptyStr then
  begin
    cdsPrediccionesMENSAJE.AsString := mensaje;
    cdsPredicciones.Post;
    Exit(cdsPredicciones);
  end;
  if GetParcela(idParcela, idEstacion, idPluviometro, ha) then
  begin
    cdsPrediccionesMENSAJE.AsString := 'Falta configurar la estación';
    cdsPredicciones.Post;
    Exit(cdsPredicciones);
  end;
  FechaUltimoRiego := -700000;
  etos := TDictionary<String, double>.Create;
  riegos := TDictionary<String, double>.Create;
  lluvias := TDictionary<String, double>.Create;
  tempList := TList<TTemp>.Create;
  try
    GetRiegos(idSiembra, FechaUltimoRiego, riegos);
    if GetHistoricos(etos, tempList, idEstacion, FechaSiembra, dias) then
    begin
      cdsPrediccionesMENSAJE.AsString := 'No hay clima';
      cdsPredicciones.Post;
      Exit(cdsPredicciones);
    end;
    if FechaUltimoRiego = -700000 then
      FechaUltimoRiego := FechaSiembra
    else
    if dias = 0 then
      riegos.remove(FormatDateTime(FORMATO, FechaUltimoRiego));
    GetLLuvias(idPluviometro, lluvias);
    GetTipo(idTipo, Tumax, Tumin, Alpha0, Alpha1, Xkmax, Kmax, Kco, Pro, Prmax,
      Alpha2, Alpha3, Alpha4, Alpha5);
    HaSiembra := ha * (humedad / 100);
    DgcAcumulado := 0;
    defAnterior := 0;
    for temp in tempList do
    begin
      sFecha := FormatDateTime(FORMATO, temp.fecha);
      if not etos.TryGetValue(sFecha, eto) then
        eto := 0;
      if riegos.TryGetValue(sFecha, riego) then
        HaSiembra := ha
      else
        riego := 0;
      if not lluvias.TryGetValue(sFecha, lluvia) then
        lluvia := 0;
      DgcAcumulado := DgcAcumulado + GetDgc(temp.valor, Tumin, Tumax);
      if DgcAcumulado > Alpha0 then
        Break;
      if (ha > 0.12) and (dgcAcumulado >= Alpha5) then
        Break;
      erfc := complementaryError(sqr(((DgcAcumulado / Alpha0) - Xkmax) / Alpha1));
      kc := Max(Kmax * erfc, Kco);
      pr := Pro + (Prmax - Pro) * (1 - exp(-(sqr(DgcAcumulado) / sqr(Alpha2))));
      f := Alpha3 - Alpha4 * kc;
      dia := TDia.Create(HaSiembra, kc, pr, f, defAnterior, eto, riego, lluvia);
//      log('fecha=' + FormatDateTime('dd/mm/yyyy', temp.fecha) +
//        ', temp=' + FormatFloat('#,##0.00', temp.valor) +
//        ', dgc=' + FormatFloat('#,##0.00', GetDgc(temp.valor, Tumin, Tumax)) +
//        ', dgcAcu=' + FormatFloat('#,##0.00', dgcAcumulado) +
//        ', eto=' + FormatFloat('#,##0.00', eto) +
//        ', erfc=' + FormatFloat('#,##0.00', erfc) +
//        ', kc=' + FormatFloat('#,##0.00', kc) +
//        ', pr=' + FormatFloat('#,##0.00', pr) +
//        ', f=' + FormatFloat('#,##0.00', f));
      if dia.calcular and ((DateOf(temp.fecha) > DateOf(FechaUltimoRiego)) and (dias > 0)) then
      begin
        cdsPrediccionesFECHA_RIEGO.AsDateTime := IncDay(temp.fecha, -1);
        cdsPrediccionesLAMINA.Value := dia.defAnterior;
        cdsPredicciones.Post;
        dia.Free;
        Break;
      end;
      if ((DateOf(temp.fecha) = DateOf(FechaUltimoRiego)) and (dias = 0)) then
      begin
        cdsPrediccionesFECHA_RIEGO.AsDateTime := temp.fecha;
        cdsPrediccionesLAMINA.Value := dia.defActual;
        cdsPredicciones.Post;
        dia.Free;
        Break;
      end;
      defAnterior := dia.defActual;
      dia.Free;
    end;
  finally
    etos.Destroy;
    riegos.Destroy;
    lluvias.Destroy;
    for temp in tempList do
      temp.Free;
    tempList.Free;
  end;
  Exit(cdsPredicciones);
end;

end.
