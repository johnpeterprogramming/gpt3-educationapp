object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 504
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    BaseURL = 'https://api.openai.com/v1/engines/text-davinci-002/completions'
    Params = <>
    Left = 144
    Top = 72
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    Left = 144
    Top = 152
  end
  object RESTResponse1: TRESTResponse
    Left = 144
    Top = 240
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Left = 280
    Top = 72
  end
end
