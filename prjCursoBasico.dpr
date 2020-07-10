program prjCursoBasico;

uses
  Vcl.Forms,
  uFormMain in 'Form\uFormMain.pas' {FormMain},
  uDmDados in 'Form\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  UFormConfigBanco in 'Form\UFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Form\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Form\uFormCadastroCliente.pas' {FormCadastroCliente},
  FormCadastroEstado in 'Form\FormCadastroEstado.pas' {FormCadastroEstados},
  FormCadastroCidade in 'Form\FormCadastroCidade.pas' {FormCadastroCidades};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormCadastroCliente, FormCadastroCliente);
  Application.CreateForm(TFormCadastroEstados, FormCadastroEstados);
  Application.CreateForm(TFormCadastroCidades, FormCadastroCidades);
  Application.Run;
end.
