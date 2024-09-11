unit formatamgv.model.principal;

interface

uses
  formatamgv.model.infnutri;

type
  TPrincipal = class
    private
      MInfNutri: TModelInfNutri;
    public
      procedure CallModel(ARec: string; AIndex: SmallInt);
  end;

const
  ITENSMGV  = 0;
  INFNUTRI  = 1;
  TXINFO    = 2;
  TARA      = 3;
  ARQSOK    = 4;

implementation



{ TPrincipal }

procedure TPrincipal.CallModel(ARec: string; AIndex: SmallInt);
begin
  case AIndex of
    INFNUTRI:
    begin
      MInfNutri := TModelInfNutri.Create;
      try
        MInfNutri.GetInfNutri(ARec);
      finally
        MInfNutri.Free;
      end;
    end;
  end;
end;

end.
