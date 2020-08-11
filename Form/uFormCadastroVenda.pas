unit uFormCadastroVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, uLookup, AdvEdit, AdvMoneyEdit, DBAdvMoneyEdit,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormCadastroVenda = class(TFormCadastroPai)
    fdQryCadastroID_VENDA: TIntegerField;
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroDT_EMISSAO: TDateField;
    fdQryCadastroFATURADO: TWideStringField;
    fdQryCadastroDT_FATURADO: TDateField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    edtDataFaturado: TDBEdit;
    edtCliente: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    edtData: TDBEdit;
    Label5: TLabel;
    fdQryItens: TFDQuery;
    dsItens: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    fdQryItensID_VENDA_ITEM: TFDAutoIncField;
    fdQryItensID_PRODUTO: TIntegerField;
    fdQryItensQTDE: TSingleField;
    fdQryItensVALOR_UNITARIO: TSingleField;
    fdQryItensDESCONTO: TSingleField;
    fdQryItensID_VENDA: TIntegerField;
    edtDescItem: TDBLookupComboBox;
    edtQtde: TAdvMoneyEdit;
    edtValUnitario: TAdvMoneyEdit;
    edtDesconto: TAdvMoneyEdit;
    edtSubTotal: TAdvMoneyEdit;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtTotal: TAdvMoneyEdit;
    btnIncluir: TButton;
    fdQryItensDescricaoProduto: TStringField;
    fdQryItensSubTotal: TFloatField;
    fdQryItensTotal: TFloatField;
    fdtItens: TFDTransaction;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtTotValBruto: TAdvMoneyEdit;
    edtTotDesconto: TAdvMoneyEdit;
    edtTotTotal: TAdvMoneyEdit;
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
    procedure fdQryCadastroAfterOpen(DataSet: TDataSet);
    procedure fdQryCadastroAfterScroll(DataSet: TDataSet);
    procedure fdQryCadastroCalcFields(DataSet: TDataSet);
    procedure fdQryItensAfterPost(DataSet: TDataSet);
    procedure fdQryItensAfterDelete(DataSet: TDataSet);
    procedure fdQryItensAfterCancel(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure edtDescItemClick(Sender: TObject);
  private
    procedure setItens(pIDVenda:integer);
    procedure GravarItem;
    procedure SetDadosProduto(pIDProduto : integer);
    procedure CalculaTotais;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVenda: TFormCadastroVenda;

implementation

{$R *.dfm}

uses uBiblioteca, uDmDados;

procedure TFormCadastroVenda.btnIncluirClick(Sender: TObject);
begin
  inherited;
  GravarItem;
end;

procedure TFormCadastroVenda.CalculaTotais;
var
  vQryTotal: TFDQuery;
  vSQL: string;
begin
  vQryTotal             := TFDQuery.Create(nil);
  vQryTotal.Transaction := fdtItens;
  vQryTotal.Connection  := dmDados.fdCon;
  try
    vSQL := 'SELECT SUM(QTDE * VALOR_UNITARIO) VALOR_BRUTO, SUM(COALESCE(DESCONTO,0)) DESCONTO, ' +#13 +
            'SUM((QTDE * VALOR_UNITARIO) - COALESCE(DESCONTO,0) TOTAL FROM VENDA_ITEM'+#13+
            'WHERE ID_VENDA = '+fdQryCadastroID_VENDA.AsString;
    AtualizaFDQry(vQryTotal, vSQL);
    edtTotValBruto.Value := vQryTotal.FieldByName('VALOR_BRUTO').AsFloat;
    edtTotDesconto.Value := vQryTotal.FieldByName('DESCONTO').AsFloat;
    edtTotal.Value       := vQryTotal.FieldByName('TOTAL').AsFloat;
  finally
    vQryTotal.Close;
    FreeAndNil(vQryTotal);
  end;
end;

procedure TFormCadastroVenda.edtDescItemClick(Sender: TObject);
begin
  inherited;
  SetDadosProduto(edtDescItem.KeyValue);
end;

procedure TFormCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDT_EMISSAO.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryCadastroAfterOpen(DataSet: TDataSet);
begin
  inherited;
  setItens(fdQryCadastroID_VENDA.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroAfterScroll(DataSet: TDataSet);
begin
  inherited;
  setItens(fdQryCadastroID_VENDA.AsInteger);
end;

procedure TFormCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (fdQryCadastroDT_FATURADO.IsNull) and (fdQryCadastroFATURADO.AsAnsiString = 'S') then
    fdQryCadastroDT_FATURADO.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryCadastroCalcFields(DataSet: TDataSet);
begin
  inherited;
  fdQryItensSubTotal.AsFloat := (fdQryItensQTDE.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat);
  fdQryItensTotal.AsFloat    := (fdQryItensQTDE.AsFloat * fdQryItensVALOR_UNITARIO.AsFloat) - fdQryItensDESCONTO.AsFloat;
end;

procedure TFormCadastroVenda.fdQryItensAfterCancel(DataSet: TDataSet);
begin
  inherited;
  fdtItens.RollbackRetaining;
end;

procedure TFormCadastroVenda.fdQryItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  fdtItens.CommitRetaining;
  CalculaTotais;
end;

procedure TFormCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA.AsInteger := fdQryCadastroID_VENDA.AsInteger;
end;

procedure TFormCadastroVenda.fdQryItensAfterPost(DataSet: TDataSet);
begin
  inherited;
  fdtItens.CommitRetaining;
  CalculaTotais;
end;

procedure TFormCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQry(Lookup.fdQryCliente, '');
  AtualizaFDQry(Lookup.fdQryProdutos, '');
end;

procedure TFormCadastroVenda.GravarItem;
begin
  fdQryItens.Append;
  fdQryItensID_PRODUTO.AsInteger   := Integer(edtDescItem.KeyValue);
  fdQryItensQTDE.AsFloat           := edtQtde.Value;
  fdQryItensVALOR_UNITARIO.AsFloat := edtValUnitario.Value;
  fdQryItensDESCONTO.AsFloat       := edtDesconto.Value;
  fdQryItens.Post;
end;

procedure TFormCadastroVenda.SetDadosProduto(pIDProduto: integer);
begin
  edtValUnitario.Value := Lookup.fdQryProdutosV_UNITARIO.AsFloat;
end;

procedure TFormCadastroVenda.setItens(pIDVenda: integer);
begin
  fdQryItens.Close;
  fdQryItens.ParamByName('ID_VENDA').AsInteger := pIDVenda;
  AtualizaFDQry(fdQryItens, '');
  CalculaTotais;
end;

end.
