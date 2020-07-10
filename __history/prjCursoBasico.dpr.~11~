program prjCursoBasico;

uses
  Vcl.Forms,
  uFormMain in 'Form\uFormMain.pas' {FormMain},
  uDmDados in 'Form\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  UFormConfigBanco in 'Form\UFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Form\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Form\uFormCadastroCliente.pas' {FormCadastroPai1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TFormCadastroPai1, FormCadastroPai1);
  Application.Run;
end.
