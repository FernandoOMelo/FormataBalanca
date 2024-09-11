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
      procedure RecSplit(AValue: String);
      function GetRDC359(AValue: String): TInfNutri359;
      function GetRDC429(AValue: String): TInfNutri429;
      constructor Create;
      destructor Destroy; override;
  end;

implementation

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

function TModelInfNutri.GetRDC359(AValue: String): TInfNutri359;
begin

end;

function TModelInfNutri.GetRDC429(AValue: String): TInfNutri429;
begin

end;

procedure TModelInfNutri.RecSplit(AValue: String);
begin

end;

end.
