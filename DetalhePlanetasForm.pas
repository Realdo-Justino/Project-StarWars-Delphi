unit DetalhePlanetasForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    PRotacao: TLabel;
    Orbita: TLabel;
    Diametro: TLabel;
    Filmes: TListBox;
    Clima: TLabel;
    Populacao: TLabel;
    Residentes: TListBox;
    Fechar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm4.FecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm4.FormCreate(Sender: TObject);
var
  texto:string;
  i,j:integer;
  filmes_split:TArray<String>;
  residents_spit:TArray<String>;
  test:bool;
begin
  Protacao.Caption:=Form3.DBEditRotacao.Text;
  Orbita.Caption:=Form3.DBEditOrbita.Text;
  Diametro.Caption:=Form3.DBEditDiametro.Text;
  Clima.Caption:=Form3.DBEditClima.Text;
  Populacao.Caption:=Form3.DBEditPopulacao.Text;

  j:=4;
  texto:=Form3.DBEditFilme.Text;
  filmes_split:=texto.Split(['/']);
  While(j+1<length(filmes_split))do
  begin
      Filmes.items.Add(filmes_split[j]+filmes_split[j+1]);
      j:=j+6;
  end;

  j:=4;
  texto:=Form3.DBEditResidentes.Text;
  residents_spit:=texto.Split(['/']);
  While(j+1<length(residents_spit))do
  begin
    Residentes.items.Add(residents_spit[j]+residents_spit[j+1]);
      j:=j+6;
  end;
end;

end.
