program prjCursoBasico;

uses
  Vcl.Forms,
  uDmDados in 'Form\uDmDados.pas' {dmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  UFormConfigBanco in 'Form\UFormConfigBanco.pas' {FormConfigBanco},
  uFormCadastroPai in 'Form\uFormCadastroPai.pas' {FormCadastroPai},
  uFormCadastroCliente in 'Form\uFormCadastroCliente.pas' {FormCadastroCliente},
  FormCadastroEstado in 'Form\FormCadastroEstado.pas' {FormCadastroEstados},
  FormCadastroCidade in 'Form\FormCadastroCidade.pas' {FormCadastroCidades},
  uLookup in 'Shared\uLookup.pas' {Lookup: TDataModule},
  uFormMain in 'Form\uFormMain.pas' {FormMain},
  frmFiltroPai in 'Form\frmFiltroPai.pas' {FormFiltroPai},
  frmConsultaClientes in 'Form\frmConsultaClientes.pas' {FormConsultaClientes},
  uFormCadastroFornecedor in 'Form\uFormCadastroFornecedor.pas' {FormCadastroFornecedor},
  uFormConsultaFornecedores in 'Form\uFormConsultaFornecedores.pas' {FormConsultaFornecedor},
  uFormConsultaProdutos in 'Form\uFormConsultaProdutos.pas' {FormConsultaProdutos},
  uFormCadastroProduto in 'Form\uFormCadastroProduto.pas' {FormCadastroProduto},
  uFormCadastroVenda in 'Form\uFormCadastroVenda.pas' {FormCadastroVenda},
  uFormConsultaVenda in 'Form\uFormConsultaVenda.pas' {FormConsultaVenda},
  Vcl.Themes,
  Vcl.Styles,
  uFormConsultaUsuarios in 'Form\uFormConsultaUsuarios.pas' {FormConsultaUsuarios},
  uFormCadastroUsuario in 'Form\uFormCadastroUsuario.pas' {FormCadastroUsuario},
  uCrpt in 'Classes\uCrpt.pas',
  uFormLogin in 'Form\uFormLogin.pas' {FormLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TLookup, Lookup);
  Application.Run;
end.
