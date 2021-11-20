object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 506
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 552
    Top = 98
    Width = 191
    Height = 23
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 167
    Width = 757
    Height = 339
    Align = alBottom
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birth_year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gender'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'films'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'height'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mass'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hair_color'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'skin_color'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eye_color'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'birth_year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'gender'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'homeworld'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'films'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'species'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vehicles'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'starships'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'created'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'edited'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'url'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 384
    Top = 8
    Width = 81
    Height = 21
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 32
    Top = 128
    Width = 75
    Height = 25
    Caption = '|<'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 113
    Top = 128
    Width = 75
    Height = 25
    Caption = '<<'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 194
    Top = 128
    Width = 75
    Height = 25
    Caption = '>>'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button2: TButton
    Left = 504
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 7
    OnClick = Button2Click
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://swapi.dev'
    Params = <>
    Left = 56
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Resource = 'api/people/?page=1'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 152
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 424
    Top = 56
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = RESTResponse1
      FieldName = 'Content'
      Control = Memo1
      Track = False
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'height'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'mass'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'hair_color'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'skin_color'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'eye_color'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'birth_year'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gender'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'homeworld'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'films'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'species'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'vehicles'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'starships'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'created'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'edited'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'url'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 624
    Top = 40
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    RootElement = 'results'
    Left = 296
    Top = 48
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 496
    Top = 64
  end
end
