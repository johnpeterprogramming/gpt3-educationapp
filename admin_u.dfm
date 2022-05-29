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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 328
    Top = 56
    Width = 56
    Height = 13
    Caption = 'Admin Form'
  end
  object DBGrid1: TDBGrid
    Left = 208
    Top = 200
    Width = 320
    Height = 120
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 376
    Width = 75
    Height = 25
    Kind = bkAbort
    NumGlyphs = 2
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
