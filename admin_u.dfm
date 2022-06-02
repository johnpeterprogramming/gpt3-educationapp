object adminForm: TadminForm
  Left = 0
  Top = 0
  Caption = 'adminForm'
  ClientHeight = 435
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 344
    Top = 8
    Width = 56
    Height = 13
    Caption = 'Admin Form'
  end
  object DBGridUsers: TDBGrid
    Left = 112
    Top = 35
    Width = 521
    Height = 185
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnlManage: TPanel
    Left = 47
    Top = 264
    Width = 185
    Height = 113
    TabOrder = 1
    object Label2: TLabel
      Left = 9
      Top = 0
      Width = 72
      Height = 13
      Caption = 'Manage Users:'
    end
    object btnAddUser: TBitBtn
      Left = 9
      Top = 49
      Width = 89
      Height = 25
      Caption = 'Add New User'
      TabOrder = 0
      OnClick = btnAddUserClick
    end
    object btnRemoveUser: TBitBtn
      Left = 9
      Top = 80
      Width = 89
      Height = 25
      Caption = 'Remove User'
      TabOrder = 1
      OnClick = btnRemoveUserClick
    end
  end
  object pnlRetrieveData: TPanel
    Left = 432
    Top = 244
    Width = 265
    Height = 153
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 67
      Height = 13
      Caption = 'Retrieve Data'
    end
    object btnCount: TBitBtn
      Left = 168
      Top = 17
      Width = 90
      Height = 25
      Caption = 'Count User Type'
      TabOrder = 0
      OnClick = btnCountClick
    end
    object rdgUserTypes: TRadioGroup
      Left = 176
      Top = 48
      Width = 73
      Height = 89
      Caption = 'User Types'
      Items.Strings = (
        'Admin'
        'Student')
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 0
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Show Score'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 0
      Top = 71
      Width = 75
      Height = 25
      Caption = 'Rapport Card'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
end
