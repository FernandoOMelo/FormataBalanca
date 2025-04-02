unit formatamgv.model.infnutri;

interface

uses
  formatamgv.model.entidade.infnutri, formatamgv.view.principal;

type
  TModelInfNutri = class
    private
      InfNutri429: TInfNutri429;
      InfNutri359: TInfNutri359;
      procedure GetRDC359(AValue: String);
      procedure GetRDC429(AValue: String);
    procedure CompleteFields;
    public
      procedure GetInfNutri(InfNutri: String);
      constructor Create;
      destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils,
  System.StrUtils,
  Vcl.Dialogs,
  formatamgv.view.frame.infnutri;

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

procedure TModelInfNutri.CompleteFields;
var
  frmInfNutri: TframeInfNutri;
begin
  frmInfNutri := TFrameInfNutri.Create(nil);
  with frmInfNutri do
  begin
    edtN359.Text := 'N';
    edtAReservado359.Text := '0';
    edtCCCCC359.Text := InfNutri359.CCCCCC;
    edtBBB359.Text := InfNutri359.BBB;
    edtD359.Text := InfNutri359.D;
    edtEE359.Text := InfNutri359.EE;
    edtF359.Text := InfNutri359.F;
    edtGG359.Text := InfNutri359.GG;
    edtEEEE359.Text := InfNutri359.EEEE;
    edtIIII359.Text := InfNutri359.IIII;
    edtLLL359.Text := InfNutri359.LLL;
    edtNNN359.Text := InfNutri359.NNN;
    edtOOO359.Text := InfNutri359.OOO;
    edtPPP359.Text := InfNutri359.PPP;
    edtQQQ359.Text := InfNutri359.QQQ;
    edtUUU359.Text := InfNutri359.UUUUU;
    edtG359.Text := InfNutri359.G;
    edtT359.Text := InfNutri359.T;
    edtS359.Text := InfNutri359.S;
    edtA359.Text := InfNutri359.A;
    edtN429.Text := InfNutri429.N;
    edtMMM429.Text := InfNutri429.MMM;
    edtBBB429.Text := InfNutri429.BBB;
    edtD429.Text := InfNutri429.D;
    edtEE429.Text := InfNutri429.EE;
    edtF429.Text := InfNutri429.F;
    edtGG429.Text := InfNutri429.GG;
    edtEEEE429.Text := InfNutri429.EEEE;
    edtIIII429.Text := InfNutri429.IIII;
    edtJJJ429.Text := InfNutri429.JJJ;
    edtKKK429.Text := InfNutri429.KKK;
    edtLLL429.Text := InfNutri429.LLL;
    edtNNN429.Text := InfNutri429.NNN;
    edtOOO429.Text := InfNutri429.OOO;
    edtPPP429.Text := InfNutri429.PPP;
    edtQQQ429.Text := InfNutri429.QQQ;
    edtUUUUU429.Text := InfNutri429.UUUUU;
    edtR429.Text := InfNutri429.R;
    edtS429.Text := InfNutri429.S;
    edtT429.Text := InfNutri429.T;
    edtLLLLL429.Text := InfNutri429.LLLLL;
    edtGGGGG429.Text := InfNutri429.GGGGG;
    edtW429.Text := InfNutri429.W;
    edtAAAAA429.Text := InfNutri429.AAAAA;
    edtBBBBB429.Text := InfNutri429.BBBBB;
    edtCCCCC429.Text := InfNutri429.CCCCC;
    edtDDDDD429.Text := InfNutri429.DDDDD;
    edtE429.Text := InfNutri429.E;
    edtFFF429.Text := InfNutri429.FFF;
    edtGGG429.Text := InfNutri429.GGG;
    edtYYY429.Text := InfNutri429.YYY;
    edtZZZZZ429.Text := InfNutri429.ZZZZZ;

    edtN359.Hint := 'Indicador nova Informação nutricional, sempre ''N''';
    edtAReservado359.Hint := 'Reservado';
    edtCCCCC359.Hint := 'Código da Informação Nutricional';
    edtBBB359.Hint := 'Quantidade';
    case InfNutri359.D.ToInteger of
      0: edtD359.Hint := 'Unidade da Porção - [0] => Unidade da porção em gramas(g)';
      1: edtD359.Hint := 'Unidade da Porção - [1] => Unidade da porção em mililitros(ml)';
      2: edtD359.Hint := 'Unidade da Porção - [2] => Unidade da porção em unidades(un)';
      3: edtD359.Hint := 'VALOR FORA DO PADRÃO RDC359';
    end;
    edtEE359.Hint := 'Parte Inteira da Medida Caseira';
    case InfNutri359.F.ToInteger of
      0: edtF359.Hint := 'Parte Decimal da Medida Caseira - [0] => Para 0';
      1: edtF359.Hint := 'Parte Decimal da Medida Caseira - [1] => Para 1/4';
      2: edtF359.Hint := 'Parte Decimal da Medida Caseira - [2] => Para 1/3';
      3: edtF359.Hint := 'Parte Decimal da Medida Caseira - [3] => Para 1/2';
      4: edtF359.Hint := 'Parte Decimal da Medida Caseira - [4] => Para 2/3';
      5: edtF359.Hint := 'Parte Decimal da Medida Caseira - [5] => Para 3/4';
    end;
    case InfNutri359.GG.ToInteger of
      0:  edtGG359.Hint := 'Medida Caseira Utilizada - [00] => Colher(es) de Sopa';
      1:  edtGG359.Hint := 'Medida Caseira Utilizada - [01] => Colher(es) de Café';
      2:  edtGG359.Hint := 'Medida Caseira Utilizada - [02] => Colher(es) de Chá';
      3:  edtGG359.Hint := 'Medida Caseira Utilizada - [03] => Xícara(s)';
      4:  edtGG359.Hint := 'Medida Caseira Utilizada - [04] => De Xícara(s)';
      5:  edtGG359.Hint := 'Medida Caseira Utilizada - [05] => Unidade(s)';
      6:  edtGG359.Hint := 'Medida Caseira Utilizada - [06] => Pacote(s)';
      7:  edtGG359.Hint := 'Medida Caseira Utilizada - [07] => Fatia(s)';
      8:  edtGG359.Hint := 'Medida Caseira Utilizada - [08] => Fatia(s) Fina(s)';
      9:  edtGG359.Hint := 'Medida Caseira Utilizada - [09] => Pedaço(s)';
      10: edtGG359.Hint := 'Medida Caseira Utilizada - [10] => Folha(s)';
      11: edtGG359.Hint := 'Medida Caseira Utilizada - [11] => Pão(es)';
      12: edtGG359.Hint := 'Medida Caseira Utilizada - [12] => Biscoito(s)';
      13: edtGG359.Hint := 'Medida Caseira Utilizada - [13] => Bisnaguinha(s)';
      14: edtGG359.Hint := 'Medida Caseira Utilizada - [14] => Disco(s)';
      15: edtGG359.Hint := 'Medida Caseira Utilizada - [15] => Copo(s)';
      16: edtGG359.Hint := 'Medida Caseira Utilizada - [16] => Porção(ões)';
      17: edtGG359.Hint := 'Medida Caseira Utilizada - [17] => Tablete(s)';
      18: edtGG359.Hint := 'Medida Caseira Utilizada - [18] => Sache(s)';
      19: edtGG359.Hint := 'Medida Caseira Utilizada - [19] => Almôndega(s)';
      20: edtGG359.Hint := 'Medida Caseira Utilizada - [20] => Bife(s)';
      21: edtGG359.Hint := 'Medida Caseira Utilizada - [21] => Filé(s)';
      22: edtGG359.Hint := 'Medida Caseira Utilizada - [22] => Concha(s)';
      23: edtGG359.Hint := 'Medida Caseira Utilizada - [23] => Bala(s)';
      24: edtGG359.Hint := 'Medida Caseira Utilizada - [24] => Prato(s) Fundo(s)';
      25: edtGG359.Hint := 'Medida Caseira Utilizada - [25] => Pitada(s)';
      26: edtGG359.Hint := 'Medida Caseira Utilizada - [26] => Lata(s)';
    end;

    edtEEEE359.Hint := 'Valor Energético';
    edtIIII359.Hint := 'Carboidratos - 3 bytes para a parte inteira e 1 byte para a parte decimal (III,I)';
    edtLLL359.Hint := 'Proteínas - 2 bytes para a parte inteira e 1 byte para a parte decimal (LL,L)';
    edtNNN359.Hint := 'Gorduras Totais - 2 bytes para a parte inteira e 1 byte para a parte decimal (NN,N)';
    edtOOO359.Hint := 'Gorduras Saturadas - 2 bytes para a parte inteira e 1 byte para a parte decimal (OO,O)';
    edtPPP359.Hint := 'Gorduras Trans - 2 bytes para a parte inteira e 1 byte para a parte decimal (PP,P)';
    edtQQQ359.Hint := 'Fibra Alimentar - 2 bytes para a parte inteira e 1 byte para a parte decimal (QQ,Q).';
    edtUUU359.Hint := 'Sódio - 4 bytes para a parte inteira e 1 byte para a parte decimal (UUUU,U)';
    edtG359.Hint := 'Excesso de Gordura - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtT359.Hint := 'Excesso de Gordura Saturada - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtS359.Hint := 'Excesso de Sódio - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtA359.Hint := 'Excesso de Açucar - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtN429.Hint := 'Calcula Automaticamente a Quantidade de Porções por Embalagem O cálculo automático se aplica apenas a venda por peso. Se optar pela venda por unidade, esta flag deverá permanecer desmarcada.';
    edtMMM429.Hint := 'Quantidade de Porções por Embalagem';
    edtBBB429.Hint := 'Quantidade da Porção';
    case InfNutri429.D.ToInteger of
      0: edtD429.Hint := 'Unidade da Porção - [0] => Unidade da porção em gramas(g)';
      1: edtD429.Hint := 'Unidade da Porção - [1] => Unidade da porção em mililitros(ml)';
    end;
    edtEE429.Hint := 'Parte Inteira da Medida Caseira';
    case InfNutri429.F.ToInteger of
      0: edtF429.Hint := 'Parte Decimal da Medida Caseira - [0] => Para 0';
      1: edtF429.Hint := 'Parte Decimal da Medida Caseira - [1] => Para 1/4';
      2: edtF429.Hint := 'Parte Decimal da Medida Caseira - [2] => Para 1/3';
      3: edtF429.Hint := 'Parte Decimal da Medida Caseira - [3] => Para 1/2';
      4: edtF429.Hint := 'Parte Decimal da Medida Caseira - [4] => Para 2/3';
      5: edtF429.Hint := 'Parte Decimal da Medida Caseira - [5] => Para 3/4';
    end;

    case InfNutri429.GG.ToInteger of
      0:  edtGG429.Hint := 'Medida Caseira Utilizada - [00] => Colher(es) de Sopa';
      1:  edtGG429.Hint := 'Medida Caseira Utilizada - [01] => Colher(es) de Café';
      2:  edtGG429.Hint := 'Medida Caseira Utilizada - [02] => Colher(es) de Chá';
      3:  edtGG429.Hint := 'Medida Caseira Utilizada - [03] => Xícara(s)';
      4:  edtGG429.Hint := 'Medida Caseira Utilizada - [04] => De Xícara(s)';
      5:  edtGG429.Hint := 'Medida Caseira Utilizada - [05] => Unidade(s)';
      6:  edtGG429.Hint := 'Medida Caseira Utilizada - [06] => Pacote(s)';
      7:  edtGG429.Hint := 'Medida Caseira Utilizada - [07] => Fatia(s)';
      8:  edtGG429.Hint := 'Medida Caseira Utilizada - [08] => Fatia(s) Fina(s)';
      9:  edtGG429.Hint := 'Medida Caseira Utilizada - [09] => Pedaço(s)';
      10: edtGG429.Hint := 'Medida Caseira Utilizada - [10] => Folha(s)';
      11: edtGG429.Hint := 'Medida Caseira Utilizada - [11] => Pão(es)';
      12: edtGG429.Hint := 'Medida Caseira Utilizada - [12] => Biscoito(s)';
      13: edtGG429.Hint := 'Medida Caseira Utilizada - [13] => Bisnaguinha(s)';
      14: edtGG429.Hint := 'Medida Caseira Utilizada - [14] => Disco(s)';
      15: edtGG429.Hint := 'Medida Caseira Utilizada - [15] => Copo(s)';
      16: edtGG429.Hint := 'Medida Caseira Utilizada - [16] => Porção(ões)';
      17: edtGG429.Hint := 'Medida Caseira Utilizada - [17] => Tablete(s)';
      18: edtGG429.Hint := 'Medida Caseira Utilizada - [18] => Sache(s)';
      19: edtGG429.Hint := 'Medida Caseira Utilizada - [19] => Almôndega(s)';
      20: edtGG429.Hint := 'Medida Caseira Utilizada - [20] => Bife(s)';
      21: edtGG429.Hint := 'Medida Caseira Utilizada - [21] => Filé(s)';
      22: edtGG429.Hint := 'Medida Caseira Utilizada - [22] => Concha(s)';
      23: edtGG429.Hint := 'Medida Caseira Utilizada - [23] => Bala(s)';
      24: edtGG429.Hint := 'Medida Caseira Utilizada - [24] => Prato(s) Fundo(s)';
      25: edtGG429.Hint := 'Medida Caseira Utilizada - [25] => Pitada(s)';
      26: edtGG429.Hint := 'Medida Caseira Utilizada - [26] => Lata(s)';
      27: edtGG429.Hint := 'Medida Caseira Utilizada - [27] => Xícara de Chá';
      28: edtGG429.Hint := 'Medida Caseira Utilizada - [28] => Prato raso';
    end;


    edtG359.Hint := 'Excesso de Gordura - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtT359.Hint := 'Excesso de Gordura Saturada - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtS359.Hint := 'Excesso de Sódio - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtA359.Hint := 'Excesso de Açucar - Somente disponivel para informações nutricionais no padrão Uruguai 272-018. Caso outro padrão seja utilizado, deve ser preenchido com 0.';
    edtEEEE429.Hint := 'Valor Energético';
    edtIIII429.Hint := 'Carboidratos - 3 bytes para a parte inteira e 1 byte para a parte decimal (III,I)';
    edtJJJ429.Hint := 'Açúcares Totais - 2 bytes para a parte inteira e 1 byte para a parte decimal (JJ,J).';
    edtKKK429.Hint := 'Açúcares Adicionados - 2 bytes para a parte inteira e 1 byte para a parte decimal (KK,K)';
    edtLLL429.Hint := 'Proteínas - 2 bytes para a parte inteira e 1 byte para a parte decimal (LL,L)';
    edtNNN429.Hint := 'Gorduras Totais - 2 bytes para a parte inteira e 1 byte para a parte decimal (NN,N)';
    edtOOO429.Hint := 'Gorduras Saturadas - 2 bytes para a parte inteira e 1 byte para a parte decimal (OO,O)';
    edtPPP429.Hint := 'Gorduras Trans - 2 bytes para a parte inteira e 1 byte para a parte decimal (PP,P)';
    edtQQQ429.Hint := 'Fibra Alimentar - 2 bytes para a parte inteira e 1 byte para a parte decimal (QQ,Q).';
    edtUUUUU429.Hint := 'Sódio - 4 bytes para a parte inteira e 1 byte para a parte decimal (UUUU,U)';
    edtR429.Hint := 'Alto em açúcar adicionado';
    edtS429.Hint := 'Alto em gordura saturada';
    edtT429.Hint := 'Alto em sódio';
    edtLLLLL429.Hint := 'Lactose - 4 bytes para a parte inteira e 1 byte para a parte decimal (LLLL,L).';
    edtGGGGG429.Hint := 'Galactose - 4 bytes para a parte inteira e 1 byte para a parte decimal (GGGG,G).';
    edtW429.Hint := 'Imprime Lactose e Galactose';
    edtAAAAA429.Hint := 'Açucares Adicionados Estendido - Caso preenchido, o valor informado no campo "Açucares Adicionados" será ignorado.';
    edtBBBBB429.Hint := 'Açucares Totais Estendido - Caso preenchido, o valor informado no campo "Açucares Totais" será ignorado.';
    edtCCCCC429.Hint := 'Gorduras Totais Estendido - Caso preenchido, o valor informado no campo "Gorduras Totais" será ignorado.';
    edtDDDDD429.Hint := 'Proteinas Estendido - Caso preenchido, o valor informado no campo "Proteinas" será ignorado.';
    edtE429.Hint := 'Utiliza fração de medida caseira personalizada';
    edtFFF429.Hint := 'Numerador da fração de medida caseira personalizada';
    edtGGG429.Hint := 'Denominador da fração de medida caseira personalizada';
    if InfNutri429.YYY = '' then
      edtYYY429.Hint := 'Código do Campo Adicional';
    if not InfNutri429.YYY.IsEmpty then
    begin
      case InfNutri429.YYY.ToInteger of
        0: edtYYY429.Hint := 'Código do Campo Adicional - [000] => Ácido Linoleico';
        1: edtYYY429.Hint := 'Código do Campo Adicional - [001] => Ácido Linolênico';
        2: edtYYY429.Hint := 'Código do Campo Adicional - [002] => Ácido Oleico';
        3: edtYYY429.Hint := 'Código do Campo Adicional - [003] => Ácido Araquidônico';
        4: edtYYY429.Hint := 'Código do Campo Adicional - [004] => Calcio';
        5: edtYYY429.Hint := 'Código do Campo Adicional - [005] => Cloreto';
        6: edtYYY429.Hint := 'Código do Campo Adicional - [006] => Cobre';
        7: edtYYY429.Hint := 'Código do Campo Adicional - [007] => Colesterol';
        8: edtYYY429.Hint := 'Código do Campo Adicional - [008] => Colina';
        9: edtYYY429.Hint := 'Código do Campo Adicional - [009] => Cromo';
        10: edtYYY429.Hint := 'Código do Campo Adicional - [010] => Ácido Docosaexaenoico';
        11: edtYYY429.Hint := 'Código do Campo Adicional - [011] => Ácido Eicosapentaenoico';
        12: edtYYY429.Hint := 'Código do Campo Adicional - [012] => Ferro';
        13: edtYYY429.Hint := 'Código do Campo Adicional - [013] => Flúor';
        14: edtYYY429.Hint := 'Código do Campo Adicional - [014] => Fósforo';
        15: edtYYY429.Hint := 'Código do Campo Adicional - [015] => Gorduras Monoinsaturadas';
        16: edtYYY429.Hint := 'Código do Campo Adicional - [016] => Gorduras Poli-insaturadas';
        17: edtYYY429.Hint := 'Código do Campo Adicional - [017] => Iodo';
        18: edtYYY429.Hint := 'Código do Campo Adicional - [018] => Magnésio';
        19: edtYYY429.Hint := 'Código do Campo Adicional - [019] => Manganês';
        20: edtYYY429.Hint := 'Código do Campo Adicional - [020] => Molibdênio';
        21: edtYYY429.Hint := 'Código do Campo Adicional - [021] => Nucleotídeos';
        22: edtYYY429.Hint := 'Código do Campo Adicional - [022] => Ômega 3';
        23: edtYYY429.Hint := 'Código do Campo Adicional - [023] => Ômega 6';
        24: edtYYY429.Hint := 'Código do Campo Adicional - [024] => Ômega 9';
        25: edtYYY429.Hint := 'Código do Campo Adicional - [025] => Potássio';
        26: edtYYY429.Hint := 'Código do Campo Adicional - [026] => Selênio';
        27: edtYYY429.Hint := 'Código do Campo Adicional - [027] => Taurina';
        28: edtYYY429.Hint := 'Código do Campo Adicional - [028] => Vitamina A';
        29: edtYYY429.Hint := 'Código do Campo Adicional - [029] => Vitamina B1';
        30: edtYYY429.Hint := 'Código do Campo Adicional - [030] => Vitamina B12';
        31: edtYYY429.Hint := 'Código do Campo Adicional - [031] => Vitamina B2';
        32: edtYYY429.Hint := 'Código do Campo Adicional - [032] => Vitamina B3';
        33: edtYYY429.Hint := 'Código do Campo Adicional - [033] => Vitamina B5';
        34: edtYYY429.Hint := 'Código do Campo Adicional - [034] => Vitamina B6';
        35: edtYYY429.Hint := 'Código do Campo Adicional - [035] => Vitamina B7';
        36: edtYYY429.Hint := 'Código do Campo Adicional - [036] => Vitamina B9';
        37: edtYYY429.Hint := 'Código do Campo Adicional - [037] => Vitamina C';
        38: edtYYY429.Hint := 'Código do Campo Adicional - [038] => Vitamina D';
        39: edtYYY429.Hint := 'Código do Campo Adicional - [039] => Vitamina E';
        40: edtYYY429.Hint := 'Código do Campo Adicional - [040] => Vitamina K';
        41: edtYYY429.Hint := 'Código do Campo Adicional - [041] => Zinco';
      end;
    end;
    edtZZZZZ429.Hint := 'Valor do Campo Adicional - 4 bytes para a parte inteira e 1 byte para a parte decimal (ZZZZ,Z).';
    Parent := frmPrincipal.pnMain;
    Show;
  end;
