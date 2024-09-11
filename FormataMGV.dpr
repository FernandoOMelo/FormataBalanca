program FormataMGV;

uses
  Vcl.Forms,
  formatamgv.view.principal in 'src\View\formatamgv.view.principal.pas' {frmPrincipal},
  formatamgv.view.frame.infnutri in 'src\View\Frames\formatamgv.view.frame.infnutri.pas' {frameInfNutri: TFrame},
  formatamgv.model.entidade.infnutri in 'src\Model\Entidade\formatamgv.model.entidade.infnutri.pas',
  formatamgv.model.infnutri in 'src\Model\formatamgv.model.infnutri.pas',
  formatamgv.model.principal in 'src\Model\formatamgv.model.principal.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutDown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
