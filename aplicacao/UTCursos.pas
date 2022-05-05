unit UTCursos;

interface

type
  TCursos = class

    protected
      id : Integer;
      curso : string;
      id_faculdade : Integer;
    private
      function GetCurso: string;
      function GetId: Integer;
      function GetId_Faculdade: Integer;
      procedure SetCurso(const Value: string);
      procedure SetId(const Value: Integer);
      procedure SetId_Faculdade(const Value: Integer);

    public
      property Fid : Integer read GetId write SetId;
      property Fcurso : string read GetCurso write SetCurso;
      property Fid_faculdade : Integer read GetId_Faculdade write SetId_Faculdade;

  end;

implementation

{ TCursos }

function TCursos.GetCurso: string;
begin
  Result := Self.curso;
end;

function TCursos.GetId: Integer;
begin
  Result := Self.id;
end;

function TCursos.GetId_Faculdade: Integer;
begin
  Result := Self.id_faculdade;
end;

procedure TCursos.SetCurso(const Value: string);
begin
  Self.curso := Value;
end;

procedure TCursos.SetId(const Value: Integer);
begin
  Self.id := Value;
end;

procedure TCursos.SetId_Faculdade(const Value: Integer);
begin
  Self.id_faculdade := Value;
end;

end.
