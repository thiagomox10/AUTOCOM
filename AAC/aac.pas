unit aac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm2 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure ShowAAC; stdcall; external 'LIB\32\aacXE10.dll';

procedure TForm2.FormCreate(Sender: TObject);
var
   i: integer;
   y,m,d,h, n: word;
   s: string;
begin
   s := '';

   s := InputBox('Senha','Informe a senha', s);

   if  s <> '' then
   begin
      DecodeDate(Date,y,m,d);
      DecodeTime(now,h,n,n,n);

      i := StrToIntDef(s,0);

   if i = y+d+m+h then
      ShowAAC
   else
      ShowMessage('Senha incorreta.');
   end
   else
      ShowMessage('Senha incorreta.');
   FatalExit(0);
end;

end.
