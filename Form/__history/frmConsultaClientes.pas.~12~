unit frmConsultaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaClientes = class(TFormFiltroPai)
    DBGrid1: TDBGrid;
    edtFantasia: TEdit;
    edtCNPJ: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtCodigo: TEdit;
    btnNovo: TButton;
    btnVisualizar: TButton;
    fdQryConsultaID_CLIENTE: TIntegerField;
    fdQryConsultaRAZAO_SOCIAL: TWideStringField;
    fdQryConsultaFANTASIA: TWideStringField;
    fdQryConsultaCPF_CNPJ: TWideStringField;
    fdQryConsultaTIPO_FJ: TWideStringField;
    fdQryConsultaNOME: TWideStringField;
    fdQryConsultaEMAIL: TWideStringField;
    fdQryConsultaSITE: TWideStringField;
    fdQryConsultaENDERECO: TWideStringField;
    fdQryConsultaCOMPLEMENTO: TWideStringField;
    fdQryConsultaNUMERO: TWideStringField;
    fdQryConsultaBAIRRO: TWideStringField;
    fdQryConsultaIE: TWideStringField;
    fdQryConsultaIM: TWideStringField;
    fdQryConsultaDT_EXCLUIDO: TDateField;
    fdQryConsultaID_CIDADE: TIntegerField;
    fdQryConsultaID_ESTADO: TIntegerField;
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
  FormConsultaClientes: TFormConsultaClientes;

implementation

{$R *.dfm}

uses uFormCadastroCliente;

{ TFormConsultaClientes }

procedure TFormConsultaClientes.btnConsultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure TFormConsultaClientes.btnNovoClick(Sender: TObject);
begin
  inherited;
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.fdQryCadastro.Insert;
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormConsultaClientes.btnVisualizarClick(Sender: TObject);
begin
  inherited;
  FormCadastroCliente := TFormCadastroCliente.Create(Self);
  try
    FormCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE', fdQryConsultaID_CLIENTE.AsInteger,[]);
    FormCadastroCliente.ShowModal;
  finally
    FreeAndNil(FormCadastroCliente);
  end;
end;

procedure TFormConsultaClientes.Consultar;
begin
  fdQryConsulta.Close;
  fdQryConsulta.SQL.Clear;
  fdQryConsulta.SQL.Add('SELECT * FROM CLIENTE');
  fdQryConsulta.SQL.Add('WHERE 1 = 1');

  if edtConsulta.Text <> '' then
    fdQryConsulta.SQL.Add(' AND UPPER(RAZAO_SOCIAL) LIKE '+QuotedStr('%'+UpperCase(edtConsulta.Text)+'%'));

  if edtFantasia.Text <> '' then
    fdQryConsulta.SQL.Add(' AND UPPER(FANTASIA) LIKE '+ QuotedStr('%'+UpperCase(edtFantasia.Text+'%')));

  if edtCNPJ.Text <> '' then
    fdQryConsulta.SQL.Add(' AND UPPER(REPLACE(REPLACE(REPLACE(CPF_CNPJ, ''.'',''''),''-'',''''),''/'','''') ) LIKE ' +QuotedStr('%'+UpperCase(edtCNPJ.Text)+'%'));

  if StrToIntDef(edtCodigo.Text,0) > 0  then
    fdQryConsulta.SQL.Add('AND ID_CLIENTE = '+edtCodigo.Text);

  fdQryConsulta.Open();
  fdQryConsulta.FetchAll;
end;



end.
