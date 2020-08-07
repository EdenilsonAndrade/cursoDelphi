inherited FormCadastroVenda: TFormCadastroVenda
  Caption = 'Venda de produtos'
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [1]
    Left = 0
    Top = 41
    Width = 1026
    Height = 64
    Align = alTop
    TabOrder = 1
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
      Left = 539
      Top = 8
      Width = 55
      Height = 13
      Caption = 'FATURADO'
    end
    object Label4: TLabel
      Left = 412
      Top = 8
      Width = 74
      Height = 13
      Caption = 'DT_FATURADO'
    end
    object Label5: TLabel
      Left = 285
      Top = 8
      Width = 27
      Height = 13
      Caption = 'DATA'
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
    object edtDataFaturado: TDBEdit
      Left = 412
      Top = 27
      Width = 121
      Height = 21
      DataField = 'DT_FATURADO'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object edtCliente: TDBLookupComboBox
      Left = 80
      Top = 27
      Width = 199
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = dsCadastro
      KeyField = 'ID_CLIENTE'
      ListField = 'NOMECLIENTE'
      ListSource = Lookup.dsCliente
      TabOrder = 1
    end
    object DBCheckBox1: TDBCheckBox
      Left = 539
      Top = 27
      Width = 66
      Height = 21
      Caption = 'Faturado'
      DataField = 'FATURADO'
      DataSource = dsCadastro
      TabOrder = 4
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object edtData: TDBEdit
      Left = 285
      Top = 27
      Width = 121
      Height = 21
      DataField = 'DT_FATURADO'
      DataSource = dsCadastro
      TabOrder = 2
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 483
    Width = 1026
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 104
    ExplicitTop = 168
    ExplicitWidth = 185
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 105
    Width = 1026
    Height = 378
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 136
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object DBAdvMoneyEdit1: TDBAdvMoneyEdit
      Left = 159
      Top = 16
      Width = 121
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
  end
  inherited fdQryCadastro: TFDQuery
    AfterInsert = fdQryCadastroAfterInsert
    BeforePost = fdQryCadastroBeforePost
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    UpdateObject = nil
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
  object fdQryItens: TFDQuery
    BeforePost = fdQryCadastroBeforePost
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ITEM_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA_ITEM'
    UpdateObject = fdUpCadastro
    SQL.Strings = (
      'SELECT * FROM VENDA_ITEM'
      'WHERE ID_VENDA = :ID_VENDA')
    Left = 815
    Top = 344
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdQryItensID_VENDA_ITEM: TFDAutoIncField
      FieldName = 'ID_VENDA_ITEM'
      Origin = 'ID_VENDA_ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object fdQryItensQTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object fdQryItensVALOR_UNITARIO: TSingleField
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
    end
    object fdQryItensDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdQryItensID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
    end
  end
  object dsItens: TDataSource
    DataSet = fdQryItens
    Left = 815
    Top = 288
  end
end
