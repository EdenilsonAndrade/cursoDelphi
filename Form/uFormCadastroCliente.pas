unit uFormCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, uFormCadastroPai, uLookup;

type
  TFormCadastroCliente = class(TFormCadastroPai)
    fdQryCadastroID_CLIENTE: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL: TWideStringField;
    fdQryCadastroFANTASIA: TWideStringField;
    fdQryCadastroCPF_CNPJ: TWideStringField;
    fdQryCadastroTIPO_FJ: TWideStringField;
    fdQryCadastroNOME: TWideStringField;
    fdQryCadastroEMAIL: TWideStringField;
    fdQryCadastroSITE: TWideStringField;
    fdQryCadastroENDERECO: TWideStringField;
    fdQryCadastroCOMPLEMENTO: TWideStringField;
    fdQryCadastroNUMERO: TWideStringField;
    fdQryCadastroBAIRRO: TWideStringField;
    fdQryCadastroIE: TWideStringField;
    fdQryCadastroIM: TWideStringField;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    edtTipoFJ: TDBComboBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    fdQryCadastroID_CIDADE: TIntegerField;
    fdQryCadastroID_ESTADO: TIntegerField;
    Label13: TLabel;
    Label14: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroCliente: TFormCadastroCliente;

implementation

{$R *.dfm}

procedure TFormCadastroCliente.FormShow(Sender: TObject);
begin
  inherited;
  //  carrega as informações do cadastro de estados
  Lookup.fdQryEstados.Open();
  Lookup.fdQryEstados.FetchAll;
  //  carrega os dados do cadastro de cidades
  Lookup.fdQryCidades.Open();
  lookup.fdQryCidades.FetchAll;
end;

end.
