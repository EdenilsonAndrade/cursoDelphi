inherited FormCadastroVenda: TFormCadastroVenda
  Caption = 'Venda de produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCabecalho: TPanel
    object btnImprimir: TBitBtn
      Left = 477
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
  end
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
      Width = 41
      Height = 13
      Caption = 'CLIENTE'
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
      DataField = 'DT_EMISSAO'
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
    object Label12: TLabel
      Left = 421
      Top = 3
      Width = 53
      Height = 13
      Caption = 'Valor Bruto'
    end
    object Label13: TLabel
      Left = 548
      Top = 3
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label14: TLabel
      Left = 675
      Top = 3
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtTotValBruto: TAdvMoneyEdit
      Left = 420
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
      ReadOnly = True
      TabOrder = 0
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
    object edtTotDesconto: TAdvMoneyEdit
      Left = 547
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
      ReadOnly = True
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
    object edtTotTotal: TAdvMoneyEdit
      Left = 674
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
      ReadOnly = True
      TabOrder = 2
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
  object Panel3: TPanel [3]
    Left = 0
    Top = 105
    Width = 1026
    Height = 378
    Align = alClient
    TabOrder = 3
    object Label6: TLabel
      Left = 8
      Top = 9
      Width = 22
      Height = 13
      Caption = 'Item'
    end
    object Label7: TLabel
      Left = 159
      Top = 10
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label8: TLabel
      Left = 286
      Top = 9
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label9: TLabel
      Left = 413
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Desconto'
    end
    object Label10: TLabel
      Left = 540
      Top = 9
      Width = 53
      Height = 13
      Caption = 'Valor Bruto'
    end
    object Label11: TLabel
      Left = 667
      Top = 9
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object edtDescItem: TDBLookupComboBox
      Left = 8
      Top = 28
      Width = 145
      Height = 21
      KeyField = 'ID_PRODUTO'
      ListField = 'DESCRICAO'
      ListSource = Lookup.dsProdutos
      TabOrder = 0
      OnClick = edtDescItemClick
    end
    object edtQtde: TAdvMoneyEdit
      Left = 159
      Top = 28
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
      OnChange = edtQtdeChange
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
    object edtValUnitario: TAdvMoneyEdit
      Left = 286
      Top = 28
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
      TabOrder = 2
      Text = '0,00'
      Visible = True
      OnChange = edtValUnitarioChange
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
    object edtDesconto: TAdvMoneyEdit
      Left = 413
      Top = 28
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
      TabOrder = 3
      Text = '0,00'
      Visible = True
      OnChange = edtDescontoChange
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
    object edtSubTotal: TAdvMoneyEdit
      Left = 540
      Top = 28
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
      ReadOnly = True
      TabOrder = 4
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
    object DBGrid1: TDBGrid
      Left = 1
      Top = 56
      Width = 1024
      Height = 321
      Align = alBottom
      DataSource = dsItens
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoProduto'
          Title.Caption = 'Descricao_Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'Quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_UNITARIO'
          Title.Caption = 'Valor_Unit'#225'rio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCONTO'
          Title.Caption = 'Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SubTotal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = True
        end>
    end
    object edtTotal: TAdvMoneyEdit
      Left = 667
      Top = 28
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
      ReadOnly = True
      TabOrder = 5
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
    object btnIncluir: TButton
      Left = 794
      Top = 25
      Width = 75
      Height = 24
      Caption = '&Incluir'
      TabOrder = 6
      OnClick = btnIncluirClick
    end
    object Button1: TButton
      Left = 875
      Top = 25
      Width = 75
      Height = 24
      Caption = '&Excluir'
      TabOrder = 8
      OnClick = Button1Click
    end
  end
  inherited fdQryCadastro: TFDQuery
    Active = True
    AfterOpen = fdQryCadastroAfterOpen
    AfterInsert = fdQryCadastroAfterInsert
    BeforePost = fdQryCadastroBeforePost
    AfterScroll = fdQryCadastroAfterScroll
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_VENDA_ID'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    UpdateObject = nil
    SQL.Strings = (
      'SELECT * FROM VENDA')
    object fdQryCadastroID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    AfterInsert = fdQryItensAfterInsert
    AfterPost = fdQryItensAfterPost
    AfterCancel = fdQryItensAfterCancel
    AfterDelete = fdQryItensAfterDelete
    OnCalcFields = fdQryItensCalcFields
    Connection = dmDados.fdCon
    Transaction = fdtItens
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
    object fdQryItensDescricaoProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'DescricaoProduto'
      LookupDataSet = Lookup.fdQryProdutos
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 80
      Lookup = True
    end
    object fdQryItensSubTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
    object fdQryItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object dsItens: TDataSource
    DataSet = fdQryItens
    Left = 815
    Top = 288
  end
  object fdtItens: TFDTransaction
    Connection = dmDados.fdCon
    Left = 816
    Top = 401
  end
  object frVenda: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44056.871052314800000000
    ReportOptions.LastChange = 44058.566720787040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 249
    Datasets = <
      item
        DataSet = frxDadosVenda
        DataSetName = 'frxDadosVenda'
      end
      item
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."ID_VENDA"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#250'mero:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 24.677180000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosVenda."ID_CLIENTE"] - [Cliente]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 24.677180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 52.913420000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Bruto')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Liq.')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 668.976810000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxItensVenda
        DataSetName = 'frxItensVenda'
        RowCount = 0
        object frxItensVendaID_VENDA_ITEM: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA_ITEM'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."ID_VENDA_ITEM"]')
          ParentFont = False
        end
        object frxItensVendaDescricaoProduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'DescricaoProduto'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItensVenda."DescricaoProduto"]')
          ParentFont = False
        end
        object frxItensVendaQTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."QTDE"]')
          ParentFont = False
        end
        object frxItensVendaVALOR_UNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object frxItensVendaSubTotal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SubTotal'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."SubTotal"]')
          ParentFont = False
        end
        object frxItensVendaDESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."DESCONTO"]')
          ParentFont = False
        end
        object frxItensVendaTotal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItensVenda."Total"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 296.803340000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 466.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."SubTotal">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 553.811380000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."DESCONTO">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 636.961040000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxItensVenda
          DataSetName = 'frxItensVenda'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxItensVenda."Total">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 195.535560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Totais:')
          ParentFont = False
        end
      end
    end
  end
  object frxDadosVenda: TfrxDBDataset
    UserName = 'frxDadosVenda'
    CloseDataSource = False
    DataSet = fdQryCadastro
    BCDToCurrency = False
    Left = 176
    Top = 249
  end
  object frxItensVenda: TfrxDBDataset
    UserName = 'frxItensVenda'
    CloseDataSource = False
    DataSet = fdQryItens
    BCDToCurrency = False
    Left = 176
    Top = 297
  end
end
