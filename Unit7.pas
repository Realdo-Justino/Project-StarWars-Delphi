unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Button6: TButton;
    Button7: TButton;
    Button1: TButton;
    Fechar: TButton;
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses MainPage, Unit3, Unit5;

procedure TForm7.Button1Click(Sender: TObject);
begin
  Form1 := TForm1.Create(nil);
  Form1.Show;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
  Form3 := Unit3.TForm3.Create(nil);
  Form3.Show;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
  Form5 := TForm5.Create(nil);
  Form5.Show;
end;

procedure TForm7.FecharClick(Sender: TObject);
begin
Close;
end;

end.
