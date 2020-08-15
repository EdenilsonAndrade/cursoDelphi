unit uFormConsultaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Vcl.Buttons;

type
  TFormConsultaVenda = class(TFormFiltroPai)
    dtIni: TDateTimePicker;
    dtFim: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    edtCodigoVenda: TEdit;
    Label4: TLabel;
    cbFaturado: TCheckBox;
    DBGrid1: TDBGrid;
    btnImprimir: TBitBtn;
    frVendas: TfrxReport;
    frDBVendas: TfrxDBDataset;
    fdQryRelatorio: TFDQuery;
    fdQryRelatorioID_VENDA: TIntegerField;
    fdQryRelatorioID_CLIENTE: TIntegerField;
    fdQryRelatorioCLIENTE: TWideStringField;
    fdQryRelatorioDT_EMISSAO: TDateField;
    fdQryRelatorioFATURADO: TWideStringField;
    fdQryRelatorioPRODUTO: TWideStringField;
    fdQryRelatorioQTDE: TSingleField;
    fdQryRelatorioVALOR_UNITARIO: TSingleField;
    fdQryRelatorioVALOR_BRUTO: TFloatField;
    fdQryRelatorioDESCONTO: TSingleField;
    fdQryRelatorioVALOR_LIQ: TFloatField;
    procedure btnConsultarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    procedure Consultar;
    procedure setFiltro(const pQuery: TFDQuery);
    procedure Imprimir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaVenda: TFormConsultaVenda;

implementation

{$R *.dfm}

uses uDmDados;

{ TFormConsultaVenda }

procedure TFormConsultaVenda.btnConsultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure TFormConsultaVenda.btnImprimirClick(Sender: TObject);
begin
  inherited;
  Imprimir;
end;

procedure TFormConsultaVenda.Consultar;
begin
  fdQryConsulta.Close;
  fdQryConsulta.SQL.Clear;
  fdQryConsulta.SQL.Add('SELECT V.ID_VENDA, ');
  fdQryConsulta.SQL.Add('       V.ID_CLIENTE, ');
  fdQryConsulta.SQL.Add('       DECODE(C.TIPO_FJ, ''F'', C.NOME, C.RAZAO_SOCIAL) CLIENTE, ');
  fdQryConsulta.SQL.Add('       V.DT_EMISSAO, ');
  fdQryConsulta.SQL.Add('       COALESCE(V.FATURADO, ''N'') FATURADO ');
  fdQryConsulta.SQL.Add('  FROM venda V ');
  fdQryConsulta.SQL.Add('  INNER JOIN CLIENTE C ON (C.ID_CLIENTE = V.ID_CLIENTE) ');
  fdQryConsulta.SQL.Add('  WHERE 1 = 1 ');
  setFiltro(fdQryConsulta);
  fdQryConsulta.Open;
  fdQryConsulta.FetchAll;


end;

procedure TFormConsultaVenda.FormShow(Sender: TObject);
begin
  inherited;
  dtIni.Date := date;
  dtFim.Date := date;
end;

procedure TFormConsultaVenda.Imprimir;
begin
  fdQryRelatorio.Close;
  fdQryRelatorio.SQL.Clear;
  fdQryRelatorio.SQL.Add('SELECT V.ID_VENDA, ');
  fdQryRelatorio.SQL.Add('     V.ID_CLIENTE, ');
  fdQryRelatorio.SQL.Add('     DECODE(C.TIPO_FJ, ''F'', C.NOME, C.RAZAO_SOCIAL) CLIENTE, ');
  fdQryRelatorio.SQL.Add('     V.DT_EMISSAO, ');
  fdQryRelatorio.SQL.Add('     COALESCE(V.FATURADO, ''N'') FATURADO, ');
  fdQryRelatorio.SQL.Add('     P.DESCRICAO PRODUTO, ');
  fdQryRelatorio.SQL.Add('     VI.QTDE, ');
  fdQryRelatorio.SQL.Add('     VI.VALOR_UNITARIO, ');
  fdQryRelatorio.SQL.Add('     (VI.VALOR_UNITARIO * VI.QTDE) VALOR_BRUTO, ');
  fdQryRelatorio.SQL.Add('     COALESCE(VI.DESCONTO,0) DESCONTO, ');
  fdQryRelatorio.SQL.Add('     (VI.QTDE * VI.VALOR_UNITARIO) - COALESCE(VI.DESCONTO,0) VALOR_LIQ ');
  fdQryRelatorio.SQL.Add('  FROM venda V ');
  fdQryRelatorio.SQL.Add('      INNER JOIN CLIENTE C ON (C.ID_CLIENTE = V.ID_CLIENTE) ');
  fdQryRelatorio.SQL.Add('      INNER JOIN VENDA_ITEM VI ON (VI.ID_VENDA = V.ID_VENDA) ');
  fdQryRelatorio.SQL.Add('      INNER JOIN PRODUTO P ON (P.ID_PRODUTO = VI.ID_PRODUTO) ');
  fdQryRelatorio.SQL.Add('WHERE 1 = 1 ');
  setFiltro(fdQryRelatorio);
  fdQryRelatorio.SQL.Add('  ORDER BY DECODE(C.TIPO_FJ, ''F'', C.NOME, C.RAZAO_SOCIAL), ');
  fdQryRelatorio.SQL.Add('           P.DESCRICAO ');
  fdQryRelatorio.Open;
  fdQryRelatorio.FetchAll;

end;

procedure TFormConsultaVenda.setFiltro(const pQuery: TFDQuery);
begin
  if edtConsulta.Text <>'' then
    pQuery.SQL.Add(' AND UPPER(DECODE(C.TIPO_FJ, ''F'', C.NOME, C.RAZAO_SOCIAL)) LIKE '+QuotedStr('%'+UpperCase(edtConsulta.Text)+'%'));

  if dtIni.Date > 0 then
    pQuery.SQL.Add(' AND V.DT_EMISSAO >= '+QuotedStr(FormatDateTime('YYYY-MM-DD', dtIni.Date)));

  if dtFim.Date > 0 then
    pQuery.SQL.Add(' AND V.DT_EMISSAO <= '+QuotedStr(FormatDateTime('YYY-MM-DD',dtFim.Date)));

  if edtCodigoVenda.Text <> '' then
    pQuery.SQL.Add(' AND V.ID_VENDA = '+edtCodigoVenda.Text);

  if cbFaturado.Checked then
    pQuery.SQL.Add(' AND V.FATURADO = ''S'' ');
end;

end.
