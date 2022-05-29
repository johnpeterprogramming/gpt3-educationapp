object studentForm: TstudentForm
  Left = 0
  Top = 0
  Caption = 'studentForm'
  ClientHeight = 299
  ClientWidth = 635
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
    Left = 264
    Top = 40
    Width = 65
    Height = 13
    Caption = 'Student Form'
  end
  object btnExit: TBitBtn
    Left = 152
    Top = 192
    Width = 75
    Height = 25
    Caption = '&Exit'
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
    OnClick = btnExitClick
  end
end
