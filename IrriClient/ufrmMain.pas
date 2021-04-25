unit ufrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, ActnList, DB, cxControls, cxGraphics, cxLookAndFeels,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, cxTextEdit, cxDBLookupComboBox, cxCalendar, cxButtonEdit,
  cxCheckBox, cxMemo, cxContainer, Vcl.Menus, cxClasses, Vcl.StdCtrls,
  cxButtons, cxGroupBox, cxDBEdit, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, Vcl.ImgList, Vcl.DBActns, System.Actions, dxBar, dxRibbon,
  cxScrollBox, cxGridLevel, cxGridCustomView, cxGrid, cxPC, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, System.ImageList, dxStatusBar, dxRibbonStatusBar,
  cxLookAndFeelPainters, Vcl.ExtCtrls,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

type
  TfrmMain = class(TfrmCatalogo)
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxsAlerta: TcxStyle;
    actAgregar: TAction;
    actCosecha: TAction;
    actPronosticar: TAction;
    actRecalcular: TAction;
    actConsultar: TAction;
    barManagerBar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    actHA: TAction;
    actSubsistema: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    actEnviar: TAction;
    actPlan: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    actRiegos: TAction;
    actSalir: TAction;
    barManagerBar2: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    actPluviometros: TAction;
    Panel1: TPanel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    txtSuperficie: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    txtUbicacion: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxLabel5: TcxLabel;
    cmbEstados: TcxDBLookupComboBox;
    Label2: TcxLabel;
    cmbEstaciones: TcxDBLookupComboBox;
    Label3: TcxLabel;
    cxButton1: TcxButton;
    cmbPluviometros: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    txtHA: TcxDBTextEdit;
    btnHA: TcxButton;
    Panel3: TPanel;
    DBGrid2: TcxGrid;
    DBGrid2DBTableView1: TcxGridDBTableView;
    DBGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    DBGrid2DBTableView1FECHA: TcxGridDBColumn;
    DBGrid2DBTableView1SUPERFICIE: TcxGridDBColumn;
    DBGrid2DBTableView1GASTO: TcxGridDBColumn;
    DBGrid2DBTableView1HUMEDAD: TcxGridDBColumn;
    DBGrid2DBTableView1ID_CICLO: TcxGridDBColumn;
    DBGrid2DBTableView1RENDIMIENTO: TcxGridDBColumn;
    DBGrid2DBTableView1COSECHADA: TcxGridDBColumn;
    DBGrid2DBTableView2: TcxGridDBTableView;
    DBGrid2DBTableView2INI: TcxGridDBColumn;
    DBGrid2DBTableView2HORAS: TcxGridDBColumn;
    DBGrid2DBTableView2GASTO: TcxGridDBColumn;
    DBGrid2DBTableView2AVANCE: TcxGridDBColumn;
    DBGrid2DBTableView2VOLUMEN: TcxGridDBColumn;
    DBGrid2DBTableView2LAMINA: TcxGridDBColumn;
    DBGrid2DBTableView2LAMINA_BRUTA: TcxGridDBColumn;
    DBGrid2DBTableView2EA: TcxGridDBColumn;
    DBGrid2DBTableView2NOTAS: TcxGridDBColumn;
    DBGrid2Level1: TcxGridLevel;
    DBGrid2Level2: TcxGridLevel;
    Panel2: TPanel;
    cmbVariedad: TcxDBLookupComboBox;
    cxLabel17: TcxLabel;
    txtEficiencia: TcxDBButtonEdit;
    cxLabel16: TcxLabel;
    cmbTipo: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cmbCultivo: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    procedure DBGrid3DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure actRecalcularUpdate(Sender: TObject);
    procedure actRecalcularExecute(Sender: TObject);
    procedure actPronosticarExecute(Sender: TObject);
    procedure actCosechaExecute(Sender: TObject);
    procedure actConsultarExecute(Sender: TObject);
    procedure actAgregarExecute(Sender: TObject);
    procedure btnCalcularHAClick(Sender: TObject);
    procedure actHAExecute(Sender: TObject);
    procedure actSubsistemaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actEnviarExecute(Sender: TObject);
    procedure actPlanExecute(Sender: TObject);
    procedure actRiegosExecute(Sender: TObject);
    procedure actSalirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actPluviometrosExecute(Sender: TObject);
  private
    procedure RevisarCambios;
  end;

var
  frmMain: TfrmMain;

implementation

uses udmData, cxLookupDBGrid, ufrmClima, ufrmSubsistema, ufrmCorreos,
  ufrmRiegos, ufrmLogin, ufrmPluviometros, ufrmEstratos, ufrmPlan;

