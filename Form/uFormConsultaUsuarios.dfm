inherited FormConsultaUsuarios: TFormConsultaUsuarios
  Caption = 'Consulta de usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 27
      Caption = 'Nome'
      ExplicitWidth = 27
    end
    inherited edtConsulta: TEdit
      Width = 264
      ExplicitWidth = 264
    end
    inherited btnConsultar: TButton
      Left = 278
      Caption = 'Consultar'
      OnClick = btnConsultarClick
      ExplicitLeft = 278
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
  object btnVisualizar: TButton [2]
    Left = 441
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 2
    OnClick = btnVisualizarClick
  end
  object btnNovo: TButton [3]
    Left = 360
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = btnNovoClick
  end
end
