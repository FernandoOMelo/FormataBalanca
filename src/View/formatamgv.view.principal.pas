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
    pnInput: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    Label4: TLabel;
    Memo1: TMemo;
    Panel3: TPanel;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
