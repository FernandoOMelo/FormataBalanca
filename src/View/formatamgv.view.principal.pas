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
    procedure pnTopMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pnTopMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pnTopMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure btnManualClick(Sender: TObject);
  private
    { Private declarations }
    dX, dY: Integer;
    isMouseDown: Boolean;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  formatamgv.model.principal,
  ShellAPI;

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

procedure TfrmPrincipal.btnManualClick(Sender: TObject);
begin
  ShellExecute(Handle, 'Open', 'https://help.toledobrasil.com/mgv7/v7_0_/HTML_PAGES/help.html', nil, '', 0);
end;

procedure TfrmPrincipal.pnTopMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  dX := X;
  dY := Y;
  isMouseDown := True;
end;

procedure TfrmPrincipal.pnTopMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if (isMouseDown) and (Self.WindowState = wsNormal) then
    SetBounds(Self.Left + (X - dx), Self.Top + (Y - dy), Self.Width, Self.Height);

end;

procedure TfrmPrincipal.pnTopMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  isMouseDown := False;
end;

end.
