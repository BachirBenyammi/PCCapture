object PCCMainForm: TPCCMainForm
  Left = 239
  Top = 94
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PCCapture - BENBAC SOFT'
  ClientHeight = 165
  ClientWidth = 115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnShow: TButton
    Left = 8
    Top = 40
    Width = 97
    Height = 25
    Caption = '&Screen Capture'
    TabOrder = 0
    OnClick = btnShowClick
  end
  object btnEnable: TButton
    Left = 8
    Top = 8
    Width = 97
    Height = 25
    Caption = '&Activate'
    TabOrder = 1
    OnClick = btnEnableClick
  end
  object Button1: TButton
    Left = 8
    Top = 136
    Width = 97
    Height = 25
    Caption = '&Exit'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 104
    Width = 97
    Height = 25
    Caption = '&About'
    TabOrder = 3
    OnClick = Button2Click
  end
  object btnOptions: TButton
    Left = 8
    Top = 72
    Width = 97
    Height = 25
    Caption = '&Options'
    TabOrder = 4
    OnClick = btnOptionsClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
