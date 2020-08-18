inherited FormCadastroCidades: TFormCadastroCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 240
  ClientWidth = 637
  ExplicitWidth = 643
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 56
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 152
    Width = 51
    Height = 13
    Caption = 'COD_IBGE'
    FocusControl = DBEdit3
  end
  inherited pnCabecalho: TPanel
    Width = 637
    ExplicitWidth = 561
    inherited btnSair: TButton
      Left = 548
      ExplicitLeft = 548
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 24
    Top = 72
    Width = 81
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 24
    Top = 120
    Width = 217
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 24
    Top = 168
    Width = 134
    Height = 21
    DataField = 'COD_IBGE'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE'
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 280
    Top = 128
    object fdQryCadastroID_CIDADE: TFDAutoIncField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroCOD_IBGE: TIntegerField
      FieldName = 'COD_IBGE'
      Origin = 'COD_IBGE'
    end
  end
  inherited fdUpCadastro: TFDUpdateSQL
    Left = 280
    Top = 184
  end
  inherited dsCadastro: TDataSource
    Left = 280
    Top = 72
  end
end
