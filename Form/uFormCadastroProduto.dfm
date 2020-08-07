inherited FormCadastroProduto: TFormCadastroProduto
  Caption = 'Cadastro de produtos'
  ClientHeight = 561
  ClientWidth = 1134
  ExplicitWidth = 1140
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 59
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 102
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
  end
  object Label3: TLabel [2]
    Left = 104
    Top = 55
    Width = 27
    Height = 13
    Caption = 'QTDE'
  end
  object Label4: TLabel [3]
    Left = 212
    Top = 55
    Width = 34
    Height = 13
    Caption = 'CUSTO'
  end
  object Label5: TLabel [4]
    Left = 320
    Top = 55
    Width = 62
    Height = 13
    Caption = 'V_UNITARIO'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 155
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label7: TLabel [6]
    Left = 72
    Top = 155
    Width = 75
    Height = 13
    Caption = 'PESO_LIQUIDO'
  end
  object Label8: TLabel [7]
    Left = 184
    Top = 155
    Width = 66
    Height = 13
    Caption = 'PESO_BRUTO'
  end
  object Label9: TLabel [8]
    Left = 296
    Top = 155
    Width = 63
    Height = 13
    Caption = 'FABRICANTE'
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 208
    Width = 84
    Height = 13
    Caption = 'MARCA_MODELO'
  end
  object Label11: TLabel [10]
    Left = 158
    Top = 211
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
  end
  inherited pnCabecalho: TPanel
    Width = 1134
    ExplicitWidth = 1134
  end
  object edtID: TDBEdit [12]
    Left = 8
    Top = 75
    Width = 74
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = dsCadastro
    Enabled = False
    TabOrder = 1
  end
  object edtDescricao: TDBEdit [13]
    Left = 8
    Top = 121
    Width = 257
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object edtUnidade: TDBEdit [14]
    Left = 8
    Top = 171
    Width = 45
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UNIDADE'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object edtFabricante: TDBEdit [15]
    Left = 296
    Top = 171
    Width = 134
    Height = 21
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object edtMarcaModelo: TDBEdit [16]
    Left = 8
    Top = 227
    Width = 134
    Height = 21
    DataField = 'MARCA_MODELO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object edtQtde: TDBAdvMoneyEdit [17]
    Left = 104
    Top = 74
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
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
    TabOrder = 2
    Text = '0'
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
    DataField = 'QTDE'
    DataSource = dsCadastro
  end
  object DBMoneyEdit2: TDBAdvMoneyEdit [18]
    Left = 212
    Top = 74
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
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
    TabOrder = 3
    Text = '0'
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
    DataField = 'CUSTO'
    DataSource = dsCadastro
  end
  object edtVlUnitario: TDBAdvMoneyEdit [19]
    Left = 320
    Top = 74
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
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
    TabOrder = 4
    Text = '0'
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
    DataField = 'V_UNITARIO'
    DataSource = dsCadastro
  end
  object edtPesoLIquido: TDBAdvMoneyEdit [20]
    Left = 72
    Top = 171
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
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
    TabOrder = 7
    Text = '0'
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
    DataField = 'PESO_LIQUIDO'
    DataSource = dsCadastro
  end
  object edtPesoBruto: TDBAdvMoneyEdit [21]
    Left = 184
    Top = 171
    Width = 89
    Height = 21
    EditType = etFloat
    EmptyTextStyle = []
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
    TabOrder = 8
    Text = '0'
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
    DataField = 'PESO_BRUTO'
    DataSource = dsCadastro
  end
  object DBLookupComboBox1: TDBLookupComboBox [22]
    Left = 158
    Top = 227
    Width = 224
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    KeyField = 'ID_FORNECEDOR'
    ListField = 'RAZAO_SOCIAL'
    ListSource = Lookup.dsFornecedor
    TabOrder = 11
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    object fdQryCadastroID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryCadastroQTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object fdQryCadastroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryCadastroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryCadastroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryCadastroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryCadastroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryCadastroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryCadastroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
    end
  end
end
