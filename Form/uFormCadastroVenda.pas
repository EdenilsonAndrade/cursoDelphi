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
    procedure FormCreate(Sender: TObject);
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure fdQryCadastroAfterInsert(DataSet: TDataSet);
    procedure fdQryItensAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroVenda: TFormCadastroVenda;

implementation

{$R *.dfm}

uses uBiblioteca;

procedure TFormCadastroVenda.fdQryCadastroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryCadastroDT_EMISSAO.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (fdQryCadastroDT_FATURADO.IsNull) and (fdQryCadastroFATURADO.AsAnsiString = 'S') then
    fdQryCadastroDT_FATURADO.AsDateTime := Date;
end;

procedure TFormCadastroVenda.fdQryItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  fdQryItensID_VENDA.AsInteger := fdQryCadastroID_VENDA.AsInteger;
end;

procedure TFormCadastroVenda.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQry(Lookup.fdQryCliente);
  AtualizaFDQry(Lookup.fdQryProdutos);
end;

end.
