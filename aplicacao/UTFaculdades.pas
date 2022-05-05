unit UTFaculdades;

interface

type
  TFaculdades = class

    protected
      id : Integer;
      faculdade : string;

    private
      function GetFaculdade: string;
      function GetId: Integer;
      procedure SetFaculdade(const Value: string);
      procedure SetId(const Value: Integer);

    public
      property Fid : Integer read GetId write SetId;
      property Ffaculdade : string read GetFaculdade write SetFaculdade;

  end;

implementation

{ TFaculdades }

function TFaculdades.GetFaculdade: string;
begin
  Result := Self.faculdade;
end;

function TFaculdades.GetId: Integer;
begin
  Result := Self.id;
end;

procedure TFaculdades.SetFaculdade(const Value: string);
begin
  Self.faculdade := Value;
end;

procedure TFaculdades.SetId(const Value: Integer);
begin
  Self.id := Value;
end;

end.
