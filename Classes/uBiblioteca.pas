unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  function GetValorIni(pLocal, pSessao, pSubsessao: string): string;
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

end.
