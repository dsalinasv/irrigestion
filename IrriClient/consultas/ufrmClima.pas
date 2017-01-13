unit ufrmClima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ufrmBase,
  Dialogs, DateUtils, Generics.Collections, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxRibbonSkins,
  dxRibbonCustomizationForm, cxCheckBox, System.ImageList, Vcl.ImgList, dxBar,
  cxBarEditItem, cxClasses, dxRibbon, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxLabel, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxScrollBox;

type
  TfrmClima = class(TfrmBase)
    ScrollBox1: TcxScrollBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series0: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series2: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series3: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series4: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series5: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series6: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series7: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series8: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series9: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series10: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series11: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series12: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series13: TcxGridDBChartSeries;
    cxGrid1DBChartView1Series14: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    txtTumin: TcxDBTextEdit;
    txtTumax: TcxDBTextEdit;
    dtpFinal: TcxDateEdit;
    dtpInicial: TcxDateEdit;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1DGC: TcxGridDBColumn;
    cxGrid1DBTableView1ACUMULADO: TcxGridDBColumn;
    cxGrid1DBTableView1ETAPA: TcxGridDBColumn;
    cxGrid1DBTableView1ETO: TcxGridDBColumn;
    cxGrid1DBTableView1TEMP: TcxGridDBColumn;
    dxBarManager1Bar2: TdxBar;
    chkFecha: TcxBarEditItem;
    chkEto: TcxBarEditItem;
    chkTemp: TcxBarEditItem;
    chkDGC: TcxBarEditItem;
    chkAcumulado: TcxBarEditItem;
    chkEtapa: TcxBarEditItem;
    dxBarLargeButton3: TdxBarLargeButton;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure chkFechaPropertiesChange(Sender: TObject);
    procedure chkEtoPropertiesChange(Sender: TObject);
    procedure chkTempPropertiesChange(Sender: TObject);
    procedure chkDGCPropertiesChange(Sender: TObject);
    procedure chkAcumuladoPropertiesChange(Sender: TObject);
    procedure chkEtapaPropertiesChange(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClima: TfrmClima;

implementation

uses
  udmData, ufrmCorreos;

{$R *.dfm}

procedure TfrmClima.chkAcumuladoPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1ACUMULADO.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.chkDGCPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1DGC.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.chkEtapaPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1ETAPA.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.chkEtoPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1ETO.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.chkFechaPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1FECHA.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.chkTempPropertiesChange(Sender: TObject);
begin
  cxGrid1DBTableView1TEMP.Visible:= (Sender as TcxCheckBox).Checked;
end;

procedure TfrmClima.dxBarLargeButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  try
    if dtpInicial.Date = -700000 then
    begin
      ShowMessage('Debe seleccionar una fecha inicial');
      Exit;
    end;
    if dtpFinal.Date = -700000 then
    begin
      ShowMessage('Debe seleccionar una fecha final');
      Exit;
    end;
  dmData.ConsultarClima(dtpInicial.Date, dtpFinal.Date);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmClima.dxBarLargeButton2Click(Sender: TObject);
begin
  dmData.Exportar(cxGrid1);
end;

procedure TfrmClima.dxBarLargeButton3Click(Sender: TObject);
begin
  with TfrmCorreos.Create(Self) do
  try
    Mensaje.Clear;
    Mensaje.Subject:= 'Clima';
    Mensaje.Body.Add('Parcela: ' + dmData.cdsParcelaNOMBRE.AsString);
    Mensaje.Body.Add('Siembra: ' + dmData.cdsSiembraNOMBRE.AsString);
    Mensaje.Body.Add('Fecha inicial: ' + dtpInicial.Text);
    Mensaje.Body.Add('Fecha consulta: ' + dmData.cdsClimaFECHA.AsString);
    Mensaje.Body.Add('Eto: ' + dmData.cdsClimaETO.AsString);
    Mensaje.Body.Add('Temp: ' + dmData.cdsClimaTEMP.AsString);
    Mensaje.Body.Add('DGC: ' + dmData.cdsClimaDGC.AsString);
    Mensaje.Body.Add('DGC Acumulados: ' + dmData.cdsClimaACUMULADO.AsString);
    Mensaje.Body.Add('Etapa: ' + dmData.cdsClimaETAPA.AsString);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmClima.FormCreate(Sender: TObject);
begin
  dtpInicial.Date:= dmData.cdsSiembraFECHA.AsDateTime;
  dtpFinal.Date:= Date;
end;

initialization
  RegisterClass(TfrmClima);

end.
