unit usrvContenedor;

interface

uses System.SysUtils, System.Classes,
  Vcl.SvcMgr,
  Datasnap.DSHTTPCommon, Datasnap.DSHTTP,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IndyPeerImpl, IPPeerServer;

type
  TIrriModel = class(TService)
    DSServer1: TDSServer;
    DSHTTPService1: TDSHTTPService;
    DSServerClass1: TDSServerClass;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
  private
    { Private declarations }
  protected
    function DoStop: Boolean; override;
    function DoPause: Boolean; override;
    function DoContinue: Boolean; override;
    procedure DoInterrogate; override;
  public
    function GetServiceController: TServiceController; override;
  end;

var
  IrriModel: TIrriModel;

implementation

uses Winapi.Windows, usrvMetodos;

{$R *.dfm}

procedure TIrriModel.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := usrvMetodos.TsmModulo;
end;


procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  IrriModel.Controller(CtrlCode);
end;

function TIrriModel.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

function TIrriModel.DoContinue: Boolean;
begin
  Result := inherited;
  DSServer1.Start;
end;

procedure TIrriModel.DoInterrogate;
begin
  inherited;
end;

function TIrriModel.DoPause: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

function TIrriModel.DoStop: Boolean;
begin
  DSServer1.Stop;
  Result := inherited;
end;

procedure TIrriModel.ServiceStart(Sender: TService; var Started: Boolean);
begin
  DSServer1.Start;
end;
end.

