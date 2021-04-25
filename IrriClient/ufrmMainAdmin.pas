unit ufrmMainAdmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComObj, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxBarBuiltInMenu, cxContainer, cxEdit, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, cxClasses, dxRibbon, dxGDIPlusClasses, cxImage,
  cxPC, cxImageList;

type
  TfrmMain = class(TForm)
    actAcciones: TActionList;
    actSuelos: TAction;
    actCultivos: TAction;
    ImageList16: TcxImageList;
    ImageList32: TcxImageList;
    actSalir: TAction;
    PageControl: TcxPageControl;
    actSistemas: TAction;
    dxRibbonTab1: TdxRibbonTab;
    dxRibbon: TdxRibbon;
    BarManager: TdxBarManager;
    BarManagerBar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    BarManagerBar3: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actCiclos: TAction;
    cxTabSheet1: TcxTabSheet;
    ScrollBox1: TScrollBox;
    evaf: TcxImage;
    actEstados: TAction;
    dxBarLargeButton28: TdxBarLargeButton;
    actConsultaGeneral: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    actUsuarios: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure actAbrirVentanaExecute(Sender: TObject);
    procedure actSalirExecute(Sender: TObject);
    procedure PageControlCanClose(Sender: TObject; var ACanClose: Boolean);
  private
    function CrearVentana(actAccion: TAction): TForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses StrUtils;

{$R *.dfm}
{$R devexpress.res}

function TfrmMain.CrearVentana(actAccion: TAction): TForm;
var
  sForma: String;
  FormClass: TFormClass;
begin
  sForma:= StringReplace(actAccion.Name, 'act', 'frm', []);
  Result:= TForm(Application.FindComponent(sForma));
  if Assigned(Result) then
    PageControl.ActivePage:= Result.Parent as TcxTabSheet
  else
  begin
    FormClass:= TFormClass(GetClass('T' + sForma));
    if Assigned(FormClass) then
    begin
      Result:= FormClass.Create(Application);
      Result.ManualDock(PageControl);
      Result.Show;
      PageControl.ActivePageIndex:= Pred(PageControl.PageCount);
      Result.Parent:= PageControl.ActivePage;
    end;
  end;
end;

procedure TfrmMain.PageControlCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
  ACanClose:= PageControl.ActivePageIndex > 0;
end;

procedure TfrmMain.actAbrirVentanaExecute(Sender: TObject);
begin
  CrearVentana(TAction(Sender));
end;

procedure TfrmMain.actSalirExecute(Sender: TObject);
begin
  Close;
end;

end.
