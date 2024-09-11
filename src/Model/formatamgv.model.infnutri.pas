unit formatamgv.model.infnutri;

interface

uses
  formatamgv.model.entidade.infnutri;

type
  TModelInfNutri = class
    private
      InfNutri429: TInfNutri429;
      InfNutri359: TInfNutri359;
    public
      procedure GetInfNutri(InfNutri: String);
      procedure GetRDC359(AValue: String);
      procedure GetRDC429(AValue: String);
      constructor Create;
      destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils,
  Vcl.Dialogs;

{ TModelInfNutri }

constructor TModelInfNutri.Create;
begin
  InfNutri429 := TInfNutri429.Create;
  InfNutri359 := TInfNutri359.Create;
end;

destructor TModelInfNutri.Destroy;
begin
  InfNutri429.Free;
  InfNutri359.Free;
  inherited;
end;

procedure TModelInfNutri.GetInfNutri(InfNutri: String);
var
  pipePosition: Integer;
  rdc359: String;
  rdc429: String;
begin
  pipePosition := AnsiPos('|', InfNutri);
  rdc359 := Copy(InfNutri, 1, pipePosition -1);
  rdc429 := Copy(stringreplace(InfNutri, '|', '', []), pipePosition +1, InfNutri.Length);
  GetRDC359(rdc359);
//  GetRDC429(rdc429);
end;

procedure TModelInfNutri.GetRDC359(AValue: String);
begin
  try
    InfNutri359.CCCCC := Copy(AValue, 2, 6);
    InfNutri359.BBB   := Copy(AValue, 9, 3);
    InfNutri359.D     := Copy(AValue, 12, 1);
    InfNutri359.EE    := Copy(AValue, 13, 2);
    InfNutri359.F     := Copy(AValue, 15, 1);
    InfNutri359.GG    := Copy(AValue, 16, 2);
    InfNutri359.EEEE  := Copy(AValue, 18, 4);
    InfNutri359.IIII  := Copy(AValue, 22, 4);
    InfNutri359.LLL   := Copy(AValue, 26, 3);
    InfNutri359.NNN   := Copy(AValue, 29, 3);
    InfNutri359.OOO   := Copy(AValue, 32, 3);
    InfNutri359.PPP   := Copy(AValue, 35, 3);
    InfNutri359.QQQ   := Copy(AValue, 38, 3);
    InfNutri359.UUUUU := Copy(AValue, 41, 5);
    InfNutri359.G     := Copy(AValue, 46, 1);
    InfNutri359.T     := Copy(AValue, 47, 1);
    InfNutri359.S     := Copy(AValue, 48, 1);
    InfNutri359.A     := Copy(AValue, 49, 1);
  except
    on E: Exception do
    begin
      showmessage(E.message);
    end;
  end;
end;

procedure TModelInfNutri.GetRDC429(AValue: String);
begin
  showmessage(AValue);
end;

end.
