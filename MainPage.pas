unit MainPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, REST.Response.Adapter, Data.Bind.DBScope, Vcl.DBCtrls, Vcl.Mask;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Memo1: TMemo;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    DBGrid1: TDBGrid;
    FDMemTable1: TFDMemTable;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    DBEdit1: TDBEdit;
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  page : Integer;
implementation
{$R *.dfm}
procedure TForm1.Button2Click(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  retorno:=false;
  page:=1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
  listbox1.Items.Clear;
  if(edit1.Text<>'')then
  repeat
        Fdmemtable1. FIRST;
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('name').AsString;
          if(valor=Edit1.Text)then
            listbox1.Items.Add(DBEdit1.Text)
          else
          begin
            valor:=Fdmemtable1.Fields.FieldByName('gender').AsString;
            if(valor=Edit1.Text)then
              listbox1.Items.Add(DBEdit1.Text);
          end;
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;
        try
          page := page+1;
          RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
          RESTRequest1.Execute;
        Except
          page := page-1;
          RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
          RESTRequest1.Execute;
          retorno:=true;
        end;
  until(retorno=true);

end;

procedure TForm1.Edit1Change(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  if(Edit1.Text='')then
  begin
    page := 1;
    listbox1.Items.Clear;
    RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
    RESTRequest1.Execute;
    retorno:=false;
    Fdmemtable1. FIRST;
     repeat
          While not Fdmemtable1. EOF DO
          BEGIN
            valor:=Fdmemtable1.Fields.FieldByName('name').AsString;
            listbox1.Items.Add(DBEdit1.Text);
            DBEdit1.Clear;
            Fdmemtable1.Next;
          END;
          try
            page := page+1;
            RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
            RESTRequest1.Execute;
          Except
            retorno:=true;
          end;
     until(retorno=true);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  page := 1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  retorno:bool;
  valor:string;
begin
  page := 1;
  listbox1.Items.Clear;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
  retorno:=false;
  Fdmemtable1. FIRST;
   repeat
        While not Fdmemtable1. EOF DO
        BEGIN
          valor:=Fdmemtable1.Fields.FieldByName('name').AsString;
          listbox1.Items.Add(DBEdit1.Text);
          DBEdit1.Clear;
          Fdmemtable1.Next;
        END;
        try
          page := page+1;
          RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
          RESTRequest1.Execute;
        Except
          retorno:=true;
        end;
   until(retorno=true);
end;

end.
