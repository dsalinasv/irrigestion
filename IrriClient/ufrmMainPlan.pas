unit ufrmMainPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  Data.DB, cxDBData, cxCalendar, cxTextEdit, Datasnap.Provider, frxClass,
  frxDBSet, System.ImageList, Vcl.ImgList, Datasnap.DBClient, dxBar,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxLabel, cxCurrencyEdit, cxDropDownEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox,
  cxRadioGroup, cxScrollBox, dxRibbon;

type
  TfrmMainPlan = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnPlanificar: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton1: TdxBarLargeButton;
    dsPredicciones: TDataSource;
    cdsPredicciones: TClientDataSet;
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA_RIEGO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_RIEGO: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA_BRUTA: TcxGridDBColumn;
    cxGrid1DBTableView1DGCA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1ETAPA: TcxGridDBColumn;
    ScrollBox1: TcxScrollBox;
    cmbCultivo: TcxLookupComboBox;
    cmbTipo: TcxLookupComboBox;
    cmbSuelos: TcxLookupComboBox;
    cmbDia: TcxComboBox;
    cmbMes: TcxComboBox;
    txtHumedad: TcxCurrencyEdit;
    cmbMetodo: TcxComboBox;
    rgMetodo: TcxRadioGroup;
    cxLabel9: TcxLabel;
    cmbSubsistema: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxLabel1: TcxLabel;
    cmbEstacion: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    txtLote: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    txtSuperficie: TcxCurrencyEdit;
    txtGasto: TcxCurrencyEdit;
    cxLabel10: TcxLabel;
    cxGrid1DBTableView1TIEMPO: TcxGridDBColumn;
    dxBarLargeButton2: TdxBarLargeButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    dspPlan: TDataSetProvider;
    cmbEstado: TcxLookupComboBox;
    cxLabel11: TcxLabel;
    cdsPrediccionesNUMERO_RIEGO: TIntegerField;
    cdsPrediccionesFECHA_RIEGO: TDateTimeField;
    cdsPrediccionesLAMINA: TFloatField;
    cdsPrediccionesDGCA: TFloatField;
    cdsPrediccionesETAPA: TStringField;
    cdsPrediccionesMENSAJE: TStringField;
    cdsPrediccionesTIEMPO: TFloatField;
    cdsPrediccionesLAMINA_BRUTA: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure rgMetodoPropertiesChange(Sender: TObject);
    procedure btnPlanificarClick(Sender: TObject);
    procedure cdsPrediccionesCalcFields(DataSet: TDataSet);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure cmbMesPropertiesCloseUp(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
  end;

var
  frmMainPlan: TfrmMainPlan;

implementation

uses
  udmDataPlan, ApplicationVersionHelper, cxGridExportLink;

{$R *.dfm}
{$R devexpress.res}

procedure TfrmMainPlan.btnPlanificarClick(Sender: TObject);
var
  FechaSiembra: TDate;
begin
  Screen.Cursor := crHourglass;
  try
    FechaSiembra:= EncodeDate(StrToInt(cmbMetodo.Text),
        cmbMes.ItemIndex + 1, StrToInt(cmbDia.Text));
    cdsPredicciones.Close;
    cdsPredicciones.Params.ParamByName('idTipo').AsString:= dmData.cdsTipoID_TIPO.AsString;
    cdsPredicciones.Params.ParamByName('idEstacion').AsString:= dmData.cdsEstacionID_ESTACION.AsString;
    cdsPredicciones.Params.ParamByName('fechaSiembra').AsDateTime:= FechaSiembra;
    cdsPredicciones.Params.ParamByName('ha').AsFloat:= dmData.cdsSueloHA.Value;
    cdsPredicciones.Params.ParamByName('humedad').AsFloat:= txtHumedad.Value;
    cdsPredicciones.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMainPlan.cdsPrediccionesCalcFields(DataSet: TDataSet);
const
  FACTOR = 1000 / 36;
begin
  if not cdsPrediccionesLAMINA.IsNull and
     not dmData.cdsSubsistemaMAXIMO.IsNull then
    cdsPrediccionesLAMINA_BRUTA.Value:=
      ((cdsPrediccionesLAMINA.Value) /
      (dmData.cdsSubsistemaMAXIMO.Value / 100));
  cdsPrediccionesTIEMPO.Value:= ((cdsPrediccionesLAMINA_BRUTA.Value *
    txtSuperficie.Value) / txtGasto.Value) * FACTOR;
end;

procedure TfrmMainPlan.cmbMesPropertiesCloseUp(Sender: TObject);
var
  i: byte;
begin
  with cmbDia.Properties.Items do
  begin
    Clear;
    for i := 1 to DaysInAMonth(StrToInt(cmbMetodo.Text), cmbMes.ItemIndex + 1) do
      Add(IntToStr(i));
    cmbDia.ItemIndex:= 0;
  end;
end;

procedure TfrmMainPlan.dxBarLargeButton1Click(Sender: TObject);
begin
  dmData.Exportar(cxGrid1);
end;

procedure TfrmMainPlan.dxBarLargeButton2Click(Sender: TObject);
begin
  with frxReport1 do
  begin
    Script.Variables['Lote']:= txtLote.Text;
    Script.Variables['Superficie']:= txtSuperficie.Text;
    Script.Variables['Gasto']:= txtGasto.Text;
    if PrepareReport then
      ShowPreparedReport;
  end;
end;

procedure TfrmMainPlan.FormShow(Sender: TObject);
begin
  Caption:= Application.Version['FileDescription'] + ' ' +
    Application.Version['FileVersion'];
  rgMetodoPropertiesChange(Self);
  cmbMesPropertiesCloseUp(Self);
end;

procedure TfrmMainPlan.rgMetodoPropertiesChange(Sender: TObject);
var
  i: integer;
begin
  with cmbMetodo.Properties.Items do
  begin
    case rgMetodo.ItemIndex of
      0: begin
        Clear;
        for i := 1 to 10 do
          Add(IntToStr(YearOf(Now) - i));
      end;
      1: begin
        Clear;
        for i := 2 to 10 do
          Add(IntToStr(i));
      end;
      2: begin
        Clear;
        Add('Método X');
        Add('Método Y');
        Add('Método Z');
      end;
    end;
  end;
  cmbMetodo.ItemIndex:= 0
end;

initialization
  RegisterClass(TfrmMainPlan);

end.
