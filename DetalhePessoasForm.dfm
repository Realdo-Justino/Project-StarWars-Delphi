object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
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
  object Nome: TLabel
    Left = 91
    Top = 48
    Width = 3
    Height = 13
  end
  object Aniversario: TLabel
    Left = 91
    Top = 88
    Width = 3
    Height = 13
  end
  object Generos: TLabel
    Left = 91
    Top = 128
    Width = 3
    Height = 13
  end
  object Filmes: TListBox
    Left = 91
    Top = 160
    Width = 166
    Height = 65
    ItemHeight = 13
    TabOrder = 0
  end
  object Fechar: TButton
    Left = 8
    Top = 8
    Width = 49
    Height = 25
    Caption = 'EXIT'
    TabOrder = 1
    OnClick = FecharClick
  end
end
