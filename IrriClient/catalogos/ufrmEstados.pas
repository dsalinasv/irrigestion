unit ufrmEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCatalogo, cxControls,
  cxEdit, cxNavigator, Data.DB, cxTextEdit,
  cxContainer, Vcl.Grids, cxDBEdit, cxLabel, Vcl.StdCtrls, cxButtons,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxDBNavigator,
  cxScrollBox, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, Vcl.Menus,
  cxGridChartView, cxGridDBChartView, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  dxBar, dxRibbon, dxBarBuiltInMenu, dxRibbonCustomizationForm, System.ImageList;

type
  TfrmDistritos = class(TfrmCatalogo)
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Label1: TcxLabel;
    DBEdit1: TcxDBTextEdit;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridDBTableView2NOMBRE: TcxGridDBColumn;
    cxGridDBTableView2ID_ESTACION: TcxGridDBColumn;
    procedure btnCSVClick(Sender: TObject);
    procedure btnMergeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDistritos: TfrmDistritos;

implementation

{$R *.dfm}

uses udmDataAdmin;

procedure TfrmDistritos.btnCSVClick(Sender: TObject);
var
 sl, slRow : TStringList;
 line      : integer;
begin
  if dmData.opnDialog.Execute then
  begin
    //will load the TAB delimited TXT here
    sl := TStringList.Create;
    //will process each TAB delimited line here
    slRow := TStringList.Create;
    slRow.StrictDelimiter := true;
    slRow.Delimiter := ','; //TAB
    try
      //load the tab delimited txt file
      sl.LoadFromFile(dmData.opnDialog.FileName);
      StringGrid1.RowCount := sl.Count;

      //for each tab delimited line
      for line := 0 to Pred(sl.Count) do
      begin
        //"load" the line into a stringlist
        slRow.DelimitedText := sl[line];
        StringGrid1.Rows[line].Assign(slRow);
      end;
    finally
      slRow.Free;
      sl.Free;
    end;
  end;
end;

procedure TfrmDistritos.btnMergeClick(Sender: TObject);
var
  i: integer;
begin
  dmData.cdsHistorico.DisableControls;
  for i := 1 to Pred(StringGrid1.RowCount) do
  begin
    if dmData.cdsHistorico.Locate('FECHA', StrToDateTime(StringGrid1.Cells[0, i]), []) then
    begin
      dmData.cdsHistorico.Edit;
    end
    else
    begin
      dmData.cdsHistorico.Append;
      dmData.cdsHistoricoFECHA.AsDateTime:= StrToDateTime(StringGrid1.Cells[0, i]);
    end;
    dmData.cdsHistoricoETO.Value:= StrToFloat(StringGrid1.Cells[1, i]);
    dmData.cdsHistoricoTEMP.Value:= StrToFloat(StringGrid1.Cells[2, i]);
  end;
  dmData.cdsHistorico.EnableControls;
end;

procedure TfrmDistritos.FormShow(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourglass;
  try
    dmData.cdsDistrito.Open;
  finally
    Screen.Cursor := crDefault;
  end;
end;

initialization
  RegisterClass(TfrmDistritos);

end.
