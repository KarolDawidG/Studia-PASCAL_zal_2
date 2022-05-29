unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Losuj: TButton;
    Sortuj: TButton;
    Info: TButton;
    Koniec: TButton;
    LosowaLista: TListBox;
    SortowanaLista: TListBox;
    procedure InfoClick(Sender: TObject);
    procedure KoniecClick(Sender: TObject);
    procedure LosujClick(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
  var liczba1, liczba2, suma : integer;

procedure TForm1.LosujClick(Sender: TObject);
begin
  liczba1 :=10;
  liczba2 :=20;
  suma :=  liczba1 + liczba2;
  Edit1.Text := FloatToStr(suma);
end;

procedure TForm1.InfoClick(Sender: TObject);
begin
  ShowMessage('Autor programu: Dawid Glinkowski');
end;

procedure TForm1.KoniecClick(Sender: TObject);
begin
    ShowMessage('Nie dziala');
end;

end.

