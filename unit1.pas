unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

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
    function FormCreate(Sender: TObject): integer;
    procedure InfoClick(Sender: TObject);
    procedure KoniecClick(Sender: TObject);
    procedure LosujClick(Sender: TObject);
    procedure WyczyscClick(Sender: TObject);
  private
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
  var liczba1, liczba2, suma, suma2: integer;

procedure TForm1.LosujClick(Sender: TObject);
var
  arrString : array[1..6] of string;
  sFor1:string;
begin
    arrString[1] := 'a';
    arrString[2] := 'b';
    arrString[3] := 'c';
    arrString[4] := 'd';
    arrString[5] := 'e';
    arrString[6] := 'f';

    For sFor1 in arrString do
    LosowaLista.Items.Add(sFor1);

end;

procedure TForm1.WyczyscClick(Sender: TObject);
begin
  LosowaLista.clear;
end;

procedure TForm1.InfoClick(Sender: TObject);
begin
  ShowMessage('Autor programu: Dawid Glinkowski');
end;

function TForm1.FormCreate(Sender: TObject):integer;
const
  numarray : array[1..5] of integer = (1,2,3,4,5);
var
  i : integer;
begin
  i := numarray[i];
     FormCreate := i;
end;

procedure TForm1.KoniecClick(Sender: TObject);
begin
    close;
end;

end.

