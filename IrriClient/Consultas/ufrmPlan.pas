unit ufrmPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, dxRibbonForm,
  Dialogs, DateUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalendar, cxTextEdit,
  Data.FMTBcd, Datasnap.Provider, Data.SqlExpr, Datasnap.DBClient, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, dxRibbonStatusBar;

type
  TfrmPlan = class(TForm)
    dsPredicciones: TDataSource;
    cdsPredicciones: TClientDataSet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_RIEGO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_RIEGO: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA_BRUTA: TcxGridDBColumn;
    cxGrid1DBTableView1DGCA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ETAPA: TcxGridDBColumn;
    cxGrid1DBTableView1TIEMPO: TcxGridDBColumn;
    ssmPlan: TSqlServerMethod;
    dspPlan: TDataSetProvider;
    cdsPrediccionesNUMERO_RIEGO: TIntegerField;
    cdsPrediccionesFECHA_RIEGO: TDateTimeField;
    cdsPrediccionesLAMINA: TFloatField;
    cdsPrediccionesDGCA: TFloatField;
    cdsPrediccionesETAPA: TStringField;
    cdsPrediccionesMENSAJE: TStringField;
    cdsPrediccionesTIEMPO: TFloatField;
    cdsPrediccionesLAMINA_BRUTA: TFloatField;
    procedure cdsPrediccionesCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
  end;

var
  frmPlan: TfrmPlan;

implementation

uses
  udmData;

{$R *.dfm}

procedure TfrmPlan.cdsPrediccionesCalcFields(DataSet: TDataSet);
const
  FACTOR = 1000 / 36;
begin
  if not cdsPrediccionesLAMINA.IsNull and
     not dmData.cdsSubsistemaMAXIMO.IsNull then
    cdsPrediccionesLAMINA_BRUTA.Value:=
      ((cdsPrediccionesLAMINA.Value) /
      (dmData.cdsSubsistemaMAXIMO.Value / 100));
  cdsPrediccionesTIEMPO.Value:= ((cdsPrediccionesLAMINA_BRUTA.Value *
    dmData.cdsSiembraSUPERFICIE.Value) / dmData.cdsSiembraGASTO.Value) * FACTOR;
end;

procedure TfrmPlan.FormShow(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  try
    cdsPredicciones.Close;
    cdsPredicciones.Params.ParamByName('idTipo').AsString:= dmData.cdsTipoID_TIPO.AsString;
    cdsPredicciones.Params.ParamByName('idEstacion').AsString:= dmData.cdsEstacionID_ESTACION.AsString;
    cdsPredicciones.Params.ParamByName('fechaSiembra').AsDateTime:= IncYear(dmData.cdsSiembraFECHA.AsDateTime, -1);
    cdsPredicciones.Params.ParamByName('ha').AsFloat:= dmData.cdsSueloHA.Value;
    cdsPredicciones.Params.ParamByName('humedad').AsFloat:= dmData.cdsSiembraHUMEDAD.Value;
    cdsPredicciones.Open;
    cdsPredicciones.First;
    dmData.cdsRiego.First;
    while not dmData.cdsRiego.Eof do
    begin
      cdsPredicciones.Edit;
      cdsPrediccionesFECHA_RIEGO.AsDateTime:= dmData.cdsRiegoINI.AsDateTime;
      cdsPrediccionesLAMINA.Value:= dmData.cdsRiegoLAMINA.Value;
      cdsPrediccionesMENSAJE.Value:= EmptyStr;
      cdsPredicciones.Next;
      dmData.cdsRiego.Next;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

initialization
  RegisterClass(TfrmPlan);

end.
