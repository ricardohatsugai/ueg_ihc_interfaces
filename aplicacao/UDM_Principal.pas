unit UDM_Principal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDM_Principal = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQ_Clientes: TADOQuery;
    ADOQ_Clientesid: TAutoIncField;
    ADOQ_Clientesdata: TDateTimeField;
    ADOQ_Clientesnome: TWideStringField;
    ADOQ_Clientesendereco: TWideStringField;
    ADOQ_Clientescomplemento: TWideStringField;
    ADOQ_Clientesbairro: TWideStringField;
    ADOQ_Clientesid_cidade: TIntegerField;
    ADOQ_Clientesid_estado: TIntegerField;
    ADOQ_Clientescep: TWideStringField;
    ADOQ_Clientestelefone: TWideStringField;
    ADOQ_Clientesemail: TWideStringField;
    ADOQ_Clientescelular: TWideStringField;
    ADOQ_Clientesid_faculdade: TIntegerField;
    ADOQ_Clientesid_curso: TIntegerField;
    ADOQ_Clientesperiodo: TWideStringField;
    DSP_Clientes: TDataSetProvider;
    CDS_Clientes: TClientDataSet;
    CDS_Clientesid: TAutoIncField;
    CDS_Clientesdata: TDateTimeField;
    CDS_Clientesnome: TWideStringField;
    CDS_Clientesendereco: TWideStringField;
    CDS_Clientescomplemento: TWideStringField;
    CDS_Clientesbairro: TWideStringField;
    CDS_Clientesid_cidade: TIntegerField;
    CDS_Clientesid_estado: TIntegerField;
    CDS_Clientescep: TWideStringField;
    CDS_Clientestelefone: TWideStringField;
    CDS_Clientesemail: TWideStringField;
    CDS_Clientescelular: TWideStringField;
    CDS_Clientesid_faculdade: TIntegerField;
    CDS_Clientesid_curso: TIntegerField;
    CDS_Clientesperiodo: TWideStringField;
    DS_Clientes: TDataSource;
    ADOQ_Cidades: TADOQuery;
    ADOQ_Cidadesid: TAutoIncField;
    ADOQ_Cidadescidade: TWideStringField;
    ADOQ_Cidadesid_estado: TIntegerField;
    ADOQ_Estados: TADOQuery;
    ADOQ_Estadosid: TAutoIncField;
    ADOQ_Estadosestado: TWideStringField;
    ADOQ_Cidadesestado_lookup: TStringField;
    CDS_Clientescidade_lookup: TStringField;
    CDS_Clientesestado_lookup: TStringField;
    ADOQ_ClientesAuxiliar: TADOQuery;
    ADOQ_ClientesAuxiliarid: TAutoIncField;
    ADOQ_ClientesAuxiliarnome: TWideStringField;
    DataSource1: TDataSource;
    ADOQ_Faculdades: TADOQuery;
    ADOQ_Faculdadesid: TAutoIncField;
    ADOQ_Faculdadesfaculdade: TWideStringField;
    ADOQ_Cursos: TADOQuery;
    ADOQ_Cursosid: TAutoIncField;
    ADOQ_Cursoscurso: TWideStringField;
    ADOQ_Cursosid_faculdade: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Principal: TDM_Principal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
