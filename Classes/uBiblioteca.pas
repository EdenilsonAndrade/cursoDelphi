unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  function GetValorIni(pLocal, pSessao, pSubsessao: string): string;
  procedure AtualizaFDQry(const pFDQry : TFDQuery; pSQL : string);
implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
var
  vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  vArquivo.WriteString(pSessao, pSubsessao, pValor);
  vArquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var
  vArquivo : TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);
  Result := vArquivo.ReadString(pSessao, pSubSessao, '');
  vArquivo.Free;
end;

procedure AtualizaFDQry(const pFDQry : TFDQuery; pSQL : string);
begin
  pFDQry.Close;
  if Trim(pSQL) <> '' then
  begin
    pFDQry.SQL.Clear;
    pFDQry.SQL.Text := pSQL;
  end;
  pFDQry.Open;
  pFDQry.FetchAll;
end;
end.
