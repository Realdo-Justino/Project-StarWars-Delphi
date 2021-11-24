unit DetalhePessoasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.Components,
  Data.Bind.DBScope, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors;

type
  TForm2 = class(TForm)
    Nome: TLabel;
    Aniversario: TLabel;
    Generos: TLabel;
    Filmes: TListBox;
    Fechar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses MainPage;

procedure TForm2.FecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  texto:string;
  i,j,contador:integer;
  movie: array[0..5] of String;
  filmes_split:TArray<String>;
begin
Nome.Caption:=Form1.DBEdit1.Text;
Generos.Caption:=Form1.DBEditGenero.Text;
Aniversario.Caption:=Form1.DBEditNascimento.Text;

j:=4;
  texto:=Form1.DBEditFilmes.Text;
  filmes_split:=texto.Split(['/']);
  While(j+1<length(filmes_split))do
  begin
      Filmes.items.Add(filmes_split[j]+filmes_split[j+1]);
      j:=j+6;
  end;
end;


end.
