unit ufrmSplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxGDIPlusClasses, cxClasses,
  cxLabel, dxImageSlider;

type
  TfrmSplash = class(TForm)
    imgSplash: TdxImageSlider;
    Images: TcxImageCollection;
    IrriGranos: TcxImageCollectionItem;
    IrriPapa: TcxImageCollectionItem;
    IrriCana: TcxImageCollectionItem;
    lblLoad: TcxLabel;
    IrriNogal: TcxImageCollectionItem;
    procedure imgSplashDblClick(Sender: TObject);
  private
    procedure SetLoad(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    function ElegirAuto(Param: String): Boolean;
    function ElegirManual: String;
  published
    property Load: String write SetLoad;
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}

{ TfrmSplash }

function TfrmSplash.ElegirAuto(Param: String): Boolean;
var
  Item: TcxImageCollectionItem;
begin
  if imgSplash.Images.Items.FindItemByName(Param, Item) then
  begin
    imgSplash.ItemIndex:= imgSplash.Images.Items.IndexOf(Item);
    Exit(True)
  end
  else
  begin
    Exit(False)
  end;
end;

function TfrmSplash.ElegirManual: String;
begin
  ShowModal;
  Exit(imgSplash.Images.Items[imgSplash.ItemIndex].Name);
end;

procedure TfrmSplash.imgSplashDblClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplash.SetLoad(const Value: String);
begin
  lblLoad.Caption:= Value;
  Refresh;
end;

end.
