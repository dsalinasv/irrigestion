program IrriPlan;

uses
  Vcl.Forms,
  MidasLib,
  udmDataPlan in 'udmDataPlan.pas' {dmData: TDataModule},
  ufrmMainPlan in 'ufrmMainPlan.pas' {frmMainPlan},
  ApplicationVersionHelper in 'Shared\ApplicationVersionHelper.pas',
  VersionInfo in 'Shared\VersionInfo.pas',
  ufrmSplash in 'Shared\ufrmSplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMainPlan, frmMainPlan);
  Application.Run;
end.
