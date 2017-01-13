unit ufrmCiclos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxControls,
  cxEdit, cxNavigator, Data.DB, cxContainer, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxTextEdit, cxDBEdit, cxLabel,
  cxDBNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxScrollBox,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, Vcl.ImgList,
  Vcl.DBActns, System.Actions, Vcl.ActnList, dxBar, dxRibbon, dxBarBuiltInMenu,
  dxRibbonCustomizationForm;

type
  TfrmCiclos = class(TfrmCatalogo)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCiclos: TfrmCiclos;

implementation

{$R *.dfm}

uses udmDataAdmin;

initialization
  RegisterClass(TfrmCiclos);

end.
