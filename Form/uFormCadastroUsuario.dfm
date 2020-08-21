inherited FormCadastroUsuario: TFormCadastroUsuario
  Caption = 'Cadastro de usu'#225'rio'
  ClientHeight = 332
  ClientWidth = 1021
  ExplicitWidth = 1027
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 48
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
  end
  object Label2: TLabel [1]
    Left = 77
    Top = 48
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object Label3: TLabel [2]
    Left = 268
    Top = 48
    Width = 31
    Height = 13
    Caption = 'LOGIN'
  end
  object Label4: TLabel [3]
    Left = 395
    Top = 48
    Width = 33
    Height = 13
    Caption = 'SENHA'
  end
  inherited pnCabecalho: TPanel
    Width = 1021
    ExplicitWidth = 1021
  end
  object edtID: TDBEdit [5]
    Left = 8
    Top = 67
    Width = 63
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtNome: TDBEdit [6]
    Left = 77
    Top = 67
    Width = 185
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object edtLogin: TDBEdit [7]
    Left = 268
    Top = 67
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGIN'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object edtSenha: TDBEdit [8]
    Left = 395
    Top = 67
    Width = 182
    Height = 21
    DataField = 'SENHA'
    DataSource = dsCadastro
    PasswordChar = '*'
    TabOrder = 4
  end
  inherited fdQryCadastro: TFDQuery
    BeforePost = fdQryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 832
    Top = 160
    object fdQryCadastroID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object fdQryCadastroLOGIN: TWideStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
    end
    object fdQryCadastroSENHA: TWideStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 255
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpCadastro: TFDUpdateSQL
    Left = 832
    Top = 216
  end
  inherited fdTransaction: TFDTransaction
    Left = 832
    Top = 280
  end
  inherited dsCadastro: TDataSource
    Left = 832
    Top = 104
  end
  inherited fdQryCodigo: TFDQuery
    Left = 832
    Top = 64
  end
end
