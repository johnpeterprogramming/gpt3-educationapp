object studentForm: TstudentForm
  Left = 0
  Top = 0
  Caption = 'studentForm'
  ClientHeight = 473
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 24
    Width = 65
    Height = 13
    Caption = 'Student Form'
  end
  object edtAnswer1: TEdit
    Left = 376
    Top = 187
    Width = 300
    Height = 21
    TabOrder = 0
    Text = 'edtAnswer1'
  end
  object btnSubmit: TBitBtn
    Left = 312
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Submit'
    TabOrder = 1
  end
  object btnGenerate: TBitBtn
    Left = 176
    Top = 57
    Width = 121
    Height = 35
    Caption = 'Generate Questions'
    TabOrder = 2
    OnClick = btnGenerateClick
  end
  object btnStart: TBitBtn
    Left = 192
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = btnStartClick
  end
  object memJson: TMemo
    Left = 288
    Top = 216
    Width = 185
    Height = 89
    Lines.Strings = (
      'memJson')
    TabOrder = 4
  end
  object cmbSubject: TComboBox
    Left = 168
    Top = 181
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'Select Subject'
    Items.Strings = (
      'Maths'
      'Science'
      'English')
  end
end
