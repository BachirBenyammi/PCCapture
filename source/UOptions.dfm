object FrmOpt: TFrmOpt
  Left = 75
  Top = 18
  Width = 374
  Height = 470
  BorderIcons = [biSystemMenu]
  Caption = 'Options'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 353
    Height = 57
    Caption = 'Startup'
    TabOrder = 0
    object CheckBox2: TCheckBox
      Left = 8
      Top = 16
      Width = 153
      Height = 17
      Caption = 'Strat when Windows starts'
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 32
      Width = 185
      Height = 17
      Caption = 'Activate PCCapture when it starts'
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 72
    Width = 353
    Height = 113
    Caption = 'User interface'
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 193
      Height = 17
      Caption = 'Show PCCapture icon in system tray '
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 192
    Width = 353
    Height = 73
    Caption = 'Hard disk'
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Free space:'
    end
    object Label3: TLabel
      Left = 168
      Top = 48
      Width = 16
      Height = 13
      Caption = 'MB'
    end
    object Label4: TLabel
      Left = 168
      Top = 24
      Width = 16
      Height = 13
      Caption = 'MB'
    end
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 76
      Height = 13
      Caption = 'Free space limit:'
    end
    object Label2: TLabel
      Left = 312
      Top = 48
      Width = 16
      Height = 13
      Caption = 'MB'
    end
    object seSpaceLimit: TSpinEdit
      Left = 96
      Top = 40
      Width = 65
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object edFreeSpace: TEdit
      Left = 72
      Top = 16
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object CheckBox4: TCheckBox
      Left = 208
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Log file size limit:'
      TabOrder = 2
    end
    object SpinEdit2: TSpinEdit
      Left = 240
      Top = 40
      Width = 65
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 272
    Width = 353
    Height = 161
    Caption = 'Captering'
    TabOrder = 3
    object Label5: TLabel
      Left = 16
      Top = 24
      Width = 111
      Height = 13
      Caption = 'Exclude from captering:'
    end
    object Label6: TLabel
      Left = 16
      Top = 88
      Width = 65
      Height = 13
      Caption = 'Image quality:'
    end
    object Label7: TLabel
      Left = 160
      Top = 88
      Width = 6
      Height = 13
      Caption = '%'
    end
    object Label9: TLabel
      Left = 16
      Top = 112
      Width = 91
      Height = 13
      Caption = 'Captering directory:'
    end
    object SpeedButton1: TSpeedButton
      Left = 320
      Top = 128
      Width = 23
      Height = 22
      Caption = '...'
    end
    object cbSameImg: TCheckBox
      Left = 56
      Top = 56
      Width = 81
      Height = 17
      Caption = 'Same image'
      TabOrder = 0
    end
    object cbScrSaver: TCheckBox
      Left = 208
      Top = 40
      Width = 89
      Height = 17
      Caption = 'Screen saver'
      TabOrder = 1
    end
    object cbStandBy: TCheckBox
      Left = 208
      Top = 56
      Width = 65
      Height = 17
      Caption = 'Stand by'
      TabOrder = 2
    end
    object cbPCC: TCheckBox
      Left = 56
      Top = 40
      Width = 81
      Height = 17
      Caption = 'PCCapture'
      TabOrder = 3
    end
    object SpinEdit1: TSpinEdit
      Left = 88
      Top = 80
      Width = 65
      Height = 22
      MaxLength = 3
      MaxValue = 100
      MinValue = 0
      TabOrder = 4
      Value = 50
    end
    object Edit1: TEdit
      Left = 56
      Top = 128
      Width = 257
      Height = 21
      TabOrder = 5
    end
  end
end
