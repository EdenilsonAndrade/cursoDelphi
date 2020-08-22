object FormLogin: TFormLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 164
  ClientWidth = 336
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 91
    Top = 43
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 97
    Top = 83
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtUsuario: TEdit
    Left = 128
    Top = 40
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 93
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 174
    Top = 121
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 34
    Align = alTop
    Color = clBlue
    ParentBackground = False
    TabOrder = 4
    ExplicitWidth = 311
    object Label3: TLabel
      Left = 144
      Top = 10
      Width = 62
      Height = 13
      Caption = 'EPJ Sistemas'
    end
  end
  object fdQryLogin: TFDQuery
    Connection = dmDados.fdCon
    SQL.Strings = (
      'SELECT LOGIN, '
      '       SENHA '
      '  FROM USUARIO'
      ' WHERE LOGIN = :LOGIN'
      '')
    Left = 16
    Top = 48
    ParamData = <
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
  end
end
