unit UTClientes;

interface


type
  TClientes = class
  private
    function GetBairro: string;
    function GetCelular: string;
    function GetCep: string;
    function GetComplemento: string;
    function GetData: TDate;
    function GetEmail: string;
    function GetEndereco: string;
    function GetId: Integer;
    function GetId_Cidade: Integer;
    function GetId_Curso: Integer;
    function GetId_Estado: Integer;
    function GetId_Faculdade: Integer;
    function GetNome: string;
    function GetPeriodo: string;
    function GetTelefone: string;
    procedure SetBairro(const Value: string);
    procedure SetCelular(const Value: string);
    procedure SetCep(const Value: string);
    procedure SetComplemento(const Value: string);
    procedure SetData(const Value: TDate);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetId_Cidade(const Value: Integer);
    procedure SetId_Curso(const Value: Integer);
    procedure SetId_Estado(const Value: Integer);
    procedure SetId_Faculdade(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetPeriodo(const Value: string);
    procedure SetTelefone(const Value: string);

    protected
      id : Integer;
      data : TDate;
      nome : string;
      endereco : string;
      complemento : string;
      bairro : string;
      id_cidade : Integer;
      id_estado : Integer;
      cep : string;
      telefone : string;
      email : string;
      celular : string;
      id_faculdade : Integer;
      id_curso : Integer;
      periodo : string;

    public
      property Fid : Integer read GetId write SetId;
      property Fdata : TDate read GetData write SetData;
      property Fnome : string read GetNome write SetNome;
      property Fendereco : string read GetEndereco write SetEndereco;
      property Fcomplemento : string read GetComplemento write SetComplemento;
      property Fbairro : string read GetBairro write SetBairro;
      property Fid_cidade : Integer read GetId_Cidade write SetId_Cidade;
      property Fid_estado : Integer read GetId_Estado write SetId_Estado;
      property Fcep : string read GetCep write SetCep;
      property Ftelefone : string read GetTelefone write SetTelefone;
      property Femail : string read GetEmail write SetEmail;
      property FCelular : string read GetCelular write SetCelular;
      property Fid_faculdade : Integer read GetId_Faculdade write SetId_Faculdade;
      property Fid_curso : Integer read GetId_Curso write SetId_Curso;
      property Fperiodo : string read GetPeriodo write SetPeriodo;
  end;

implementation

{ TClientes }

function TClientes.GetBairro: string;
begin
  Result := Self.bairro;
end;

function TClientes.GetCelular: string;
begin
  Result := Self.celular;
end;

function TClientes.GetCep: string;
begin
  Result := Self.cep;
end;

function TClientes.GetComplemento: string;
begin
  Result := Self.complemento;
end;

function TClientes.GetData: TDate;
begin
  Result := Self.data;
end;

function TClientes.GetEmail: string;
begin
  Result := Self.email;
end;

function TClientes.GetEndereco: string;
begin
  Result := Self.endereco;
end;

function TClientes.GetId: Integer;
begin
  Result := Self.id;
end;

function TClientes.GetId_Cidade: Integer;
begin
  Result := Self.id_cidade;
end;

function TClientes.GetId_Curso: Integer;
begin
  Result := Self.id_curso;
end;

function TClientes.GetId_Estado: Integer;
begin
  Result := Self.id_estado;
end;

function TClientes.GetId_Faculdade: Integer;
begin
  Result := Self.id_faculdade;
end;

function TClientes.GetNome: string;
begin
  Result := Self.nome;
end;

function TClientes.GetPeriodo: string;
begin
  Result := Self.periodo;
end;

function TClientes.GetTelefone: string;
begin
  Result := Self.telefone;
end;

procedure TClientes.SetBairro(const Value: string);
begin
    Self.bairro := Value;
end;

procedure TClientes.SetCelular(const Value: string);
begin
    Self.celular := Value;
end;

procedure TClientes.SetCep(const Value: string);
begin
    Self.cep := Value;
end;

procedure TClientes.SetComplemento(const Value: string);
begin
    Self.complemento := Value;
end;

procedure TClientes.SetData(const Value: TDate);
begin
  Self.data := Value;
end;

procedure TClientes.SetEmail(const Value: string);
begin
  Self.email := Value;
end;

procedure TClientes.SetEndereco(const Value: string);
begin
  Self.endereco := Value;
end;

procedure TClientes.SetId(const Value: Integer);
begin
  Self.id := Value;
end;

procedure TClientes.SetId_Cidade(const Value: Integer);
begin
  Self.id_cidade := Value;
end;

procedure TClientes.SetId_Curso(const Value: Integer);
begin
  Self.id_curso := Value;
end;

procedure TClientes.SetId_Estado(const Value: Integer);
begin
  Self.id_estado := Value;
end;

procedure TClientes.SetId_Faculdade(const Value: Integer);
begin
  Self.id_faculdade := Value;
end;

procedure TClientes.SetNome(const Value: string);
begin
  Self.nome := Value;
end;

procedure TClientes.SetPeriodo(const Value: string);
begin
  Self.periodo := Value;
end;

procedure TClientes.SetTelefone(const Value: string);
begin
  Self.telefone := Value;
end;

end.
