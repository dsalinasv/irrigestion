unit ufrmSistemas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxControls,
  cxEdit, cxNavigator, Data.DB, cxContainer, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxDBNavigator, cxLabel, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxScrollBox, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, Vcl.ImgList, Vcl.DBActns, System.Actions, Vcl.ActnList,
  dxBar, dxRibbon, dxBarBuiltInMenu, dxRibbonCustomizationForm;

type
  TfrmSistemas = class(TfrmCatalogo)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PROMEDIO: TcxGridDBColumn;
    cxGrid1DBTableView1MAXIMO: TcxGridDBColumn;
    cxGrid1DBTableView1UD: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSistemas: TfrmSistemas;

implementation

{$R *.dfm}

uses udmDataAdmin;

initialization
  RegisterClass(TfrmSistemas);

end.
