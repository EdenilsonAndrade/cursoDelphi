object FormCadastroPai: TFormCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'FormCadastroPai'
  ClientHeight = 524
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 672
    ExplicitTop = 136
    ExplicitWidth = 185
    object btnNovo: TButton
      Left = 0
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TButton
      Left = 95
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      Left = 190
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TButton
      Left = 285
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TButton
      Left = 937
      Top = 0
      Width = 89
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransaction
    UpdateObject = fdUpCadastro
    Left = 872
    Top = 344
  end
  object fdUpCadastro: TFDUpdateSQL
    Connection = dmDados.fdCon
    Left = 872
    Top = 400
  end
  object fdTransaction: TFDTransaction
    Left = 872
    Top = 464
  end
end
