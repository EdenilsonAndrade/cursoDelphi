object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFiltroPai'
  ClientHeight = 382
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1092
    Height = 121
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtConsulta: TEdit
      Left = 8
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnConsultar: TButton
      Left = 504
      Top = 33
      Width = 75
      Height = 25
      Caption = 'FormFiltroPai'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 906
      Top = 1
      Width = 185
      Height = 119
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object btnFechar: TButton
        Left = 64
        Top = 32
        Width = 75
        Height = 25
        Caption = 'Fechar'
        TabOrder = 0
        OnClick = btnFecharClick
      end
    end
  end
  object fdQryConsulta: TFDQuery
    Connection = dmDados.fdCon
    Transaction = fdTransection
    Left = 560
    Top = 160
  end
  object dsConsulta: TDataSource
    DataSet = fdQryConsulta
    Left = 560
    Top = 216
  end
  object fdTransection: TFDTransaction
    Connection = dmDados.fdCon
    Left = 560
    Top = 272
  end
end
