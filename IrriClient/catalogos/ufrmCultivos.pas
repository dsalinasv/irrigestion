unit ufrmCultivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, DB, Grids, DBGrids, ComCtrls, ExtCtrls, DBCtrls,
  ActnList, DBClient, StdCtrls, Mask, cxControls,
  cxEdit, cxNavigator, cxContainer, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxDBNavigator,
  cxLabel, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxPC, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxDBLookupComboBox,
  cxScrollBox, dxRibbonSkins, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter,
  Vcl.ImgList, Vcl.DBActns, System.Actions, dxBar, dxRibbon, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, System.ImageList;

type
  TfrmCultivos = class(TfrmCatalogo)
    Label1: TcxLabel;
    DBEdit1: TcxDBTextEdit;
    DBGrid2: TcxGrid;
    DBGrid2DBTableView1: TcxGridDBTableView;
    DBGrid2Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    Label3: TcxLabel;
    DBGrid3: TcxGrid;
    DBGrid3DBTableView1: TcxGridDBTableView;
    DBGrid3Level1: TcxGridLevel;
    cxLabel2: TcxLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1ORDEN: TcxGridDBColumn;
    cxGridDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridDBTableView1CLAVE: TcxGridDBColumn;
    cxGridDBTableView1DGC: TcxGridDBColumn;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    DBGrid2DBTableView1ORDEN: TcxGridDBColumn;
    DBGrid2DBTableView1ID_SISTEMA: TcxGridDBColumn;
    DBGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    DBGrid2DBTableView1TUMIN: TcxGridDBColumn;
    DBGrid2DBTableView1TUMAX: TcxGridDBColumn;
    DBGrid2DBTableView1KMAX: TcxGridDBColumn;
    DBGrid2DBTableView1KCO: TcxGridDBColumn;
    DBGrid2DBTableView1XKMAX: TcxGridDBColumn;
    DBGrid2DBTableView1PRO: TcxGridDBColumn;
    DBGrid2DBTableView1PRMAX: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA0: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA1: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA2: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA3: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA4: TcxGridDBColumn;
    DBGrid3DBTableView1NOMBRE: TcxGridDBColumn;
    DBGrid2DBTableView1ALPHA5: TcxGridDBColumn;
  end;

implementation

uses udmDataAdmin;

{$R *.dfm}

initialization
  RegisterClass(TfrmCultivos);

end.
