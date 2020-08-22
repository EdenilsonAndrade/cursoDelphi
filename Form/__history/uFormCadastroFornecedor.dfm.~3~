inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Caption = 'FormCadastroFornecedor'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 144
    Width = 41
    Height = 13
    Caption = 'Fantasia'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 187
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 224
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 264
    Width = 28
    Height = 13
    Caption = 'Bairro'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 304
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 344
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 387
    Width = 28
    Height = 13
    Caption = 'E-mail'
  end
  object dblCidade: TDBLookupComboBox [10]
    Left = 8
    Top = 321
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.DdsCidades
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox [11]
    Left = 8
    Top = 360
    Width = 60
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'COD_UF'
    ListSource = Lookup.dsEstados
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [12]
    Left = 8
    Top = 83
    Width = 45
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 3
  end
  object edtRazaoSocial: TDBEdit [13]
    Left = 8
    Top = 123
    Width = 271
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [14]
    Left = 8
    Top = 163
    Width = 271
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [15]
    Left = 8
    Top = 203
    Width = 193
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit5: TDBEdit [16]
    Left = 8
    Top = 243
    Width = 271
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit6: TDBEdit [17]
    Left = 8
    Top = 283
    Width = 241
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [18]
    Left = 8
    Top = 406
    Width = 297
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
