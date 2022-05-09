unit UFrm_CadastroAlunosCompleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TFrm_Cadastro_Completo = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Lbl_Data: TLabel;
    MaskEdit_Data: TMaskEdit;
    Lbl_Nome: TLabel;
    Edit_Nome: TEdit;
    Lbl_Endereco: TLabel;
    Edit_Endereco: TEdit;
    Lbl_Complemento: TLabel;
    Edit_Complemento: TEdit;
    Lbl_Bairro: TLabel;
    Edit_Bairro: TEdit;
    Lbl_Estado: TLabel;
    Cmb_Estado: TComboBox;
    Lbl_Cidade: TLabel;
    Cmd_Cidade: TComboBox;
    Lbl_Cep: TLabel;
    MaskEdit_Cep: TMaskEdit;
    Lbl_Telefone: TLabel;
    MaskEdit_Telefone: TMaskEdit;
    Lbl_Email: TLabel;
    Edit_Email: TEdit;
    Lbl_Celular: TLabel;
    MaskEdit_Celular: TMaskEdit;
    Lbl_Faculdade: TLabel;
    CMB_Faculdade: TComboBox;
    Lbl_Curso: TLabel;
    Cmb_Curso: TComboBox;
    Lbl_Periodo: TLabel;
    Edit_Periodo: TEdit;
    Btn_Salvar: TBitBtn;
    Btn_Cancerlar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Cmb_EstadoExit(Sender: TObject);
    procedure CMB_FaculdadeExit(Sender: TObject);
    procedure CMB_FaculdadeEnter(Sender: TObject);
    procedure Edit_PeriodoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_CancerlarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Completo: TFrm_Cadastro_Completo;

implementation

{$R *.dfm}

uses UDM_Principal, UTClientes;

procedure TFrm_Cadastro_Completo.Btn_CancerlarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente cancelar?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = IDYES then
      ModalResult := -1;

end;

procedure TFrm_Cadastro_Completo.Cmb_EstadoExit(Sender: TObject);
begin
  DM_Principal.ADOConnection1.Connected := True;
  DM_Principal.ADOQ_Estados.Active := True;

  if DM_Principal.ADOQ_Estados.Locate('estado', Cmb_Estado.Text, []) then
    DM_Principal.ADOQ_Cidades.Parameters[0].Value := DM_Principal.ADOQ_Estadosid.AsInteger;

  DM_Principal.ADOQ_Cidades.Active := True;
  DM_Principal.ADOQ_Cidades.First;

  while not DM_Principal.ADOQ_Cidades.Eof do
  begin
      Cmd_Cidade.Items.Add(DM_Principal.ADOQ_Cidadescidade.AsString);
      DM_Principal.ADOQ_Cidades.Next;
  end;

  DM_Principal.ADOQ_Cidades.Active := False;
  DM_Principal.ADOQ_Estados.Active := False;
  DM_Principal.ADOConnection1.Connected := False;
end;

procedure TFrm_Cadastro_Completo.CMB_FaculdadeEnter(Sender: TObject);
begin
  if Cmb_Curso.Text <> '' then
      Cmb_Curso.Clear;
end;

procedure TFrm_Cadastro_Completo.CMB_FaculdadeExit(Sender: TObject);
begin
  DM_Principal.ADOConnection1.Connected := True;
  DM_Principal.ADOQ_Faculdades.Active := True;

  if DM_Principal.ADOQ_Faculdades.Locate('faculdade', CMB_Faculdade.Text, []) then
      DM_Principal.ADOQ_Cursos.Parameters[0].Value := DM_Principal.ADOQ_Faculdadesid.AsInteger;

  DM_Principal.ADOQ_Cursos.Active := True;
  DM_Principal.ADOQ_Cursos.First;

  while not DM_Principal.ADOQ_Cursos.Eof do
  begin
      Cmb_Curso.Items.Add(DM_Principal.ADOQ_Cursoscurso.AsString);
      DM_Principal.ADOQ_Cursos.Next;
  end;

  DM_Principal.ADOQ_Cursos.Active := False;
  DM_Principal.ADOQ_Faculdades.Active := False;
  DM_Principal.ADOConnection1.Connected := False;
end;

procedure TFrm_Cadastro_Completo.Edit_PeriodoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if not (CharInSet(Key, ['0'..'9', #8])) then
    begin
      Key := #0;
      ShowMessage('Só é permitido digitação de números!');
    end;
end;

procedure TFrm_Cadastro_Completo.FormShow(Sender: TObject);
begin
  MaskEdit_Data.Text := DateToStr(Now);
  Edit_Nome.SetFocus;

  {Este trecho abaixo, carrega todas faculdades da tabela Faculdades, para o campo
    combobox}

  DM_Principal.ADOConnection1.Connected := True;
  DM_Principal.ADOQ_Faculdades.Active := True;

  while not DM_Principal.ADOQ_Faculdades.Eof do
  begin
      CMB_Faculdade.Items.Add(DM_Principal.ADOQ_Faculdadesfaculdade.AsString);
      DM_Principal.ADOQ_Faculdades.Next;
  end;

  DM_Principal.ADOQ_Faculdades.Active := False;

  {Este trecho abaixo, carrega todos os estados da tabela Estados, para o campo
    combobox}

  DM_Principal.ADOQ_Estados.Active := True;
  DM_Principal.ADOQ_Estados.First;
  while not DM_Principal.ADOQ_Estados.Eof do
  begin
    Cmb_Estado.Items.Add(DM_Principal.ADOQ_Estadosestado.AsString);
    DM_Principal.ADOQ_Estados.Next;
  end;

  DM_Principal.ADOQ_Estados.Active := False;
  DM_Principal.ADOConnection1.Connected := False;

end;

end.
