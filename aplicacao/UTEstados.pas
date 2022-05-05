unit UTEstados;

interface

type
  TEstados = class

    protected
      id : Integer;
      estado : string;
    private
      function GetEstado: string;
      function GetId: Integer;
      procedure SetId(const Value: Integer);
      procedure SetEstado(const Value: string);

    public
      property Fid : Integer read GetId write SetId;
      property Festado : string read GetEstado write SetEstado;
  end;

implementation

{ TEstados }

function TEstados.GetEstado: string;
begin
  Result := Self.estado;
end;

function TEstados.GetId: Integer;
begin
  Result := Self.id;
end;

procedure TEstados.SetEstado(const Value: string);
begin
  Self.estado := Value;
end;

procedure TEstados.SetId(const Value: Integer);
begin
  Self.id := Value;
end;

end.