{$R *.dfm}

procedure TfrmMain.actAgregarExecute(Sender: TObject);
var
  lamina: String;
  laminaBruta: double;
const
  FACTOR = 1000 / 36;
begin
  RevisarCambios;
  dmData.cdsRiego.Append;
  lamina:= FloatToStr((dmData.cdsParcelaHA.Value) * dmData.cdsTipoPRMAX.Value * 100);
  lamina:= InputBox('Mensaje', 'Lamina', lamina);
  dmData.cdsRiegoAVANCE.Value:= dmData.cdsSiembraSUPERFICIE.Value;
  dmData.cdsRiegoGASTO.Value:= dmData.cdsSiembraGASTO.Value;
  dmData.cdsRiegoLAMINA.Value:= StrToFloat(lamina);
  laminaBruta:= (dmData.cdsRiegoLAMINA.Value /
    dmData.cdsSiembraEFICIENCIA.Value) * 100;
  dmData.cdsRiegoHORAS.Value:=
    (laminaBruta * dmData.cdsSiembraSUPERFICIE.Value) /
    dmData.cdsSiembraGASTO.Value * FACTOR;
end;

procedure TfrmMain.actConsultarExecute(Sender: TObject);
begin
  with TfrmClima.Create(Self) do
  try
    ShowModal;
  finally
    Free
  end;
end;

procedure TfrmMain.actRiegosExecute(Sender: TObject);
begin
  with TfrmRiegos.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actCosechaExecute(Sender: TObject);
var
  fecha: TDateTime;
begin
  RevisarCambios;
  Screen.Cursor := crHourglass;
  try
    with dmData.ssmFechaCosecha do
    begin
      ParamByName('idSiembra').AsString:= dmData.cdsSiembraID_SIEMBRA.AsString;
      ExecuteMethod;
      fecha:= Params[1].AsDateTime;
    end;
    ShowMessage('Fecha estimanda de cosecha: ' + FormatDateTime('dd/mm/yyyy', fecha))
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.actEnviarExecute(Sender: TObject);
begin
  with TfrmCorreos.Create(Self) do
  try
    Mensaje.Clear;
    Mensaje.Subject:= 'Riego';
    Mensaje.Body.Add('Parcela: ' + dmData.cdsParcelaNOMBRE.AsString);
    Mensaje.Body.Add('Siembra: ' + dmData.cdsSiembraNOMBRE.AsString);
    Mensaje.Body.Add('Inicio: ' + dmData.cdsRiegoINI.AsString);
    Mensaje.Body.Add('Horas: ' + dmData.cdsRiegoHORAS.AsString);
    Mensaje.Body.Add('Gasto: ' + dmData.cdsRiegoGASTO.AsString);
    Mensaje.Body.Add('Superficie: ' + dmData.cdsRiegoAVANCE.AsString);
    Mensaje.Body.Add('Volumen: ' + dmData.cdsRiegoVOLUMEN.AsString);
    Mensaje.Body.Add('Lamina neta: ' + dmData.cdsRiegoLAMINA.AsString);
    Mensaje.Body.Add('Lamina bruta: ' + dmData.cdsRiegoLAMINA_BRUTA.AsString);
    Mensaje.Body.Add('Eficiencia: ' + dmData.cdsRiegoEA.AsString);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actHAExecute(Sender: TObject);
begin
  with TfrmEstratos.Create(Self) do
  try
    ShowModal;
  finally
    Free
  end;
end;

procedure TfrmMain.actPlanExecute(Sender: TObject);
begin
  with TfrmPlan.Create(Self) do
  try
    ShowModal
  finally
    Free
  end;
end;

procedure TfrmMain.actPluviometrosExecute(Sender: TObject);
begin
  with TfrmPluviometros.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.actPronosticarExecute(Sender: TObject);
var
  lamina: double;
  laminaBruta: double;
const
  FACTOR = 1000 / 36;
