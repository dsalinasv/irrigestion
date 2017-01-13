program IrriMovil;

uses
  System.StartUpCopy,
  FMX.Forms,
  MasterDetail in 'MasterDetail.pas' {MasterDetailForm},
  Logon in 'Logon.pas' {LogonForm},
  Data in 'Data.pas' {dmData: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TLogonForm, LogonForm);
  Application.Run;
end.
