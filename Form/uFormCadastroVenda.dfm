inherited FormCadastroVenda: TFormCadastroVenda
  Caption = 'Venda de produtos'
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 41
    Width = 1026
    Height = 184
    Align = alTop
    TabOrder = 1
    ExplicitTop = 47
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 50
      Height = 13
      Caption = 'ID_VENDA'
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 58
      Height = 13
      Caption = 'ID_CLIENTE'
    end
    object Label3: TLabel
      Left = 235
      Top = 8
      Width = 55
      Height = 13
      Caption = 'FATURADO'
    end
    object Label4: TLabel
      Left = 320
      Top = 8
      Width = 74
      Height = 13
      Caption = 'DT_FATURADO'
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 27
      Width = 57
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = dsCadastro
      Enabled = False
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 235
      Top = 27
      Width = 66
      Height = 21
      DataField = 'FATURADO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 320
      Top = 27
      Width = 121
      Height = 21
      DataField = 'DT_FATURADO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 27
      Width = 145
      Height = 21
      DataSource = dsCadastro
      TabOrder = 3
    end
  end
  inherited fdQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM VENDA')
    object fdQryCadastroID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryCadastroDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object fdQryCadastroFATURADO: TWideStringField
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      Size = 1
    end
    object fdQryCadastroDT_FATURADO: TDateField
      FieldName = 'DT_FATURADO'
      Origin = 'DT_FATURADO'
    end
  end
end
