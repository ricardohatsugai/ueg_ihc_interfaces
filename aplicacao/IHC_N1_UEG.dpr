program IHC_N1_UEG;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  UTClientes in 'UTClientes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.