unit ayrintilar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit;

type
  TfrmAyrintilar = class(TForm)
    vle: TValueListEditor;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAyrintilar: TfrmAyrintilar;

implementation

uses main;

{$R *.dfm}

procedure TfrmAyrintilar.FormCreate(Sender: TObject);
  var
    i     :integer;
    deger :string;
begin
  for i:=1 to ALAN do begin
    case SIRA[i].veritip of
      SAYI: deger:=floattostr(dizi[i].sayi);
      YAZI:
       deger:=dizi[i].yazi;
    end;
    vle.Values[sira[i].anahtar]:=deger;
  end;
end;

procedure TfrmAyrintilar.Button1Click(Sender: TObject);
begin
  close;
end;

end.
