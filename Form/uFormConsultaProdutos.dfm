inherited FormConsultaProdutos: TFormConsultaProdutos
  Caption = 'Consulta de produtos'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 71
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtConsulta: TEdit
      Width = 57
      ExplicitWidth = 57
    end
    inherited btnConsultar: TButton
      Left = 279
      Caption = 'Consultar'
      OnClick = btnConsultarClick
      ExplicitLeft = 279
    end
    object edtDescricao: TEdit
      Left = 71
      Top = 35
      Width = 202
      Height = 21
      TabOrder = 3
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
  object btnNovo: TButton [2]
    Left = 360
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnVisualizar: TButton [3]
    Left = 441
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 3
    OnClick = btnVisualizarClick
  end
  inherited fdQryConsulta: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    SQL.Strings = (
      ''
      'SELECT P.ID_PRODUTO, '
      '       P.DESCRICAO, '
      '       P.QTDE, '
      '       P.CUSTO, '
      '       P.V_UNITARIO, '
      '       P.UNIDADE, '
      '       P.PESO_LIQUIDO, '
      '       P.PESO_BRUTO, '
      '       P.FABRICANTE, '
      '       P.MARCA_MODELO, '
      '       F.RAZAO_SOCIAL FORNECEDOR '
      '    FROM PRODUTO P '
      
        '    LEFT JOIN FORNECEDOR F ON (F.ID_FORNECEDOR = P.ID_FORNECEDOR' +
        ') '
      '   WHERE 1 = 1 ')
    object fdQryConsultaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryConsultaDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 80
    end
    object fdQryConsultaQTDE: TSingleField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object fdQryConsultaCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryConsultaV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryConsultaUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryConsultaPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryConsultaPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryConsultaFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryConsultaMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryConsultaFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
