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
    procedure Alunoscompleto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UDM_Principal, UFrm_CadastroAlunosCompleto, UTClientes;

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

end.
