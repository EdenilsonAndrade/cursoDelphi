unit uFormConsultaFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaFornecedor = class(TFormFiltroPai)
    fdQryConsultaID_FORNECEDOR: TIntegerField;
    fdQryConsultaRAZAO_SOCIAL: TWideStringField;
    fdQryConsultaFANTASIA: TWideStringField;
    fdQryConsultaCNPJ: TWideStringField;
    fdQryConsultaENDERECO: TWideStringField;
    fdQryConsultaBAIRRO: TWideStringField;
    fdQryConsultaID_CIDADE: TIntegerField;
    fdQryConsultaID_ESTADO: TIntegerField;
    fdQryConsultaEMAIL: TWideStringField;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtCNPJ: TEdit;
    btnNovo: TButton;
    btnVisualizar: TButton;
    procedure btnConsultarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
  private
    procedure Consultar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaFornecedor: TFormConsultaFornecedor;

implementation

{$R *.dfm}

uses uFormCadastroFornecedor;

{ TFormFiltroPai1 }

procedure TFormConsultaFornecedor.btnConsultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure TFormConsultaFornecedor.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroFornecedor:= TFormCadastroFornecedor.Create(Self);
  try
    FormCadastroFornecedor.fdQryCadastro.Insert;
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;
end;

procedure TFormConsultaFornecedor.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQryVazia;
  FormCadastroFornecedor := TFormCadastroFornecedor.Create(Self);
  try
    FormCadastroFornecedor.fdQryCadastro.Locate('ID_FORNECEDOR', fdQryConsultaID_FORNECEDOR.AsInteger,[]);
    FormCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(FormCadastroFornecedor);
  end;
end;

procedure TFormConsultaFornecedor.Consultar;
begin
  fdQryConsulta.Close;
  fdQryConsulta.SQL.Clear;
  fdQryConsulta.SQL.Add('SELECT * FROM FORNECEDOR ');
  fdQryConsulta.SQL.Add('WHERE 1 = 1 ');

  if edtConsulta.Text <> '' then
    fdQryConsulta.SQL.Add('AND UPPER(RAZAO_SOCIAL) LIKE '+QuotedStr('%' + UpperCase(edtConsulta.text) + '%'));

  if edtCNPJ.Text <> '' then
    fdQryConsulta.SQL.Add(' AND UPPER(REPLACE(REPLACE(REPLACE(CNPJ, ''.'',''''),''-'',''''),''/'','''') ) LIKE ' +QuotedStr('%'+UpperCase(edtCNPJ.Text)+'%'));

  fdQryConsulta.Open;
  fdQryConsulta.FetchAll;
end;

end.
