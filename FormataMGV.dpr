program FormataMGV;

uses
  Vcl.Forms,
  formatamgv.view.principal in 'src\View\formatamgv.view.principal.pas' {frmPrincipal};

{$R *.res}

begin
  ReportMemoryLeaksOnShutDown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
