unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  PLista = ^Tlista;
  Tlista =  record
    next  : PLista;
    data  : integer;
  end;

// Definicja typu obiektowego slist
  slist = object
    public
      head : PLista;  // początek listy
      constructor init;
      destructor destroy;
      function size : cardinal;
      procedure printl;
      procedure push_front ( v : longint );
  end;

type

  { TForm1 }

  TForm1 = class(TForm)
    Wyczysc: TButton;
    Losuj: TButton;
    Sortuj: TButton;
    Info: TButton;
    Koniec: TButton;
    LosowaLista: TListBox;
    SortowanaLista: TListBox;
    procedure InfoClick(Sender: TObject);
    procedure KoniecClick(Sender: TObject);
    procedure LosujClick(Sender: TObject);
    procedure SortujClick(Sender: TObject);
    procedure WyczyscClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;


implementation

 constructor slist.init;
begin
  head := nil;
end;

destructor slist.destroy;
begin
end;

// Funkcja oblicza liczbę elementów listy
function slist.size : cardinal;
var
  c : cardinal;
  p : PLista;
begin
  c := 0;
  p := head;
  while p <> nil do
  begin
    inc ( c );
    p := p^.next;
  end;
  size := c;
end;

// Procedura wyświetla zawartość elementów listy
procedure slist.printl;
var
  i : integer;
  p : PLista;
begin
  Randomize;
  p := head;
  i := 1;
  while p <> nil do
  begin
    writeln ( 'Nr: ', i, '  liczba = ', Random (200) );
    inc ( i );
    p := p^.next;
  end;
  writeln;
end;

// Procedura dołączania na początek listy
procedure slist.push_front ( v : longint );
var
  p : PLista;
begin
  new ( p );
  p^.next := head;
  p^.data := v;
  head    := p;
end;
{$R *.lfm}

{ TForm1 }
 // var liczba1 : integer;   jakies zmienne globalne.

procedure TForm1.LosujClick(Sender: TObject);
begin

end;

procedure TForm1.SortujClick(Sender: TObject);
begin

end;

procedure TForm1.WyczyscClick(Sender: TObject);
begin
  LosowaLista.clear;
  SortowanaLista.clear;
end;

procedure TForm1.InfoClick(Sender: TObject);
begin
  ShowMessage('Autor programu: Dawid Glinkowski');
end;

procedure TForm1.KoniecClick(Sender: TObject);
begin
    close;
   // MessageDlg('Program zostanie zamkniety. ', mtConfirmation, [mbOK], 0);
end;

end.

