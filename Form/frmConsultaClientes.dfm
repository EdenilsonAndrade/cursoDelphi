inherited FormConsultaClientes: TFormConsultaClientes
  Caption = 'Consulta de Clientes'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 80
      Caption = 'Nome do cliente:'
      ExplicitWidth = 80
    end
    object Label2: TLabel [1]
      Left = 176
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 354
      Top = 16
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel [3]
      Left = 488
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtConsulta: TEdit
      Top = 32
      Width = 153
      ExplicitTop = 32
      ExplicitWidth = 153
    end
    inherited btnConsultar: TButton
      Left = 627
      Top = 30
      Caption = 'Consultar'
      OnClick = btnConsultarClick
      ExplicitLeft = 627
      ExplicitTop = 30
    end
    object edtFantasia: TEdit
      Left = 176
      Top = 32
      Width = 161
      Height = 21
      TabOrder = 3
    end
    object edtCNPJ: TEdit
      Left = 352
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 488
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btnNovo: TButton
      Left = 708
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object btnVisualizar: TButton
      Left = 789
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = btnVisualizarClick
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_EXCLUIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_ESTADO'
        Visible = True
      end>
  end
  inherited fdQryConsulta: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    object fdQryConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryConsultaRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 80
    end
    object fdQryConsultaFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 80
    end
    object fdQryConsultaCPF_CNPJ: TWideStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdQryConsultaTIPO_FJ: TWideStringField
      FieldName = 'TIPO_FJ'
      Origin = 'TIPO_FJ'
      Size = 1
    end
    object fdQryConsultaNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 80
    end
    object fdQryConsultaEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
    object fdQryConsultaSITE: TWideStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 255
    end
    object fdQryConsultaENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryConsultaCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 40
    end
    object fdQryConsultaNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdQryConsultaBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryConsultaIE: TWideStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 30
    end
    object fdQryConsultaIM: TWideStringField
      FieldName = 'IM'
      Origin = 'IM'
      Size = 30
    end
    object fdQryConsultaDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
    object fdQryConsultaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryConsultaID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
  end
end
