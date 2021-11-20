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
  Vcl.StdCtrls, REST.Response.Adapter;

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
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
procedure TForm1.Button1Click(Sender: TObject);
begin
  page := 1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
end;
procedure TForm1.Button2Click(Sender: TObject);
var
  retorno:bool;
begin
  retorno:=false;
  page:=1;
  repeat
      retorno:=FDMemTable1.Locate('name',Edit1.Text,[ loPartialKey ,loCaseInsensitive	]);
      if(retorno=false)then
        retorno:=FDMemTable1.Locate('gender',Edit1.Text,[ loPartialKey,loCaseInsensitive	]);
      if(retorno=false)then
      begin
        try
          RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
          RESTRequest1.Execute;
          page := page+1;
        Except
          page := page-1;
          RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
          RESTRequest1.Execute;
          retorno:=true;
        end;
      end;
  until(retorno=true);
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  page := 1;
  RESTRequest1.Resource := 'api/people/?page=' + IntToStr(page);
  RESTRequest1.Execute;
end;
procedure TForm1.Button4Click(Sender: TObject);
begin
  page := page - 1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
end;
procedure TForm1.Button5Click(Sender: TObject);
begin
  page := page + 1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
end;
procedure TForm1.FormCreate(Sender: TObject);
begin
  page := 1;
  RESTRequest1.Resource := 'api/people/?page=' +  IntToStr(page);
  RESTRequest1.Execute;
end;
end.
