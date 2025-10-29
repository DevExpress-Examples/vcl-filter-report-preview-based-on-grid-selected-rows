program ReportFilter;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  ReportFilter.dxSettings in 'ReportFilter.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
