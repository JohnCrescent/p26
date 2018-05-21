unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var f:textfile;
  pocet,i,cislo:integer;
begin
  randomize;
  assignfile(f,'desat.txt');
  rewrite(f);
  pocet:=0;
  for i:=1 to 10 do
  begin
    cislo:=Random(90)+10;
    writeln(f,cislo);
    if cislo mod 2=0 then inc(pocet);
  end;
  closefile(f);
  showmessage('Počet párnych čísel je '+intTOstr(pocet));

end;

end.

