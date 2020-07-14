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
    inherited edtConsulta: TEdit
      Top = 32
      Width = 297
      ExplicitTop = 32
      ExplicitWidth = 297
    end
    inherited btnConsultar: TButton
      Left = 311
      Top = 30
      Caption = 'Consultar'
      OnClick = btnConsultarClick
      ExplicitLeft = 311
      ExplicitTop = 30
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
  end
end
