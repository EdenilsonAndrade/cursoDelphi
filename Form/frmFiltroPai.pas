unit frmFiltroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet;

type
  TFormFiltroPai = class(TForm)
    Panel1: TPanel;
    edtConsulta: TEdit;
    Label1: TLabel;
    btnConsultar: TButton;
    fdQryConsulta: TFDQuery;
    dsConsulta: TDataSource;
    fdTransection: TFDTransaction;
    Panel2: TPanel;
    btnFechar: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltroPai: TFormFiltroPai;

implementation

{$R *.dfm}

uses uDmDados;

procedure TFormFiltroPai.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFormFiltroPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
