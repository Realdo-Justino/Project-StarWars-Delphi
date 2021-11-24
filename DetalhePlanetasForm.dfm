object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 342
  ClientWidth = 357
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
  object PRotacao: TLabel
    Left = 91
    Top = 8
    Width = 3
    Height = 13
  end
  object Orbita: TLabel
    Left = 91
    Top = 48
    Width = 3
    Height = 13
  end
  object Diametro: TLabel
    Left = 91
    Top = 88
    Width = 3
    Height = 13
  end
  object Clima: TLabel
    Left = 91
    Top = 123
    Width = 3
    Height = 13
  end
  object Populacao: TLabel
    Left = 91
    Top = 163
    Width = 3
    Height = 13
  end
  object Filmes: TListBox
    Left = 91
    Top = 197
    Width = 166
    Height = 65
    ItemHeight = 13
    TabOrder = 0
  end
  object Residentes: TListBox
    Left = 91
    Top = 269
    Width = 166
    Height = 65
    ItemHeight = 13
    TabOrder = 1
  end
  object Fechar: TButton
    Left = 8
    Top = 8
    Width = 49
    Height = 25
    Caption = 'EXIT'
    TabOrder = 2
    OnClick = FecharClick
  end
end
