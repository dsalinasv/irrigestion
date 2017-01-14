program IrriAdmin;

uses
  Vcl.Forms,
  MidasLib,
  ufrmMainAdmin in 'ufrmMainAdmin.pas' {frmMain},
  udmDataAdmin in 'udmDataAdmin.pas' {dmData: TDataModule},
  ufrmCiclos in 'catalogos\ufrmCiclos.pas' {frmCiclos},
  ufrmSuelos in 'catalogos\ufrmSuelos.pas' {frmSuelos},
  ufrmEstados in 'catalogos\ufrmEstados.pas' {frmEstados},
  ufrmCultivos in 'catalogos\ufrmCultivos.pas' {frmCultivos},
  ufrmSistemas in 'catalogos\ufrmSistemas.pas' {frmSistemas},
  ufrmUsuarios in 'catalogos\ufrmUsuarios.pas' {frmUsuarios},
  ufrmRiegosUsuarios in 'consultas\ufrmRiegosUsuarios.pas' {frmConsultaGeneral},
  ApplicationVersionHelper in 'Shared\ApplicationVersionHelper.pas',
  ufrmBase in 'Shared\ufrmBase.pas' {frmBase},
  ufrmCatalogo in 'Shared\ufrmCatalogo.pas' {frmCatalogo},
  ufrmSplash in 'Shared\ufrmSplash.pas' {frmSplash},
  VersionInfo in 'Shared\VersionInfo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Title := 'IrriModel';
  Application.Run;
end.
