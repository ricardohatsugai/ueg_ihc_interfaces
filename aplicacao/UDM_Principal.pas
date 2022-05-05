unit UDM_Principal;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDM_Principal = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTEstado: TADOTable;
    ADOTEstadoid: TAutoIncField;
    ADOTEstadoestado: TWideStringField;
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
