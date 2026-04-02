program ReportFilter;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  ReportFilter.dxSettings in 'ReportFilter.dxSettings.pas',
  uData in 'uData.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DevExpress Example - Filter Data Records in a Report';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
