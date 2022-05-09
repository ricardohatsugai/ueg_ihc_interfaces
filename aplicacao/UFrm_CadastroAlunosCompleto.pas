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
    procedure Btn_SalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cmb_EstadoEnter(Sender: TObject);
  private
    { Private declarations }
    flag_fechar : Integer; // 0 = cadastro não finalizado e 1 = cadastro finalizado
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
  //if Application.MessageBox('Deseja realmente cancelar?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = IDYES then
      ModalResult := -1;

end;

procedure TFrm_Cadastro_Completo.Btn_SalvarClick(Sender: TObject);
begin
  DM_Principal.ADOQ_ClientesAuxiliar.Active := True;
  if DM_Principal.ADOQ_ClientesAuxiliar.Locate('nome', Edit_Nome.Text, []) then
  begin
    ShowMessage('Cliente já cadastrado');
  end else
  begin
    if Edit_Nome.Text = '' then
    begin
      ShowMessage('O campo nome não pode ser nulo!');
      Edit_Nome.SetFocus;
    end else
        if Edit_Endereco.Text = '' then
        begin
          ShowMessage('O campo endereço não pode ser nulo!');
          Edit_Endereco.SetFocus;
        end else
            if Edit_Bairro.Text = '' then
            begin
              ShowMessage('O campo bairro não pode ser nulo!');
              Edit_Bairro.SetFocus;
            end else
              if Edit_Email.Text = '' then
              begin
                ShowMessage('O campo e-mail não pode ser nulo!');
                Edit_Email.SetFocus;
              end else
                if Edit_Periodo.Text = '' then
                begin
                  ShowMessage('O campo período não pode ser nulo!');
                  Edit_Periodo.SetFocus;
                end else
                  if Cmb_Estado.Text = '' then
                  begin
                    ShowMessage('Você tem que escolher um estado!');
                    Cmd_Cidade.SetFocus;
                  end else
                    if Cmd_Cidade.Text = '' then
                    begin
                      ShowMessage('Você tem que escolher uma cidade');
                    end else
                    if CMB_Faculdade.Text = '' then
                    begin
                      ShowMessage('Você tem que escolher uma faculdade!');
                      CMB_Faculdade.SetFocus;
                    end else
                      if Cmb_Curso.Text = '' then
                      begin
                        ShowMessage('Você tem que escolher um curso!');
                        Cmb_Curso.SetFocus;
                      end else
                        if MaskEdit_Cep.Text = '' then
                        begin
                          ShowMessage('Cep nulo!');
                          MaskEdit_Cep.SetFocus;
                        end else
                          if MaskEdit_Telefone.Text = '' then
                          begin
                            ShowMessage('Telefone inváido!');
                            MaskEdit_Telefone.SetFocus;
                          end else
                            if MaskEdit_Celular.Text = '' then
                            begin
                              ShowMessage('Celular inválido!');
                              MaskEdit_Celular.SetFocus;
                            end else
                            begin
                              DM_Principal.ADOConnection1.Connected := True;
                              DM_Principal.CDS_Clientes.Active := True;
                              DM_Principal.CDS_Clientes.Insert;
                              DM_Principal.CDS_Clientesdata.Value := StrToDate(MaskEdit_Data.Text);
                              DM_Principal.CDS_Clientesnome.Value := Edit_Nome.Text;
                              DM_Principal.CDS_Clientesendereco.Value := Edit_Endereco.Text;
                              DM_Principal.CDS_Clientescomplemento.Value := Edit_Complemento.Text;
                              DM_Principal.CDS_Clientesbairro.Value := Edit_Bairro.Text;

                              DM_Principal.ADOQ_Cidades.Active := True;
                              if DM_Principal.ADOQ_Cidades.Locate('cidade', Cmd_Cidade.Text, []) then
                                DM_Principal.CDS_Clientesid_cidade.Value := DM_Principal.ADOQ_Cidadesid.AsInteger;
                              DM_Principal.ADOQ_Cidades.Active := False;

                              DM_Principal.ADOQ_Estados.Active := True;
                              if DM_Principal.ADOQ_Estados.Locate('estado', Cmb_Estado.Text, []) then
                                DM_Principal.CDS_Clientesid_estado.Value := DM_Principal.ADOQ_Estadosid.AsInteger;
                              DM_Principal.ADOQ_Estados.Active := False;

                              DM_Principal.CDS_Clientescep.Value := MaskEdit_Cep.Text;
                              DM_Principal.CDS_Clientestelefone.Value := MaskEdit_Telefone.Text;
                              DM_Principal.CDS_Clientesemail.Value := Edit_Email.Text;
                              DM_Principal.CDS_Clientescelular.Value := MaskEdit_Celular.Text;

                              DM_Principal.ADOQ_Faculdades.Active := True;
                              if DM_Principal.ADOQ_Faculdades.Locate('faculdade', CMB_Faculdade.Text, []) then
                                  DM_Principal.CDS_Clientesid_faculdade.Value := DM_Principal.ADOQ_Faculdadesid.AsInteger;
                              DM_Principal.ADOQ_Faculdades.Active := False;

                              DM_Principal.ADOQ_Cursos.Active := True;
                              if DM_Principal.ADOQ_Cursos.Locate('curso', Cmb_Curso.Text, []) then
                                  DM_Principal.CDS_Clientesid_curso.Value := DM_Principal.ADOQ_Cursosid.AsInteger;
                              DM_Principal.ADOQ_Cursos.Active := False;

                              DM_Principal.CDS_Clientesperiodo.Value := Edit_Periodo.Text;


                              DM_Principal.CDS_Clientes.Post;
                              DM_Principal.CDS_Clientes.ApplyUpdates(-1);
                              DM_Principal.CDS_Clientes.Active := False;
                              DM_Principal.ADOConnection1.Connected := False;
                              flag_fechar := 1; // flag recebe 1 = cadastro efetivado.
                              ModalResult := -1;


                            end;
  end;


end;

procedure TFrm_Cadastro_Completo.Cmb_EstadoEnter(Sender: TObject);
begin
    {Este trecho abaixo, carrega todos os estados da tabela Estados, para o campo
    combobox}
  Cmd_Cidade.Clear;

  DM_Principal.ADOQ_Estados.Active := True;
  DM_Principal.ADOQ_Estados.First;
  while not DM_Principal.ADOQ_Estados.Eof do
  begin
    Cmb_Estado.Items.Add(DM_Principal.ADOQ_Estadosestado.AsString);
    DM_Principal.ADOQ_Estados.Next;
  end;

  DM_Principal.ADOQ_Estados.Active := False;
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

procedure TFrm_Cadastro_Completo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if flag_fechar = 0 then
  begin
    if Application.MessageBox('Deseja realmente cancelar?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = IDNO then
      Abort;
  end;
end;

procedure TFrm_Cadastro_Completo.FormShow(Sender: TObject);
begin
  flag_fechar := 0; // Flag de fechar janela, recebe 0, cadastro não efetivado.

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
