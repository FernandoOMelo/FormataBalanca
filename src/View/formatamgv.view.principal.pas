unit formatamgv.view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    pnBody: TPanel;
    pnTop: TPanel;
    pnButtom: TPanel;
    pnMain: TPanel;
    imgLogo: TImage;
    pnBotoes: TPanel;
    pnManual: TPanel;
    pnFechar: TPanel;
    btnManual: TSpeedButton;
    shpManual: TShape;
    btnFechar: TSpeedButton;
    shpFechar: TShape;
    pnDiv: TPanel;
    pnLegend: TPanel;
    lbLegenda: TLabel;
    Label1: TLabel;
    pnSource: TPanel;
    lbSource: TLabel;
    pnInput: TPanel;
    lbInput: TLabel;
    edtInput: TEdit;
    cbSource: TComboBox;
    pnExecute: TPanel;
    shpExecute: TShape;
    btnExecute: TSpeedButton;
    lbCopyrigth: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnExecuteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  formatamgv.model.principal;

{$R *.dfm}

procedure TfrmPrincipal.btnExecuteClick(Sender: TObject);
var
  Principal: TPrincipal;
begin
  Principal := TPrincipal.Create;
  try
    Principal.CallModel(edtInput.Text, cbSource.ItemIndex);
  finally
    Principal.Free;
  end;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
