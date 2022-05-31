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
  object btnAddUser: TBitBtn
    Left = 80
    Top = 280
    Width = 89
    Height = 25
    Caption = 'Add New User'
    TabOrder = 1
    OnClick = btnAddUserClick
  end
  object btnCount: TBitBtn
    Left = 456
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Count by:'
    TabOrder = 2
    OnClick = btnCountClick
  end
  object rdgUserTypes: TRadioGroup
    Left = 567
    Top = 288
    Width = 185
    Height = 105
    Caption = 'User Types'
    Items.Strings = (
      'Admin'
      'Student')
    TabOrder = 3
  end
end
