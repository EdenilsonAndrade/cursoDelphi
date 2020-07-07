inherited FormCadastroPai1: TFormCadastroPai1
  Caption = 'Cadastro de Cliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited fdQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
  end
end
