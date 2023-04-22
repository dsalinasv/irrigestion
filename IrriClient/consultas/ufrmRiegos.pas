unit ufrmRiegos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, Generics.Collections, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxRibbonCustomizationForm, System.ImageList, Vcl.ImgList, dxBar, cxClasses,
  dxRibbon, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxScrollBox, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxImageList, cxCustomPivotGrid, cxDBPivotGrid, cxPivotGridChartConnection,
  dxBarBuiltInMenu, dxCore;

type
  TfrmRiegos = class(TForm)
    ScrollBox1: TcxScrollBox;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton2: TdxBarLargeButton;
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    cxDBPivotGrid1: TcxDBPivotGrid;
    AVANCE: TcxDBPivotGridField;
    CICLO: TcxDBPivotGridField;
    CULTIVO: TcxDBPivotGridField;
    EA: TcxDBPivotGridField;
    FECHA: TcxDBPivotGridField;
    GASTO: TcxDBPivotGridField;
    HORAS: TcxDBPivotGridField;
    INI: TcxDBPivotGridField;
    LAMINA: TcxDBPivotGridField;
    LAMINA_BRUTA: TcxDBPivotGridField;
    PARCELA: TcxDBPivotGridField;
    ProdAgua: TcxDBPivotGridField;
    RENDIMIENTO: TcxDBPivotGridField;
    SIEMBRA: TcxDBPivotGridField;
    TIPO: TcxDBPivotGridField;
    UBICACION: TcxDBPivotGridField;
    USUARIO: TcxDBPivotGridField;
    VARIEDAD: TcxDBPivotGridField;
    VOLUMEN: TcxDBPivotGridField;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxPivotGridChartConnection1: TcxPivotGridChartConnection;
    cxGrid1ChartView1: TcxGridChartView;
    NO_FECHA: TcxDBPivotGridField;
    ANIO: TcxDBPivotGridField;
    sdExcel: TSaveDialog;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRiegos: TfrmRiegos;

implementation

uses
  udmData, cxExportPivotGridLink;

{$R *.dfm}

procedure TfrmRiegos.dxBarLargeButton1Click(Sender: TObject);
begin
  dmData.ConsultarRiegos;
end;

procedure TfrmRiegos.dxBarLargeButton2Click(Sender: TObject);
begin
  with sdExcel do
  begin
    if Execute then
      cxExportPivotGridToExcel(FileName, cxDBPivotGrid1);
  end;
end;

initialization
  RegisterClass(TfrmRiegos);

end.
