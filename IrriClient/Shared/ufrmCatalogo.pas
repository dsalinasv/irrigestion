unit ufrmCatalogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ufrmBase, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, dxRibbonSkins,
  dxRibbonCustomizationForm, System.ImageList, Vcl.ImgList, Vcl.DBActns,
  System.Actions, Vcl.ActnList, dxBar, cxClasses, dxRibbon, cxScrollBox,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList;

type
  TfrmCatalogo = class(TfrmBase)
    pgcDatos: TcxPageControl;
    tabListado: TcxTabSheet;
    tabDatos: TcxTabSheet;
    grdDatosDBTableView1: TcxGridDBTableView;
    grdDatosLevel1: TcxGridLevel;
    grdDatos: TcxGrid;
    ScrollBox1: TcxScrollBox;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    barManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    actAcciones: TActionList;
    btnGuardar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    imgDatos16: TcxImageList;
    imgDatos32: TcxImageList;
    actNuevo: TDataSetInsert;
    actCancelar: TDataSetCancel;
    actEliminar: TAction;
    btnAnterior: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    actAnterior: TDataSetPrior;
    actSiguiente: TDataSetNext;
    actGuardar: TDataSetPost;
    procedure grdDatosDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actEliminarExecute(Sender: TObject);
    procedure actEliminarUpdate(Sender: TObject);
  private
  public
  end;

implementation

{$R *.dfm}

uses DBClient;

procedure TfrmCatalogo.actEliminarExecute(Sender: TObject);
begin
  if Assigned(grdDatosDBTableView1.DataController.DataSource) then
  begin
    if MessageBox(0, '¿Desea guardar los cambios antes de salir?',
      'Advertencia', MB_ICONINFORMATION or MB_YESNO) = IDYES then
    begin
      grdDatosDBTableView1.DataController.DataSource.DataSet.Delete;
    end;
  end;
end;

procedure TfrmCatalogo.actEliminarUpdate(Sender: TObject);
begin
  if Assigned(grdDatosDBTableView1.DataController.DataSource) then
  begin
    actEliminar.Enabled:= not grdDatosDBTableView1.DataController.DataSource.DataSet.IsEmpty;
  end;
end;

procedure TfrmCatalogo.FormCreate(Sender: TObject);
begin
  if Assigned(grdDatosDBTableView1.DataController.DataSource) then
  begin
    actNuevo.DataSource:= grdDatosDBTableView1.DataController.DataSource;
    actGuardar.DataSource:= grdDatosDBTableView1.DataController.DataSource;
    actCancelar.DataSource:= grdDatosDBTableView1.DataController.DataSource;
    actAnterior.DataSource:= grdDatosDBTableView1.DataController.DataSource;
    actSiguiente.DataSource:= grdDatosDBTableView1.DataController.DataSource;
  end;
end;

procedure TfrmCatalogo.grdDatosDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  pgcDatos.ActivePageIndex:= 1
end;

end.
