unit uFormMain;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton;

type
  TFormMain = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage2: TAdvPage;
    AdvPage3: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    AdvToolBar3: TAdvToolBar;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    AdvGlowButton6: TAdvGlowButton;
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses FormCadastroCidade, FormCadastroEstado, uFormCadastroCliente,
  frmConsultaClientes;


procedure TFormMain.AdvGlowButton1Click(Sender: TObject);
begin
  FormCadastroCidades := TFormCadastroCidades.Create(Self);
  try
    FormCadastroCidades.ShowModal;
  finally
    FreeAndNil(FormCadastroCidades);
  end;
end;

procedure TFormMain.AdvGlowButton2Click(Sender: TObject);
begin
  FormCadastroEstados := TFormCadastroEstados.Create(Self);
  try
    FormCadastroEstados.ShowModal;
  finally
    FreeAndNil(FormCadastroEstados);
  end;
end;

procedure TFormMain.AdvGlowButton3Click(Sender: TObject);
begin
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormMain.AdvGlowButton6Click(Sender: TObject);
begin
  try
    FormConsultaClientes := TFormConsultaClientes.Create(Self);
    FormConsultaClientes.Show
  finally

  end;
end;

end.
