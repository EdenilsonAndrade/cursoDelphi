unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TFormMain = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Estados1: TMenuItem;
    Cidades1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses uFormCadastroCliente, FormCadastroEstado, FormCadastroCidade;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  ShowMessage('Ok');
end;

procedure TFormMain.Cidades1Click(Sender: TObject);
begin
  FormCadastroCidades.Show;
end;

procedure TFormMain.Clientes1Click(Sender: TObject);
begin
  FormCadastroCliente.Show;
end;

procedure TFormMain.Estados1Click(Sender: TObject);
begin
  FormCadastroEstados.Show;
end;

end.
