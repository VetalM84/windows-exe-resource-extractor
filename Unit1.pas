unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, xpman;

type
  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure ExtractRes(ResType, ResName, ResNewName : String);

var
  Form1: TForm1;

implementation

{$R *.dfm}
{$R resource.res}

procedure ExtractRes(ResType, ResName, ResNewName : String);
var  Res : TResourceStream;
begin
Res := TResourceStream.Create(Hinstance, Resname, Pchar(ResType));
Res.SavetoFile(ResNewName);
Res.Free;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
// Записывает в текущую папку arj.exe
ExtractRes('EXEFILE', 'obj', 'object.EXE');
end;

end.
