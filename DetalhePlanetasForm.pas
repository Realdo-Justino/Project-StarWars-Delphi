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
    Aniversario: TLabel;
    Generos: TLabel;
    Filmes: TListBox;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    BindSourceDB1: TBindSourceDB;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
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

end.
