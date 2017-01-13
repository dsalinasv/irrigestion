unit ufrmSuelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxControls,
  cxEdit, cxNavigator, Data.DB, cxContainer,
  cxDBEdit, Vcl.Imaging.jpeg, cxDBLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxDBNavigator, cxLabel,
  cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxPC,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxScrollBox,
  dxRibbonSkins, dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, Vcl.ImgList,
  Vcl.DBActns, System.Actions, Vcl.ActnList, dxBar, dxRibbon;

type
  TfrmSuelos = class(TfrmCatalogo)
    Label1: TcxLabel;
    DBEdit1: TcxDBTextEdit;
    Label2: TcxLabel;
    Label3: TcxLabel;
    DBEdit2: TcxDBTextEdit;
    DBEdit3: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
  private

  end;

implementation

uses udmDataAdmin;

{$R *.dfm}

initialization
  RegisterClass(TfrmSuelos);

end.
