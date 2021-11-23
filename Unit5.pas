unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, REST.Types, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.Bind.DBScope, REST.Response.Adapter, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Bind.Components, REST.Client, Data.Bind.ObjectScope,
  Vcl.Mask, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    DBEdit1: TDBEdit;
    Button6: TButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    FDMemTable1: TFDMemTable;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    DataSource1: TDataSource;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    ListBox1: TListBox;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  page : Integer;

implementation

{$R *.dfm}

uses DetalheFilmesForm;

procedure TForm5.Button2Click(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  retorno:=false;
  page:=1;
  RESTRequest1.Resource := 'api/films/';
  RESTRequest1.Execute;
  listbox1.Items.Clear;
  Fdmemtable1. FIRST;
  if(edit1.Text<>'')then
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
          if(valor=Edit1.Text)then
            listbox1.Items.Add(DBEdit1.Text)
          else
          begin
            valor:=Fdmemtable1.Fields.FieldByName('release_date').AsString;
            if(valor=Edit1.Text)then
              listbox1.Items.Add(DBEdit1.Text);
          end;
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;

end;

procedure TForm5.Button6Click(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  page := 1;
  listbox1.Items.Clear;

  RESTRequest1.Resource := 'api/films/';
  RESTRequest1.Execute;
  retorno:=false;
  Fdmemtable1. FIRST;
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
          listbox1.Items.Add(DBEdit1.Text);
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;
end;

procedure TForm5.Edit1Change(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  if(Edit1.Text='')then
  begin
    page := 1;
    listbox1.Items.Clear;
    RESTRequest1.Resource := 'api/films/';
    RESTRequest1.Execute;
    retorno:=false;
    Fdmemtable1. FIRST;
          While not Fdmemtable1. EOF DO
          BEGIN
            valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
            listbox1.Items.Add(DBEdit1.Text);
            DBEdit1.Clear;
            Fdmemtable1.Next;
          END;
  end;
end;

procedure TForm5.FormCreate(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  page := 1;
  listbox1.Items.Clear;

  RESTRequest1.Resource := 'api/films/';
  RESTRequest1.Execute;
  retorno:=false;
  Fdmemtable1. FIRST;
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
          listbox1.Items.Add(DBEdit1.Text);
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;
end;

procedure TForm5.FormShow(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  page := 1;
  listbox1.Items.Clear;

  RESTRequest1.Resource := 'api/films/';
  RESTRequest1.Execute;
  retorno:=false;
  Fdmemtable1. FIRST;
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
          listbox1.Items.Add(DBEdit1.Text);
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;
end;

procedure TForm5.ListBox1Click(Sender: TObject);
var
  Selected,valor: string;
  retorno:bool;
begin
  Selected := ListBox1.Items[ListBox1.ItemIndex];
  Fdmemtable1. FIRST;
  retorno:=false;
  While not retorno=true DO
  BEGIN
    try
      valor:=Fdmemtable1.Fields.FieldByName('title').AsString;
      DBEdit1.Clear;
      Fdmemtable1.Next;
    Except
      retorno:=true;
    end;
    if(valor=Selected)then
    begin
      retorno:=true;
      Fdmemtable1.Prior;
    end;
  END;
  Form6 := TForm6.Create(nil);
  Form6.Show;
end;


end.
