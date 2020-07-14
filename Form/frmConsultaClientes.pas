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
    procedure btnConsultarClick(Sender: TObject);
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

{ TFormConsultaClientes }

procedure TFormConsultaClientes.btnConsultarClick(Sender: TObject);
begin
  inherited;
  Consultar;
end;

procedure TFormConsultaClientes.Consultar;
begin
  fdQryConsulta.Close;
  fdQryConsulta.SQL.Clear;
  fdQryConsulta.SQL.Add('SELECT * FROM CLIENTE');
  if edtConsulta.Text <> '' then
    fdQryConsulta.SQL.Add('WHERE UPPER(RAZAO_SOCIAL) LIKE '+QuotedStr('%'+UpperCase(edtConsulta.Text)+'%'));

  fdQryConsulta.Open();
  fdQryConsulta.FetchAll;
end;

end.
