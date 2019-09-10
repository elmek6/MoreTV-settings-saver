object frmAyrintilar: TfrmAyrintilar
  Left = 289
  Top = 133
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Ayr'#305'nt'#305'lar'
  ClientHeight = 253
  ClientWidth = 349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object vle: TValueListEditor
    Left = 16
    Top = 16
    Width = 317
    Height = 197
    TabOrder = 0
    ColWidths = (
      150
      161)
  end
  object Button1: TButton
    Left = 260
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Kapat'
    TabOrder = 1
    OnClick = Button1Click
  end
end
