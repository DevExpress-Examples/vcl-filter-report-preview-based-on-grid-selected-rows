program ReportFilter;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  ReportFilter.dxSettings in 'ReportFilter.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DevExpress Example - Filter Data Records in a Report';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
