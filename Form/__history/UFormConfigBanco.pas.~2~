unit UFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  uBiblioteca, Vcl.StdCtrls, uFormMain;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    opnDiretorio: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Config;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

{ TFormConfigBanco }

procedure TFormConfigBanco.Button1Click(Sender: TObject);
begin
  Config;
end;

procedure TFormConfigBanco.Config;
var
  vFileName: string;
begin
  if opnDiretorio.Execute then
  begin
    edtLocal.Text := opnDiretorio.FileName;
    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
    setValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
    ShowMessage('Configurado!');
    Self.Close;
  end;

end;

procedure TFormConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
