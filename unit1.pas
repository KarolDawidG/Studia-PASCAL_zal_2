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
  arrString : array[1..6] of integer;

implementation

{$R *.lfm}

{ TForm1 }
  var liczba1, liczba2, suma, suma2: integer;

procedure TForm1.LosujClick(Sender: TObject);
var
sFor1:integer;
begin
Randomize;
     arrString[1] := random(100);
     arrString[2] := random(100);
     arrString[3] := random(100);
     arrString[4] := random(100);
     arrString[5] := random(100);
     arrString[6] := random(100);
    For sFor1 in arrString do
    LosowaLista.Items.Add(IntToStr(sFor1));
end;




procedure TForm1.SortujClick(Sender: TObject);
var i : integer;
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