begin
  RevisarCambios;
  Screen.Cursor := crHourglass;
  try
    dmData.cdsLamina.Close;
    dmData.cdsLamina.Params.ParamByName('idSiembra').AsString:= dmData.cdsSiembraID_SIEMBRA.AsString;
    dmData.cdsLamina.Params.ParamByName('dias').AsInteger:= 365;
    dmData.cdsLamina.Open;
    lamina:= dmData.cdsLaminaLAMINA.Value;
    if dmData.cdsLaminaMENSAJE.AsString = EmptyStr then
      if lamina > 0 then
      begin
        dmData.cdsRiego.Append;
        dmData.cdsRiegoINI.AsDateTime:= dmData.cdsLaminaFECHA_RIEGO.AsDateTime;
        dmData.cdsRiegoLAMINA.Value:= lamina / 10;
        laminaBruta:= (dmData.cdsRiegoLAMINA.Value /
          dmData.cdsSiembraEFICIENCIA.Value) * 100;
        dmData.cdsRiegoHORAS.Value:=
          (laminaBruta * dmData.cdsSiembraSUPERFICIE.Value) /
          dmData.cdsSiembraGASTO.Value * FACTOR;
        dmData.cdsRiegoAVANCE.Value:= dmData.cdsSiembraSUPERFICIE.Value;
        dmData.cdsRiegoGASTO.Value:= dmData.cdsSiembraGASTO.Value;
//        dmData.cdsSiembra.ApplyUpdates(0);
      end
      else
        ShowMessage('No existen suficientes datos para el calculo')
    else
      ShowMessage(dmData.cdsLaminaMENSAJE.AsString);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.actRecalcularExecute(Sender: TObject);
var
  lamina: double;
  laminaBruta: double;
const
  FACTOR = 1000 / 36;
begin
  RevisarCambios;
  Screen.Cursor := crHourglass;
  try
    dmData.cdsLamina.Close;
    dmData.cdsLamina.Params.ParamByName('idSiembra').AsString:= dmData.cdsSiembraID_SIEMBRA.AsString;
    dmData.cdsLamina.Params.ParamByName('dias').AsInteger:= 0;
    dmData.cdsLamina.Open;
    lamina:= dmData.cdsLaminaLAMINA.Value;
    if dmData.cdsLaminaMENSAJE.AsString = EmptyStr then
      if lamina > 0 then
      begin
        dmData.cdsRiego.Last;
        if dmData.cdsRiego.State in dsEditModes then dmData.cdsRiego.Post;
        dmData.cdsRiego.Edit;
        dmData.cdsRiegoLAMINA.Value:= lamina / 10;
        laminaBruta:= (dmData.cdsRiegoLAMINA.Value /
          dmData.cdsSiembraEFICIENCIA.Value) * 100;
        dmData.cdsRiegoHORAS.Value:=
          (laminaBruta * dmData.cdsSiembraSUPERFICIE.Value) /
          dmData.cdsSiembraGASTO.Value * FACTOR;
        dmData.cdsRiegoAVANCE.Value:= dmData.cdsSiembraSUPERFICIE.Value;
        dmData.cdsRiegoGASTO.Value:= dmData.cdsSiembraGASTO.Value;
//        dmData.cdsSiembra.ApplyUpdates(0);
      end
      else
        ShowMessage('No existen suficientes datos para el calculo')
    else
      ShowMessage(dmData.cdsLaminaMENSAJE.AsString);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMain.actRecalcularUpdate(Sender: TObject);
begin
  actRecalcular.Enabled:= dmData.cdsRiego.RecordCount > 0;
end;

procedure TfrmMain.actSalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.actSubsistemaExecute(Sender: TObject);
begin
  with TfrmSubsistema.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmMain.btnCalcularHAClick(Sender: TObject);
begin
  dmData.cdsParcela.Edit;
  dmData.cdsParcelaHA.Value:= dmData.cdsSueloHA.Value;
end;

procedure TfrmMain.DBGrid3DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var
  AColumn1: TcxCustomGridTableItem;
  AColumn2: TcxCustomGridTableItem;
begin
  AColumn1 := (Sender as TcxGridDBTableView).GetColumnByFieldName('LAMINA');
  AColumn2 := (Sender as TcxGridDBTableView).GetColumnByFieldName('LAMINA_BRUTA');
  if ARecord.Values[AColumn1.Index] > ARecord.Values[AColumn2.Index] then
    AStyle := cxsAlerta;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Show;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  cmbTipo.DroppedDown:= True;
  cmbTipo.DroppedDown:= False;
end;

procedure TfrmMain.RevisarCambios;
var
  Res: Integer;
begin
  if dmData.cdsParcela.State in dsEditModes then
  begin
    Res:= MessageBox(0, '¿Desea guardar los cambios?',
      'Advertencia', MB_ICONINFORMATION or MB_YESNO);
    case Res of
      IDYES: dmData.cdsParcela.ApplyUpdates(0);
      IDNO: dmData.cdsParcela.Cancel;
    end
  end;
end;

end.
