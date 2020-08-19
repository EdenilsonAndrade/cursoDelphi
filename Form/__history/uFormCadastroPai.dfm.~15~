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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 41
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 10
      Width = 23
      Height = 22
      Caption = '<<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 400
      Top = 10
      Width = 23
      Height = 22
      Caption = '<'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 424
      Top = 10
      Width = 23
      Height = 22
      Caption = '>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 448
      Top = 10
      Width = 23
      Height = 22
      Caption = '>>'
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
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
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateObject = fdUpCadastro
    SQL.Strings = (
      '')
    Left = 872
    Top = 344
  end
  object fdUpCadastro: TFDUpdateSQL
    Connection = dmDados.fdCon
    Left = 872
    Top = 400
  end
  object fdTransaction: TFDTransaction
    Connection = dmDados.fdCon
    Left = 872
    Top = 464
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 872
    Top = 288
  end
  object fdQryCodigo: TFDQuery
    Connection = dmDados.fdCon
    Left = 872
    Top = 248
  end
end
