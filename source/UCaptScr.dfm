object CapScrForm: TCapScrForm
  Left = 127
  Top = 86
  BorderStyle = bsSingle
  Caption = 'Screen Capture '
  ClientHeight = 366
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 313
    Top = 33
    Height = 333
  end
  object Image: TImage
    Left = 316
    Top = 33
    Width = 276
    Height = 333
    Align = alClient
    AutoSize = True
    Center = True
    Stretch = True
    OnDblClick = sbFullClick
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 33
    Align = alTop
    TabOrder = 0
    object BSave: TSpeedButton
      Left = 304
      Top = 6
      Width = 23
      Height = 22
      Hint = 'Save picture'
      Glyph.Data = {
        26050000424D26050000000000003604000028000000100000000F0000000100
        080000000000F000000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
        A400000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070700000000
        0000000000000000000707000303000000000000070700030007070003030000
        0000000007070003000707000303000000000000070700030007070003030000
        0000000000000003000707000303030303030303030303030007070003030000
        0000000000000303000707000300070707070707070700030007070003000707
        0707070707070003000707000300070707070707070700030007070003000707
        0707070707070003000707000300070707070707070700000007070003000707
        0707070707070007000707000000000000000000000000000007070707070707
        07070707070707070707}
      OnClick = BSaveClick
    end
    object BPrint: TSpeedButton
      Left = 336
      Top = 6
      Width = 23
      Height = 22
      Hint = 'Print picture'
      Glyph.Data = {
        26050000424D26050000000000003604000028000000100000000F0000000100
        080000000000F000000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0C8
        A400000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
        0707070707070707070707070000000000000000000000070707070007070707
        0707070707000700070700000000000000000000000000070007000707070707
        07FBFBFB07070000000700070707070707101010070700070007000000000000
        0000000000000007070000070707070707070707070007000700070000000000
        00000000000700070000070700FFFFFFFFFFFFFFFF000700070007070700FF00
        00000000FF000000000707070700FFFFFFFFFFFFFFFF000707070707070700FF
        0000000000FF000707070707070700FFFFFFFFFFFFFFFF000707070707070700
        00000000000000000707}
      OnClick = BPrintClick
    end
    object BCapture: TSpeedButton
      Left = 272
      Top = 8
      Width = 23
      Height = 20
      Hint = 'Capture Screen'
      Glyph.Data = {
        16020000424D160200000000000076000000280000001A0000001A0000000100
        040000000000A001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777700000077777778000008777777777777000000777777787777
        787777777777770000007780807700000770808008077700000088080780EEEE
        E08708088080770000008080870EEEEEEE0780800808F7000000880070EEEEEE
        EEE07008808077000000808070EEEEEEEEE07000080877000000880070E6EEEE
        EEE07000808077000000808070E66EEEEEE07000080877000000880070EE66EE
        EEE070008080770000008080870EE666EE07800008087700000088080780EEEE
        E087080080807700000080808077000007788080080877000000880808087777
        7FF78808808077000000000000008FFFFF777000000077000000F77777770077
        77F00777777F77000000F7777777770000077777777F77000000F7FFFFFFFFFF
        FFFFFFFFFFFF770000007F7777777777777777777777F7000000777000870888
        888087700008770000007777F807077777707777FF8077000000777777877777
        7708777777777700000077777777770FFF877777777777000000777777777777
        7777777777777700000077777777777777777777777777000000}
      OnClick = BCaptureClick
    end
    object BClear: TSpeedButton
      Left = 368
      Top = 6
      Width = 25
      Height = 22
      Hint = 'Clear picture'
      Glyph.Data = {
        56070000424D5607000000000000360400002800000028000000140000000100
        0800000000002003000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030303030303030303FF030303FF030303030303030303
        0303030303030303030303030303030303030303030303030303FF0303FFFFFF
        0303FF0303030303030303030303030303030303030303030303030303030303
        0303FFFFFFFFFFFFFFFFFFFF03030303030303030303030303030303030303FF
        FFFFFF03030303030303FFFFFFFFFFFFFFFFF801010103030303030303030303
        030303030303F8F8F8F8FFFF030303030303FFFFFFFFFFFFFFF8F9FDFD050103
        03030303030303030303030303F8FF0303F8F8FFFF0303030303FFFFFFFFFFFF
        FFF9FDF9FDFD050103030303030303030303030303F8FF030303F8F8FFFF0303
        0303FFFFFFFFFFFF03FDF9FFF9FDFD0500030303030303030303030303F8FF03
        030303F8F8FFFF030303FFFF03FFFFFF03F9FDFFFDF9FD000600030303030303
        0303030303F803FF030303F8F8F8FFFF0303FF030303FF030303F9FDFFFD0002
        0406000303030303030303030303F803FF03F8F8F8F8F8FFFF03FF0303030303
        030303F9FD00FA02020406000303030303030303030303F803F803F8F8F8F8F8
        FFFF0303030303030303030300FAFBFA020200F8000303030303030303030303
        F803FF03F8F8F8F8F8FF030303030303030303030300FAFBFA0004F8F8000303
        030303030303030303F803FF03F8F8F8F8F803030303030303030303030300FA
        0007FB04F8F8030303030303030303030303F803F80303F8F8F8030303030303
        030303030303030007FFFBFB04F803030303030303030303030303F803FF0303
        F8F8030303030303030303030303030300FFFFFBFB0403030303030303030303
        03030303F803FF0303F803030303030303030303030303030300FFFFFBFB0303
        03030303030303030303030303F803FF03030303030303030303030303030303
        030300FFFFFB03030303030303030303030303030303F8030303}
      NumGlyphs = 2
      OnClick = BClearClick
    end
    object BCopy: TSpeedButton
      Left = 400
      Top = 6
      Width = 25
      Height = 22
      Hint = 'Copy picture'
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333888888888888888333333330000000000000008833333
        30BBBBBBBBBBBBBBB083333330B8000000000008B083333330B0FFFFFFFFFFF0
        B08333334FB0F777777777F0B083333344F0FFFFFFFFFFF0B0833333444F7FFF
        FFFFFFF0B08334444444F7FF777777F0B083344444444F7FFFFFFFF0B0833444
        444444F7FFFFFFF0B083344444444F7FF77777F0B08334444444F7FFFFFFFFF0
        B0833333444F7FFFFFFFFFF0B083333344F0FF77777777F0B08333334FB0FFFF
        FFFFFFF0B083333330B0FFFFFFFFFFF0B083333330B0FF0000000FF0B0833333
        30B80007F7770008B083333330BBBBB07F70BBBBB03333333300000007000000
        0333333333333330F77033333333333333333330000033333333}
      OnClick = BCopyClick
    end
    object sbLoad: TSpeedButton
      Left = 8
      Top = 6
      Width = 41
      Height = 22
      Caption = '&Load'
      OnClick = sbLoadClick
    end
    object sbClear: TSpeedButton
      Left = 56
      Top = 6
      Width = 41
      Height = 21
      Caption = '&Clear'
      OnClick = sbClearClick
    end
    object sbDelete: TSpeedButton
      Left = 104
      Top = 6
      Width = 41
      Height = 22
      Caption = '&Delete'
      OnClick = sbDeleteClick
    end
    object sbClose: TSpeedButton
      Left = 224
      Top = 6
      Width = 41
      Height = 22
      Caption = '&C&lose'
      OnClick = sbCloseClick
    end
    object sbFull: TSpeedButton
      Left = 152
      Top = 6
      Width = 65
      Height = 22
      Caption = '&Full Screen'
      OnClick = sbFullClick
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 33
    Width = 313
    Height = 333
    Align = alLeft
    TabOrder = 1
    object ListCapImg: TListView
      Left = 1
      Top = 1
      Width = 311
      Height = 331
      Align = alClient
      Columns = <
        item
          Caption = 'Name'
          Width = 100
        end
        item
          Caption = 'Size'
        end
        item
          Caption = 'Captured Date'
          Width = 75
        end
        item
          Caption = 'Cpatured Time'
          Width = 75
        end>
      SortType = stBoth
      TabOrder = 0
      ViewStyle = vsReport
      OnClick = ListCapImgClick
      OnKeyDown = ListCapImgKeyDown
    end
  end
  object SPD: TSavePictureDialog
    Filter = 
      'Fichier image JPEG (*.jpg)|*.jpg|Fichier image JPEG (*.jpeg)|*.j' +
      'peg|Bitmaps (*.bmp)|*.bmp|Ic'#244'nes (*.ico)|*.ico|M'#233'taFichiers '#233'vol' +
      'u'#233's (*.emf)|*.emf|M'#233'taFichiers (*.wmf)|*.wmf'
    Left = 440
  end
end
