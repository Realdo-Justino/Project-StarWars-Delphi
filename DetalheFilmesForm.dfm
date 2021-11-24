object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 342
  ClientWidth = 447
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
  object Titulo: TLabel
    Left = 91
    Top = 48
    Width = 3
    Height = 13
  end
  object Episodio: TLabel
    Left = 91
    Top = 88
    Width = 3
    Height = 13
  end
  object Abertura: TLabel
    Left = 264
    Top = 48
    Width = 9
    Height = 13
  end
  object Ano: TLabel
    Left = 91
    Top = 131
    Width = 3
    Height = 13
  end
  object Personagens: TListBox
    Left = 91
    Top = 165
    Width = 166
    Height = 65
    ItemHeight = 13
    TabOrder = 0
  end
  object Planetas: TListBox
    Left = 91
    Top = 237
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
