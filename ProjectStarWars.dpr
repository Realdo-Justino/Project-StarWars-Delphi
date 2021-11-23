program ProjectStarWars;

uses
  Vcl.Forms,
  MainPage in 'MainPage.pas' {Form1},
  DetalhePessoasForm in 'DetalhePessoasForm.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  DetalhePlanetasForm in 'DetalhePlanetasForm.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  DetalheFilmesForm in 'DetalheFilmesForm.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
