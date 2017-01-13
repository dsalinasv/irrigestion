unit MasterDetail;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, Data.Bind.GenData,
  FMX.Bind.GenData, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.ObjectScope, FMX.Objects, FMX.StdCtrls,
  FMX.ListView, FMX.Layouts, FMX.MultiView,
  FMX.Memo, FMX.Bind.Navigator, System.Actions, FMX.ActnList, Data.DBXDataSnap,
  IPPeerClient, Data.DBXCommon, Data.DbxHTTPLayer, Data.Bind.DBScope,
  Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ScrollBox,
  FMX.Controls.Presentation, Fmx.Bind.Grid, Data.Bind.Grid, FMX.Grid,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D, Data.FMTBcd,
  Datasnap.Provider;

type
  TMasterDetailForm = class(TForm)
    MultiView1: TMultiView;
    Layout1: TLayout;
    ListView1: TListView;
    MasterToolbar: TToolBar;
    MasterLabel: TLabel;
    DetailToolbar: TToolBar;
    DetailLabel: TLabel;
    MasterButton: TSpeedButton;
    Layout3: TLayout;
    ActionList: TActionList;
    LiveBindingsBindNavigateNext1: TFMXBindNavigateNext;
    LiveBindingsBindNavigatePrior1: TFMXBindNavigatePrior;
    btnUp: TSpeedButton;
    btnDown: TSpeedButton;
    bsParcelas: TBindSourceDB;
    blListado: TBindingsList;
    bsUsuario: TBindSourceDB;
    bsSiembras: TBindSourceDB;
    Layout3D1: TLayout3D;
    bsRiegos: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    grdRiegos: TGrid;
    LinkGridToDataSourcebsRiegos: TLinkGridToDataSource;
    Layout2: TLayout;
    lblNombre: TLabel;
    lblFecha: TLabel;
    lblCultivo: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    ToolBar1: TToolBar;
    btnPronosticar: TSpeedButton;
    actPronosticar: TAction;
    actRecalcular: TAction;
    LiveBindingsBindNavigateDelete1: TFMXBindNavigateDelete;
    btnRecalcular: TSpeedButton;
    btnEliminar: TSpeedButton;
    btnEditar: TSpeedButton;
    actEditar: TAction;
    cdsRiego: TClientDataSet;
    cdsRiegoID_RIEGO: TStringField;
    cdsRiegoID_SIEMBRA: TStringField;
    cdsRiegoINI: TSQLTimeStampField;
    cdsRiegoHORAS: TFloatField;
    cdsRiegoGASTO: TFloatField;
    cdsRiegoAVANCE: TFloatField;
    cdsRiegoLAMINA: TFloatField;
    cdsRiegoVOLUMEN: TFloatField;
    cdsRiegoLAMINA_BRUTA: TFloatField;
    cdsSiembra: TClientDataSet;
    cdsSiembraID_SIEMBRA: TStringField;
    cdsSiembraID_CULTIVO: TStringField;
    cdsSiembraFECHA: TSQLTimeStampField;
    cdsSiembraNOMBRE: TStringField;
    cdsSiembraRENDIMIENTO: TFloatField;
    cdsSiembraSUPERFICIE: TFloatField;
    cdsSiembraID_TIPO: TStringField;
    cdsSiembraID_PARCELA: TStringField;
    cdsSiembraID_VARIEDAD: TStringField;
    cdsSiembraGASTO: TFloatField;
    cdsSiembraHUMEDAD: TIntegerField;
    cdsSiembraCOSECHADA: TSmallintField;
    cdsSiembraEFICIENCIA: TFloatField;
    cdsSiembraID_CICLO: TStringField;
    cdsSiembradtsRiegos: TDataSetField;
    cdsSiembraCULTIVO: TStringField;
    cdsParcela: TClientDataSet;
    cdsParcelaID_PARCELA: TStringField;
    cdsParcelaID_DISTRITO: TStringField;
    cdsParcelaID_ESTACION: TStringField;
    cdsParcelaNOMBRE: TStringField;
    cdsParcelaSUPERFICIE: TFloatField;
    cdsParcelaID_PLUVIOMETRO: TStringField;
    cdsParcelaUBICACION: TStringField;
    cdsParcelaHA: TFloatField;
    cdsParcelaID_USUARIO: TStringField;
    cdsParceladtsSiembras: TDataSetField;
    cdsCultivo: TClientDataSet;
    cdsCultivoID_CULTIVO: TStringField;
    cdsCultivoNOMBRE: TStringField;
    cdsUsuario: TClientDataSet;
    cdsUsuarioID_USUARIO: TStringField;
    cdsUsuarioNOMBRE: TStringField;
    cdsUsuarioLOGIN: TStringField;
    cdsUsuarioPASSWORD: TStringField;
    cdsUsuarioACTIVO: TIntegerField;
    cdsUsuariodtsParcelas: TDataSetField;
    cdsUsuariodtsPluviometros: TDataSetField;
    ssmLamina: TSqlServerMethod;
    dspLamina: TDataSetProvider;
    cdsLamina: TClientDataSet;
    cdsLaminaNUMERO_RIEGO: TIntegerField;
    cdsLaminaFECHA_RIEGO: TDateTimeField;
    cdsLaminaLAMINA: TFloatField;
    cdsLaminaDGCA: TFloatField;
    cdsLaminaETAPA: TStringField;
    cdsLaminaMENSAJE: TStringField;
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure actPronosticarExecute(Sender: TObject);
    procedure actRecalcularExecute(Sender: TObject);
    procedure actRecalcularUpdate(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actEditarUpdate(Sender: TObject);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsRiegoCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function GetId: String;
    procedure RevisarCambios;
  public
    { Public declarations }
    procedure Login;
  end;

var
  MasterDetailForm: TMasterDetailForm;

implementation

{$R *.fmx}

uses Data;

procedure TMasterDetailForm.RevisarCambios;
begin
  if cdsParcela.State in dsEditModes then
  begin
    MessageDlg('¿Desea guardar los cambios?', TMsgDlgType.mtInformation, mbYesNo, 0,
      procedure(const AResult: TModalResult)
      begin
        case AResult of
          mrYes: cdsParcela.ApplyUpdates(0);
          mrNo: cdsParcela.Cancel;
        end;
      end);
  end;
end;

procedure TMasterDetailForm.actEditarExecute(Sender: TObject);
begin
  case grdRiegos.ColumnIndex of
    0: InputBox('Edición', 'Inicio', cdsRiegoINI.AsString,
        procedure(const AResult: TModalResult; const AValue: string)
        begin
          cdsRiego.Edit;
          case AResult of
            mrOk: cdsRiegoINI.AsString:= AValue;
          end;
          cdsParcela.ApplyUpdates(0);
        end);
    1: InputBox('Edición', 'Horas', cdsRiegoHORAS.AsString,
        procedure(const AResult: TModalResult; const AValue: string)
        begin
          cdsRiego.Edit;
          case AResult of
            mrOk: cdsRiegoHORAS.AsString:= AValue;
          end;
          cdsParcela.ApplyUpdates(0);
        end);
    2: InputBox('Edición', 'Gasto', cdsRiegoGASTO.AsString,
        procedure(const AResult: TModalResult; const AValue: string)
        begin
          cdsRiego.Edit;
          case AResult of
            mrOk: cdsRiegoGASTO.AsString:= AValue;
          end;
          cdsParcela.ApplyUpdates(0);
        end);
  end;

end;

procedure TMasterDetailForm.actEditarUpdate(Sender: TObject);
begin
  actEditar.Enabled:= cdsRiego.RecordCount > 0;
end;

procedure TMasterDetailForm.actPronosticarExecute(Sender: TObject);
var
  lamina: double;
  laminaBruta: double;
const
  FACTOR = 1000 / 36;
begin
  RevisarCambios;
  try
    cdsLamina.Close;
    cdsLamina.Params.ParamByName('idSiembra').AsString:= cdsSiembraID_SIEMBRA.AsString;
    cdsLamina.Params.ParamByName('dias').AsInteger:= 365;
    cdsLamina.Open;
    lamina:= cdsLaminaLAMINA.Value;
    if cdsLaminaMENSAJE.AsString = EmptyStr then
      if lamina > 0 then
      begin
        cdsRiego.Append;
        cdsRiegoINI.AsDateTime:= cdsLaminaFECHA_RIEGO.AsDateTime;
        cdsRiegoLAMINA.Value:= lamina / 10;
        laminaBruta:= (cdsRiegoLAMINA.Value /
          cdsSiembraEFICIENCIA.Value) * 100;
        cdsRiegoHORAS.Value:=
          (laminaBruta * cdsSiembraSUPERFICIE.Value) /
          cdsSiembraGASTO.Value * FACTOR;
        cdsRiegoAVANCE.Value:= cdsSiembraSUPERFICIE.Value;
        cdsRiegoGASTO.Value:= cdsSiembraGASTO.Value;
        cdsParcela.ApplyUpdates(0);
      end
      else
        ShowMessage('No existen suficientes datos para el calculo')
    else
      ShowMessage(cdsLaminaMENSAJE.AsString);
  finally

  end;
end;

procedure TMasterDetailForm.actRecalcularExecute(Sender: TObject);
var
  lamina: double;
  laminaBruta: double;
const
  FACTOR = 1000 / 36;
begin
  RevisarCambios;
  try
    cdsLamina.Close;
    cdsLamina.Params.ParamByName('idSiembra').AsString:= cdsSiembraID_SIEMBRA.AsString;
    cdsLamina.Params.ParamByName('dias').AsInteger:= 0;
    cdsLamina.Open;
    lamina:= cdsLaminaLAMINA.Value;
    if cdsLaminaMENSAJE.AsString = EmptyStr then
      if lamina > 0 then
      begin
        cdsRiego.Last;
        if cdsRiego.State in dsEditModes then cdsRiego.Post;
        cdsRiego.Edit;
        cdsRiegoLAMINA.Value:= lamina / 10;
        laminaBruta:= (cdsRiegoLAMINA.Value /
          cdsSiembraEFICIENCIA.Value) * 100;
        cdsRiegoHORAS.Value:=
          (laminaBruta * cdsSiembraSUPERFICIE.Value) /
          cdsSiembraGASTO.Value * FACTOR;
        cdsRiegoAVANCE.Value:= cdsSiembraSUPERFICIE.Value;
        cdsRiegoGASTO.Value:= cdsSiembraGASTO.Value;
        cdsParcela.ApplyUpdates(0);
      end
      else
        ShowMessage('No existen suficientes datos para el calculo')
    else
      ShowMessage(cdsLaminaMENSAJE.AsString);
  finally

  end;
end;

procedure TMasterDetailForm.actRecalcularUpdate(Sender: TObject);
begin
  actRecalcular.Enabled:= cdsRiego.RecordCount > 0;
end;

procedure TMasterDetailForm.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  MultiView1.HideMaster;
end;

function TMasterDetailForm.GetId: String;
var
  Guid : TGuid;
begin
  CreateGuid(Guid);
  Exit(GuidToString(Guid))
end;

procedure TMasterDetailForm.cdsNewRecord(DataSet: TDataSet);
begin
  (DataSet as TClientDataSet).FieldByName(
    StringReplace(DataSet.Name, 'cds', 'ID_', [])).AsString := GetId;
end;

procedure TMasterDetailForm.cdsAfterPost(DataSet: TDataSet);
begin
  dmData.cntDatos.Open;
  (DataSet as TClientDataSet).ApplyUpdates(0);
end;

procedure TMasterDetailForm.cdsRiegoCalcFields(DataSet: TDataSet);
begin
  if (not cdsRiegoINI.IsNull) and
    (not cdsRiegoHORAS.IsNull) then
  begin
    if (not cdsRiegoGASTO.IsNull) and
      (not cdsRiegoAVANCE.IsNull) and
      (cdsRiegoAVANCE.Value > 0) then
    begin
      cdsRiegoVOLUMEN.Value:= cdsRiegoGASTO.Value *
        cdsRiegoHORAS.Value * 3.6;
      cdsRiegoLAMINA_BRUTA.Value:= cdsRiegoVOLUMEN.Value /
        (cdsRiegoAVANCE.Value * 100);
    end;
  end;
end;

procedure TMasterDetailForm.Login;
begin
  cdsUsuario.Close;
  cdsUsuario.Params.ParamByName('ID_USUARIO').AsString:= dmData.cdsUserID_USUARIO.Value;
  cdsUsuario.Open;
end;

procedure TMasterDetailForm.FormCreate(Sender: TObject);
begin
  cdsCultivo.Open;
end;

end.
