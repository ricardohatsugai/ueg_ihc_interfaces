program IHC_N1_UEG;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  UTClientes in 'UTClientes.pas',
  UTEstados in 'UTEstados.pas',
  UTCidades in 'UTCidades.pas',
  UTFaculdades in 'UTFaculdades.pas',
  UTCursos in 'UTCursos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
