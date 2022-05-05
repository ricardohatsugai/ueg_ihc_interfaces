unit UTCidades;

interface

type
  TCidades = class

  protected
    id : Integer;
    cidade : string;
    id_estado : Integer;

  private
    function GetCidade: string;
    function GetId: Integer;
    function GetId_Estado: Integer;
    procedure SetCidade(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetId_Estado(const Value: Integer);

  public
    property Fid : Integer read GetId write SetId;
    property Fcidade : string read GetCidade write SetCidade;
    property Fid_estado : Integer read GetId_Estado write SetId_Estado;

  end;

implementation

{ TCidades }

function TCidades.GetCidade: string;
begin
  Result := Self.cidade;
end;

function TCidades.GetId: Integer;
begin
  Result := Self.id;
end;

function TCidades.GetId_Estado: Integer;
begin
  Result := Self.id_estado;
end;

procedure TCidades.SetCidade(const Value: string);
begin
  Self.cidade := Value;
end;

procedure TCidades.SetId(const Value: Integer);
begin
  Self.id := Value;
end;

procedure TCidades.SetId_Estado(const Value: Integer);
begin
  Self.id_estado := Value;
end;

end.
