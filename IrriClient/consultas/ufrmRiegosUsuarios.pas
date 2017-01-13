unit ufrmRiegosUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, Generics.Collections, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxSkinsdxRibbonPainter, Data.FMTBcd, dxSkinsdxBarPainter, Vcl.ImgList, dxBar,
  Data.SqlExpr, Datasnap.Provider, Datasnap.DBClient, cxClasses, dxRibbon,
  cxGridLevel, cxGridChartView, cxGridDBChartView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxScrollBox,
  dxRibbonCustomizationForm;

type
  TfrmConsultaGeneral = class(TForm)
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
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarLargeButton2: TdxBarLargeButton;
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    cxGrid1DBTableView1USUSARIO: TcxGridDBColumn;
    cxGrid1DBTableView1PARCELA: TcxGridDBColumn;
    cxGrid1DBTableView1ESTACION: TcxGridDBColumn;
    cxGrid1DBTableView1SIEMBRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1RENDIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1CULTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CICLO: TcxGridDBColumn;
    cxGrid1DBTableView1VARIEDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1INI: TcxGridDBColumn;
    cxGrid1DBTableView1HORAS: TcxGridDBColumn;
    cxGrid1DBTableView1AVANCE: TcxGridDBColumn;
    cxGrid1DBTableView1GASTO: TcxGridDBColumn;
    cxGrid1DBTableView1VOLUMEN: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA: TcxGridDBColumn;
    cxGrid1DBTableView1LAMINA_BRUTA: TcxGridDBColumn;
    cxGrid1DBTableView1EA: TcxGridDBColumn;
    cxGrid1DBTableView1ProdAgua: TcxGridDBColumn;
    cxGrid1DBTableView1UBICACION: TcxGridDBColumn;
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaGeneral: TfrmConsultaGeneral;

implementation

uses
  udmDataAdmin;

{$R *.dfm}

procedure TfrmConsultaGeneral.dxBarLargeButton1Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  try
    with dmData.cdsConsultaGeneral do
    begin
      Close;
      Open;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmConsultaGeneral.dxBarLargeButton2Click(Sender: TObject);
begin
  dmData.Exportar(cxGrid1);
end;

initialization
  RegisterClass(TfrmConsultaGeneral);

end.
