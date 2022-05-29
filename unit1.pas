unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Losuj: TButton;
    Sortuj: TButton;
    Info: TButton;
    Koniec: TButton;
    LosowaLista: TListBox;
    SortowanaLista: TListBox;
    procedure LosowaListaClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.LosowaListaClick(Sender: TObject);
begin

end;

end.

