unit uFormCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFormCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, MoneyEdit, dbmnyed, AdvEdit, AdvMoneyEdit,
  DBAdvMoneyEdit, Vcl.Buttons;

type
  TFormCadastroProduto = class(TFormCadastroPai)
    fdQryCadastroID_PRODUTO: TIntegerField;
    fdQryCadastroDESCRICAO: TWideStringField;
    fdQryCadastroQTDE: TSingleField;
    fdQryCadastroCUSTO: TSingleField;
    fdQryCadastroV_UNITARIO: TSingleField;
    fdQryCadastroUNIDADE: TWideStringField;
    fdQryCadastroPESO_LIQUIDO: TSingleField;
    fdQryCadastroPESO_BRUTO: TSingleField;
    fdQryCadastroFABRICANTE: TWideStringField;
    fdQryCadastroMARCA_MODELO: TWideStringField;
    fdQryCadastroID_FORNECEDOR: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtID: TDBEdit;
    edtDescricao: TDBEdit;
    edtUnidade: TDBEdit;
    edtFabricante: TDBEdit;
    edtMarcaModelo: TDBEdit;
    edtQtde: TDBAdvMoneyEdit;
    DBMoneyEdit2: TDBAdvMoneyEdit;
    edtVlUnitario: TDBAdvMoneyEdit;
    edtPesoLIquido: TDBAdvMoneyEdit;
    edtPesoBruto: TDBAdvMoneyEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroProduto: TFormCadastroProduto;

implementation

{$R *.dfm}

uses uLookup, uBiblioteca;

procedure TFormCadastroProduto.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQry(Lookup.fdQryFornecedor, '');
end;

end.
