unit uFormConsultaProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaProdutos = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    edtDescricao: TEdit;
    Label2: TLabel;
    fdQryConsultaID_PRODUTO: TIntegerField;
    fdQryConsultaDESCRICAO: TWideStringField;
    fdQryConsultaQTDE: TSingleField;
    fdQryConsultaCUSTO: TSingleField;
    fdQryConsultaV_UNITARIO: TSingleField;
    fdQryConsultaUNIDADE: TWideStringField;
    fdQryConsultaPESO_LIQUIDO: TSingleField;
    fdQryConsultaPESO_BRUTO: TSingleField;
    fdQryConsultaFABRICANTE: TWideStringField;
    fdQryConsultaMARCA_MODELO: TWideStringField;
    fdQryConsultaFORNECEDOR: TWideStringField;
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
  FormConsultaProdutos: TFormConsultaProdutos;

implementation

{$R *.dfm}

uses uFormCadastroProduto;

procedure TFormConsultaProdutos.btnConsultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure TFormConsultaProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroProduto:= TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.fdQryCadastro.Insert;
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormConsultaProdutos.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQryVazia;
  FormCadastroProduto := TFormCadastroProduto.Create(Self);
  try
    FormCadastroProduto.fdQryCadastro.Locate('ID_PRODUTO', fdQryConsultaID_PRODUTO.AsInteger,[]);
    FormCadastroProduto.ShowModal;
  finally
    FreeAndNil(FormCadastroProduto);
  end;
end;

procedure TFormConsultaProdutos.Consultar;
begin
  fdQryConsulta.Close;
  fdQryConsulta.SQL.Clear;
  fdQryConsulta.SQL.Add('SELECT P.ID_PRODUTO, ');
  fdQryConsulta.SQL.Add('       P.DESCRICAO, ');
  fdQryConsulta.SQL.Add('       P.QTDE, ');
  fdQryConsulta.SQL.Add('       P.CUSTO, ');
  fdQryConsulta.SQL.Add('       P.V_UNITARIO, ');
  fdQryConsulta.SQL.Add('       P.UNIDADE, ');
  fdQryConsulta.SQL.Add('       P.PESO_LIQUIDO, ');
  fdQryConsulta.SQL.Add('       P.PESO_BRUTO, ');
  fdQryConsulta.SQL.Add('       P.FABRICANTE, ');
  fdQryConsulta.SQL.Add('       P.MARCA_MODELO, ');
  fdQryConsulta.SQL.Add('       F.RAZAO_SOCIAL FORNECEDOR ');
  fdQryConsulta.SQL.Add('    FROM PRODUTO P ');
  fdQryConsulta.SQL.Add('    LEFT JOIN FORNECEDOR F ON F.ID_FORNECEDOR = P.ID_FORNECEDOR ');
  fdQryConsulta.SQL.Add('   WHERE 1 = 1 ');

  if StrToIntDef(edtConsulta.Text,0) > 0 then
    fdQryConsulta.SQL.Add(' AND P.ID_PRODUTO = '+edtConsulta.Text);

  if edtDescricao.Text <> '' then
    fdQryConsulta.SQL.Add(' AND UPPER(P.DESCRICAO) LIKE '+QuotedStr('%'+UpperCase(edtDescricao.Text)+'%'));

  fdQryConsulta.Open;
  fdQryConsulta.FetchAll;
end;

end.
