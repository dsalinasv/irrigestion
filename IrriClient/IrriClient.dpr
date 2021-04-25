program IrriClient;

uses
  Vcl.Forms,
  MidasLib,
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufrmPluviometros in 'catalogos\ufrmPluviometros.pas' {frmPluviometros},
  ufrmMain in 'ufrmMain.pas' {frmMain},
  ufrmLogin in 'ufrmLogin.pas' {frmLogin},
  ufrmClima in 'consultas\ufrmClima.pas' {frmClima},
  ufrmSubsistema in 'consultas\ufrmSubsistema.pas' {frmSubsistema},
  ufrmCorreos in 'consultas\ufrmCorreos.pas' {frmCorreos},
  ufrmRiegos in 'consultas\ufrmRiegos.pas' {frmRiegos},
  ufrmBase in 'Shared\ufrmBase.pas' {frmBase},
  ufrmCatalogo in 'Shared\ufrmCatalogo.pas' {frmCatalogo},
  ufrmSplash in 'Shared\ufrmSplash.pas' {frmSplash},
  ufrmEstratos in 'Consultas\ufrmEstratos.pas' {frmEstratos},
  ufrmSuelo in 'Consultas\ufrmSuelo.pas' {frmSuelo},
  ufrmPlan in 'Consultas\ufrmPlan.pas' {frmPlan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPlan, frmPlan);
  Application.Title := 'IrriModel';
  Application.Run;
end.
