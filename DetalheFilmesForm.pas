unit DetalheFilmesForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Titulo: TLabel;
    Episodio: TLabel;
    Abertura: TLabel;
    Ano: TLabel;
    Personagens: TListBox;
    Planetas: TListBox;
    Fechar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit5;

procedure TForm6.FecharClick(Sender: TObject);
begin
Close;
end;

procedure TForm6.FormCreate(Sender: TObject);
var
  texto:string;
  i,j:integer;
  Personagen_split:TArray<String>;
  residents_spit:TArray<String>;
  test:bool;
begin
  Titulo.Caption:=Form5.DBEdit1.Text;
  Episodio.Caption:=Form5.DBEditEpisodio.Text;
  Abertura.Caption:=Form5.DBEditAbertura.Text;
  Ano.Caption:=Form5.DBEditAno.Text;


  j:=4;
  texto:=Form5.DBEditPersonagem.Text;
  Personagen_split:=texto.Split(['/']);
  While(j+1<length(Personagen_split))do
  begin
      Personagens.items.Add(Personagen_split[j]+Personagen_split[j+1]);
      j:=j+6;
  end;

  j:=4;
  texto:=Form5.DBEditplanetas.Text;
  residents_spit:=texto.Split(['/']);
  While(j+1<length(residents_spit))do
  begin
      Planetas.items.Add(residents_spit[j]+residents_spit[j+1]);
      j:=j+6;
  end;

end;

end.
