unit uData;

interface

type
  TTemp = class
  public
    fecha: TDate;
    valor: double;
    constructor Create(fecha: TDate; valor: double);
  end;

  TEto = class
  public
    valor: double;
    fecha: TDate;
    constructor Create(fecha: TDate; valor: double);
  end;

  TDia = class
  public
    defAnterior: double;
    kc: double;
    f: double;
    ke: double;
    lluvia: double;
    eto: double;
    pr: double;
    defActual: double;
    riego: double;
    haSiembra: double;
    dtMax: double;
    haPorciento: double;
    etr: double;
    constructor Create(haSiembra: double; kc, pr, f, defAnterior, eto, riego, lluvia: double);
    function calcular: boolean;
  end;

implementation

uses System.DateUtils, System.Math, System.SysUtils, uLog;

{ TTemp }

constructor TTemp.Create(fecha: TDate; valor: double);
begin
  Self.fecha := fecha;
  Self.valor := valor;
end;

{ TEto }

constructor TEto.Create(fecha: TDate; valor: double);
begin
  Self.fecha := fecha;
  Self.valor := valor;
end;

{ TDia }

constructor TDia.Create(haSiembra: double; kc, pr, f, defAnterior, eto, riego, lluvia: double);
begin
  Self.haSiembra := haSiembra;
  Self.kc := kc;
  Self.pr := pr;
  Self.f := f;
  Self.defAnterior := defAnterior;
  Self.eto := eto;
  Self.riego := riego;
  Self.lluvia := lluvia;
end;

function TDia.calcular: boolean;
var
  pe: double;
  defCritico: double;
  hr: double;
begin
  dtMax := 1000 * pr * haSiembra;
  haPorciento := 100 * (1 - (defAnterior / dtMax));
  if haPorciento < 0 then
    haPorciento := 0;
  ke := Ln(haPorciento + 1) / Ln(101);
  etr := kc * eto * ke;
  if (lluvia >= 0) and (lluvia <= 16.666) then
    pe := 0
  else if lluvia < 70 then
    pe := (lluvia * 0.6) - 10
  else
    pe := (lluvia * 0.8) - 24;
  defActual := defAnterior + etr - riego - pe;
  if defActual < 0 then
    defActual := 0;
  defCritico := f * dtMax;
  hr := defCritico - defActual;
//  log('fecha=' + FormatDateTime('dd/mm/yyyy', fecha) +
//    ', def.Critico=' + FormatFloat('#,##0.00', defCritico) +
//    ', ha%=' + FormatFloat('#,##0.00', haPorciento) +
//    ', ke=' + FormatFloat('#,##0.00', ke) +
//    ', etr=' + FormatFloat('#,##0.00', etr) +
//    ', def.Actual=' + FormatFloat('#,##0.00', defActual) +
//    ', hr=' + FormatFloat('#,##0.00', hr) +
//    ', riego=' + FormatFloat('#,##0.00', riego));
  Exit(hr < 0);
end;

end.
