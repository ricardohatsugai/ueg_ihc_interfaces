program IHC_N1_UEG;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  UTClientes in 'UTClientes.pas',
  UTEstados in 'UTEstados.pas',
  UTCidades in 'UTCidades.pas',
  UTFaculdades in 'UTFaculdades.pas',
  UTCursos in 'UTCursos.pas',
  UDM_Principal in 'UDM_Principal.pas' {DM_Principal: TDataModule},
  UFrm_CadastroAlunosCompleto in 'UFrm_CadastroAlunosCompleto.pas' {Frm_Cadastro_Completo},
  UFrm_CadastroAlunosIncompleto in 'UFrm_CadastroAlunosIncompleto.pas' {Frm_CadastroIncompleto},
  UFrm_Listagem in 'UFrm_Listagem.pas' {Frm_Listagem},
  UFrm_About in 'UFrm_About.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
