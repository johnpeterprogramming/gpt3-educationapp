object welcomeForm: TwelcomeForm
  Left = 0
  Top = 0
  Caption = 'welcomeForm'
  ClientHeight = 522
  ClientWidth = 771
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblWelcome: TLabel
    Left = 0
    Top = 0
    Width = 771
    Height = 522
    Align = alClient
    Alignment = taCenter
    Caption = 'Welcome User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
    Visible = False
    ExplicitLeft = 40
    ExplicitTop = 120
    ExplicitWidth = 482
    ExplicitHeight = 81
  end
  object btnStudent: TBitBtn
    Left = 288
    Top = 328
    Width = 202
    Height = 73
    Caption = 'Student View'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = btnStudentClick
  end
  object btnAdmin: TBitBtn
    Left = 288
    Top = 328
    Width = 202
    Height = 73
    Caption = 'Admin View'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnClick = btnAdminClick
  end
  object pnlLogin: TPanel
    Tag = 1
    Left = 728
    Top = 485
    Width = 780
    Height = 521
    TabOrder = 0
    object Label1: TLabel
      Left = 242
      Top = 160
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label2: TLabel
      Left = 242
      Top = 211
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object btnLogin: TBitBtn
      Left = 304
      Top = 280
      Width = 89
      Height = 41
      Caption = 'Login'
      TabOrder = 0
      OnClick = btnLoginClick
    end
    object edtUsername: TEdit
      Left = 304
      Top = 157
      Width = 153
      Height = 21
      TabOrder = 1
      Text = 'Admin'
    end
    object edtPassword: TEdit
      Left = 304
      Top = 208
      Width = 153
      Height = 21
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = 'password'
    end
  end
end
