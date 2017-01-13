unit ufrmPluviometros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxControls,


  cxEdit, cxNavigator, Data.DB, cxContainer,
  cxLabel, cxDBEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxDBNavigator, cxTextEdit, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxGraphics,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxScrollBox, dxRibbonSkins, dxSkinsdxRibbonPainter,
  dxSkinsdxBarPainter, Vcl.ImgList, System.Actions, Vcl.ActnList, dxBar,
  dxRibbon, dxBarBuiltInMenu, dxRibbonCustomizationForm, System.ImageList,
  Vcl.DBActns, cxLookAndFeels, cxLookAndFeelPainters;

type
  TfrmPluviometros = class(TfrmCatalogo)
    Label1: TcxLabel;
    DBEdit1: TcxDBTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    grdDatosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1PP: TcxGridDBColumn;
  end;

implementation

uses udmData;

{$R *.dfm}

end.