end;

procedure TModelInfNutri.GetInfNutri(InfNutri: String);
var
  pipePosition: Integer;
  rdc359: String;
  rdc429: String;
begin
  pipePosition := AnsiPos('|', InfNutri);
  rdc359 := Copy(InfNutri, 1, pipePosition -1);
  rdc429 := Copy(stringreplace(InfNutri, '|', '', [rfReplaceAll]), pipePosition, InfNutri.Length);
  GetRDC359(rdc359);
  GetRDC429(rdc429);
  CompleteFields;

end;

procedure TModelInfNutri.GetRDC359(AValue: String);
begin
  try
    InfNutri359.CCCCCC := Copy(AValue, 2, 6);
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
  try
    InfNutri429.N     := Copy(AValue, 1, 1);
    InfNutri429.MMM   := Copy(AValue, 2, 3);
    InfNutri429.BBB   := Copy(AValue, 5, 3);
    InfNutri429.D     := Copy(AValue, 8, 1);
    InfNutri429.EE    := Copy(AValue, 9, 2);
    InfNutri429.F     := Copy(AValue, 11, 1);
    InfNutri429.GG    := Copy(AValue, 12, 2);
    InfNutri429.EEEE  := Copy(AValue, 14, 4);
    InfNutri429.IIII  := Copy(AValue, 18, 4);
    InfNutri429.JJJ   := Copy(AValue, 22, 3);
    InfNutri429.KKK   := Copy(AValue, 25, 3);
    InfNutri429.LLL   := Copy(AValue, 28, 3);
    InfNutri429.NNN   := Copy(AValue, 31, 3);
    InfNutri429.OOO   := Copy(AValue, 34, 3);
    InfNutri429.PPP   := Copy(AValue, 37, 3);
    InfNutri429.QQQ   := Copy(AValue, 40, 3);
    InfNutri429.UUUUU := Copy(AValue, 43, 5);
    InfNutri429.R     := Copy(AValue, 48, 1);
    InfNutri429.S     := Copy(AValue, 49, 1);
    InfNutri429.T     := Copy(AValue, 50, 1);
    InfNutri429.LLLLL := Copy(AValue, 51, 5);
    InfNutri429.GGGGG := Copy(AValue, 56, 5);
    InfNutri429.W     := ifThen(AValue.Length > 61, Copy(AValue, 61, 1), '');
    InfNutri429.AAAAA := ifThen(AValue.Length > 61, Copy(AValue, 62, 5), '');
    InfNutri429.BBBBB := ifThen(AValue.Length > 61, Copy(AValue, 67, 5), '');
    InfNutri429.CCCCC := ifThen(AValue.Length > 61, Copy(AValue, 72, 5), '');
    InfNutri429.DDDDD := ifThen(AValue.Length > 61, Copy(AValue, 77, 5), '');
    InfNutri429.E     := ifThen(AValue.Length > 61, Copy(AValue, 82, 1), '');
    InfNutri429.FFF   := ifThen(AValue.Length > 61, Copy(AValue, 83, 3), '');
    InfNutri429.GGG   := ifThen(AValue.Length > 61, Copy(AValue, 86, 3), '');
    InfNutri429.YYY   := ifThen(AValue.Length > 61, Copy(AValue, 89, 3), '');
    InfNutri429.ZZZZZ := ifThen(AValue.Length > 61, Copy(AValue, 92, 5), '');
  except
    on E: Exception do
    begin
      showmessage(E.Message);
    end;
  end;
end;

end.
