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
  PixelsPerInch = 96
  TextHeight = 13
  object PRotacao: TLabel
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
    Top = 168
    Width = 166
    Height = 65
    ItemHeight = 13
    TabOrder = 0
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = Filmes
      Track = False
      FillDataSource = Form3.BindSourceDB2
      FillDisplayFieldName = 'name'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'rotation_period'
      Component = PRotacao
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSource = Form3.DataSource1
    ScopeMappings = <>
    Left = 24
    Top = 64
  end
end
