unit UFrm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin;

type
  TFrm_Principal = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Alunos1: TMenuItem;
    Alunoscompleto1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Pesquisa1: TMenuItem;
    Listagemdealunos1: TMenuItem;
    Sobre1: TMenuItem;
    Sobreesteprograma1: TMenuItem;
    procedure Alunoscompleto1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Listagemdealunos1Click(Sender: TObject);
    procedure Sobreesteprograma1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UDM_Principal, UFrm_CadastroAlunosCompleto, UTClientes,
  UFrm_CadastroAlunosIncompleto, UFrm_Listagem, UFrm_About;

procedure TFrm_Principal.Alunos1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TDM_Principal, DM_Principal);
    Application.CreateForm(TFrm_CadastroIncompleto, Frm_CadastroIncompleto);

    Frm_CadastroIncompleto.ShowModal;
  Finally
    FreeAndNil(Frm_CadastroIncompleto);
    FreeAndNil(DM_Principal);
  End;
end;

procedure TFrm_Principal.Alunoscompleto1Click(Sender: TObject);
begin
Try
  Application.CreateForm(TDM_Principal, DM_Principal);
  Application.CreateForm(TFrm_Cadastro_Completo, Frm_Cadastro_Completo);

  Frm_Cadastro_Completo.ShowModal;

Finally
  FreeAndNil(Frm_Cadastro_Completo);
  FreeAndNil(DM_Principal);
End;
end;

procedure TFrm_Principal.Listagemdealunos1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TDM_Principal, DM_Principal);
    Application.CreateForm(TFrm_Listagem, Frm_Listagem);

    DM_Principal.ADOQ_Relatorio.Active := True;

    Frm_Listagem.ShowModal;

    DM_Principal.ADOQ_Relatorio.Active := False;

  Finally
    FreeAndNil(Frm_Listagem);
    FreeAndNil(DM_Principal);
  End;
end;

procedure TFrm_Principal.Sobreesteprograma1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TAboutBox, AboutBox);
    AboutBox.ShowModal;
  Finally
    FreeAndNil(AboutBox);
  End;
end;

end.
