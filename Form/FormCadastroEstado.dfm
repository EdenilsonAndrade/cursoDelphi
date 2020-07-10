inherited FormCadastroEstados: TFormCadastroEstados
  Caption = 'Cadastro de Estados'
  ClientHeight = 216
  ClientWidth = 590
  ExplicitWidth = 596
  ExplicitHeight = 245
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 64
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 152
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 107
    Width = 41
    Height = 13
    Caption = 'COD_UF'
    FocusControl = DBEdit3
  end
  inherited pnCabecalho: TPanel
    Width = 590
    ExplicitWidth = 590
    inherited btnSair: TButton
      Left = 457
      ExplicitLeft = 457
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 80
    Width = 69
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 168
    Width = 193
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 8
    Top = 123
    Width = 30
    Height = 21
    DataField = 'COD_UF'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroCOD_UF: TWideStringField
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
      Size = 2
    end
  end
end
