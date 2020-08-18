inherited FormConsultaVenda: TFormConsultaVenda
  Caption = 'Consulta Vendas'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 33
      Caption = 'Cliente'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 191
      Top = 16
      Width = 17
      Height = 13
      Caption = 'De:'
    end
    object Label3: TLabel [2]
      Left = 295
      Top = 16
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object Label4: TLabel [3]
      Left = 399
      Top = 16
      Width = 81
      Height = 13
      Caption = 'C'#243'digo da venda'
    end
    inherited edtConsulta: TEdit
      Width = 177
      ExplicitWidth = 177
    end
    inherited btnConsultar: TButton
      Caption = 'Consultar'
      OnClick = btnConsultarClick
    end
    object dtIni: TDateTimePicker
      Left = 191
      Top = 35
      Width = 98
      Height = 21
      Date = 44058.000000000000000000
      Time = 0.619070636574178900
      TabOrder = 3
    end
    object dtFim: TDateTimePicker
      Left = 295
      Top = 35
      Width = 98
      Height = 21
      Date = 44058.000000000000000000
      Time = 0.619208680553128900
      TabOrder = 4
    end
    object edtCodigoVenda: TEdit
      Left = 399
      Top = 35
      Width = 99
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 8
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Faturado'
      TabOrder = 6
    end
    object btnImprimir: TBitBtn
      Left = 585
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 121
    Width = 1092
    Height = 261
    Align = alClient
    DataSource = dsConsulta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object frVendas: TfrxReport
    Version = '6.7.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44058.640399756900000000
    ReportOptions.LastChange = 44058.640399756900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 200
    Datasets = <
      item
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 11.338590000000000000
          Width = 718.110236220472000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de Vendas')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        Condition = 'frDBVendas."ID_CLIENTE"'
        object frDBVendasCLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 65.692950000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."CLIENTE"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente: ')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
        object Memo4: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
        object Memo5: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
        object Memo6: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
        object Memo7: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
        RowCount = 0
        object frDBVendasPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frDBVendas."PRODUTO"]')
        end
        object frDBVendasQTDE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[frDBVendas."QTDE"]')
          ParentFont = False
        end
        object frDBVendasVALOR_UNITARIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[frDBVendas."VALOR_UNITARIO"]')
          ParentFont = False
        end
        object frDBVendasVALOR_BRUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_BRUTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[frDBVendas."VALOR_BRUTO"]')
          ParentFont = False
        end
        object frDBVendasDESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[frDBVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDBVendasVALOR_LIQ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_LIQ'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[frDBVendas."VALOR_LIQ"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[SUM(<frDBVendas."QTDE">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[SUM(<frDBVendas."VALOR_BRUTO">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 525.354670000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[SUM(<frDBVendas."DESCONTO">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
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
            '[SUM(<frDBVendas."VALOR_LIQ">,MasterData1,1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
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
            'Total:')
          ParentFont = False
        end
      end
    end
  end
  object frDBVendas: TfrxDBDataset
    UserName = 'frDBVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    Left = 248
    Top = 200
  end
  object fdQryRelatorio: TFDQuery
    Active = True
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT V.ID_VENDA,'
      '       V.ID_CLIENTE,'
      '       DECODE(C.TIPO_FJ, '#39'F'#39', C.NOME, C.RAZAO_SOCIAL) CLIENTE,'
      '       V.DT_EMISSAO,'
      '       COALESCE(V.FATURADO, '#39'N'#39') FATURADO,'
      '       P.DESCRICAO PRODUTO,'
      '       VI.QTDE,'
      '       VI.VALOR_UNITARIO,'
      '       (VI.VALOR_UNITARIO * VI.QTDE) VALOR_BRUTO,'
      '       COALESCE(VI.DESCONTO,0) DESCONTO,'
      
        '       (VI.QTDE * VI.VALOR_UNITARIO) - COALESCE(VI.DESCONTO,0) V' +
        'ALOR_LIQ'
      '    FROM venda V'
      '        INNER JOIN CLIENTE C ON (C.ID_CLIENTE = V.ID_CLIENTE)'
      '        INNER JOIN VENDA_ITEM VI ON (VI.ID_VENDA = V.ID_VENDA)'
      '        INNER JOIN PRODUTO P ON (P.ID_PRODUTO = VI.ID_PRODUTO)'
      'WHERE 1 = 1'
      '    ORDER BY DECODE(C.TIPO_FJ, '#39'F'#39', C.NOME, C.RAZAO_SOCIAL),'
      '             P.DESCRICAO'
      ''
      '')
    Left = 216
    Top = 256
    object fdQryRelatorioID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdQryRelatorioCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = 'DT_EMISSAO'
    end
    object fdQryRelatorioFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioPRODUTO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTDE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_UNITARIO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNITARIO'
      Origin = 'VALOR_UNITARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_BRUTO: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_BRUTO'
      Origin = 'VALOR_BRUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_LIQ: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_LIQ'
      Origin = 'VALOR_LIQ'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
