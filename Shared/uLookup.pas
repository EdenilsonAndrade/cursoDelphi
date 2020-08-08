unit uLookup;

interface

uses
  System.SysUtils, System.Classes, uDmDados, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TLookup = class(TDataModule)
    fdQryEstados: TFDQuery;
    dsEstados: TDataSource;
    fdTransection: TFDTransaction;
    fdQryCidades: TFDQuery;
    DdsCidades: TDataSource;
    fdQryFornecedor: TFDQuery;
    dsFornecedor: TDataSource;
    fdQryCliente: TFDQuery;
    dsCliente: TDataSource;
    fdQryProdutos: TFDQuery;
    dsProdutos: TDataSource;
    fdQryProdutosID_PRODUTO: TIntegerField;
    fdQryProdutosDESCRICAO: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Lookup: TLookup;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
