object frmMain: TfrmMain
  Left = 202
  Top = 116
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'More TV ayarlar'#305'n'#305' yedekleme'
  ClientHeight = 307
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    F099999000090000003000FFFFFFF0009999990090003333080FFFFFFFFF0099
    99990000003333308880FFFFFFFF999990000333333300088880FFFFFFFF9999
    033333333300777778880FFFFFFF99033333333300777777778880FFFFFF9033
    3333330077777777777880FFFFFF003333300087777777777777880FFFFF0333
    00777787777777777777780FFFFF033077777707777700000000770FFFFF0007
    77777707777007777777000FFFFFFF0877777707707077777780FFFFFFFFFF08
    7777777077077777780FFFFFFFFFFF08777777770770777770000FFFFFFFFF08
    777777777077777770777700FFFFFF08877077777708777707777770FFFFFFF0
    8707777777708770777777770FFFFFF08707777777707077777777770FFFFFF0
    8770077777077707777777770FFFFFF0870777777777700077777770FFFFFFF0
    8800777777770F000700000FFFFFFFF00800777077770FF0070FFFFFFFFFFFF0
    00000770777770FFF00FFFFFFFFFFFFF0000000077777700F00FFFFFFFFF000F
    0000000007777770070FFFFFFFFF00000000000077777007770FF000FFFF0000
    00000000777777000700000FFFFFF00000000000000707707700000FFFFFF000
    0000000000000000000000FFFFFFFF000000000000000000000000FFFFFFFFF0
    0F0000FFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 132
    Top = 8
    Width = 169
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bu ara'#231' More TV 3.50 ile uyumludur'
  end
  object Label2: TLabel
    Left = 8
    Top = 216
    Width = 293
    Height = 17
    AutoSize = False
    Caption = 'Kaydetmeden '#246'nce More TV'#39'yi kapat'#305'n'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 140
    Width = 293
    Height = 5
    Shape = bsTopLine
  end
  object Label3: TLabel
    Left = 12
    Top = 104
    Width = 289
    Height = 17
    AutoSize = False
    Caption = 'Y'#252'klemeden '#246'nce  yapt'#305#287#305'n'#305'z t'#252'm de'#287'i'#351'iklikleri kaydedin.'
    WordWrap = True
  end
  object Bevel2: TBevel
    Left = 8
    Top = 28
    Width = 293
    Height = 5
    Shape = bsTopLine
  end
  object Bevel3: TBevel
    Left = 8
    Top = 244
    Width = 293
    Height = 5
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 4
    Top = 24
    Width = 44
    Height = 13
    Caption = 'Y'#252'kleme '
  end
  object Label5: TLabel
    Left = 4
    Top = 136
    Width = 26
    Height = 13
    Caption = 'Kay'#305't '
  end
  object btnTamam: TButton
    Left = 220
    Top = 260
    Width = 75
    Height = 21
    Caption = 'Tamam'
    TabOrder = 0
    OnClick = btnTamamClick
  end
  object Button2: TButton
    Left = 164
    Top = 68
    Width = 121
    Height = 25
    Caption = '(*.ini) dosyas'#305'ndan al'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 164
    Top = 184
    Width = 121
    Height = 25
    Caption = '(*.ini) olarak kaydet'
    TabOrder = 2
    OnClick = Button3Click
  end
  object statusMain: TStatusBar
    Left = 0
    Top = 288
    Width = 309
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Button1: TButton
    Left = 136
    Top = 260
    Width = 75
    Height = 21
    Caption = 'Ayr'#305'nt'#305'lar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 12
    Top = 260
    Width = 75
    Height = 21
    Caption = 'K'#252'nye'
    TabOrder = 5
    OnClick = Button4Click
  end
  object OpenDialog: TOpenDialog
    Left = 128
    Top = 64
  end
  object SaveDialog: TSaveDialog
    Left = 132
    Top = 180
  end
end
