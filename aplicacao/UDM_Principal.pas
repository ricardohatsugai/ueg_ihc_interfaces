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
