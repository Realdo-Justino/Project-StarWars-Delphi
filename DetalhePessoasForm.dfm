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
  object BindSourceDB1: TBindSourceDB
    ScopeMappings = <>
    Left = 16
    Top = 64
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = Form1.BindSourceDB1
      FieldName = 'name'
      Component = Nome
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = Form1.BindSourceDB1
      FieldName = 'birth_year'
      Component = Aniversario
      ComponentProperty = 'Caption'
    end
    object LinkPropertyToFieldCaption3: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = Form1.BindSourceDB1
      FieldName = 'gender'
      Component = Generos
      ComponentProperty = 'Caption'
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      Control = Filmes
      Track = True
      FillDataSource = Form1.BindSourceDB1
      FillDisplayFieldName = 'films'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
end
