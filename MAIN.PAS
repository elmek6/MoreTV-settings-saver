unit main;
{
   www.bilgi.ofisi.com
   elmek6@yuhoo.com

}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Registry, CheckLst, IniFiles;

type
  TfrmMain = class(TForm)
    Label1: TLabel;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Label2: TLabel;
    btnTamam: TButton;
    Bevel1: TBevel;
    Button2: TButton;
    Label3: TLabel;
    Bevel2: TBevel;
    Button3: TButton;
    Bevel3: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    statusMain: TStatusBar;
    Button1: TButton;
    Button4: TButton;
    procedure btnTamamClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure Yukle;
    procedure Sakla;
  public
    { Public declarations }
  end;

type
  TSira=record
    anahtar :string;
    veritip :integer;
  end;

  TDizi=record
    sayi    :integer; //orjinalde double olmasý gerekli halbusukine
    yazi    :string;
  end;
const
  YOL ='\SOFTWARE\Feuerstein\MoreTV';
  kanal   =10;
  goruntu =20;
  ayar    =30;

  sayi  =1;
  yazi  =2;

  ALAN  =132;

  SIRA  :array[1..ALAN] of TSira = (
(anahtar:'Debug'; veritip:sayi),
(anahtar:'GPIO_Stumm'; veritip:sayi),
(anahtar:'GPIO_SVHS'; veritip:sayi),
(anahtar:'GPIO_Tuner'; veritip:sayi),
(anahtar:'GPIO_Video1'; veritip:sayi),
(anahtar:'GPIO_Video2'; veritip:sayi),
(anahtar:'Helligkeit'; veritip:sayi),
(anahtar:'MUX_SVHS'; veritip:sayi),
(anahtar:'MUX_Tuner'; veritip:sayi),
(anahtar:'MUX_Video1'; veritip:sayi),
(anahtar:'MUX_Video2'; veritip:sayi),
(anahtar:'OutputEnable'; veritip:sayi),
(anahtar:'PhasenAutomatik'; veritip:sayi),
(anahtar:'PLL'; veritip:sayi),
(anahtar:'Programmplatz'; veritip:sayi),
(anahtar:'Proportional'; veritip:sayi),
(anahtar:'Secam'; veritip:sayi),
(anahtar:'Spartial'; veritip:sayi),
(anahtar:'Tuner'; veritip:sayi),
(anahtar:'TVKarte'; veritip:sayi),
(anahtar:'AusgabeX1'; veritip:sayi),
(anahtar:'AusgabeX2'; veritip:sayi),
(anahtar:'AusgabeY1'; veritip:sayi),
(anahtar:'AusgabeY2'; veritip:sayi),
(anahtar:'DisplayMode'; veritip:sayi),
(anahtar:'Farbe'; veritip:sayi),
(anahtar:'FensterMode'; veritip:sayi),
(anahtar:'Font'; veritip:sayi),
(anahtar:'InfoX1'; veritip:sayi),
(anahtar:'InfoY1'; veritip:sayi),
(anahtar:'KanaeleX1'; veritip:sayi),
(anahtar:'KanaeleY1'; veritip:sayi),
(anahtar:'KonfigX1'; veritip:sayi),
(anahtar:'KonfigY1'; veritip:sayi),
(anahtar:'Kontrast'; veritip:sayi),
(anahtar:'Loudness'; veritip:sayi),
(anahtar:'Menu'; veritip:sayi),
(anahtar:'RandAutomatik'; veritip:sayi),
(anahtar:'ReglerX1'; veritip:sayi),
(anahtar:'ReglerY1'; veritip:sayi),
(anahtar:'Status'; veritip:sayi),
(anahtar:'SysterKonfigX1'; veritip:sayi),
(anahtar:'SysterKonfigY1'; veritip:sayi),
(anahtar:'Toolbar'; veritip:sayi),
(anahtar:'Turbo'; veritip:sayi),
(anahtar:'Vordergrund'; veritip:sayi),
(anahtar:'VPSInfoX1'; veritip:sayi),
(anahtar:'VPSInfoY1'; veritip:sayi),
(anahtar:'VTFensterX1'; veritip:sayi),
(anahtar:'VTFensterX2'; veritip:sayi),
(anahtar:'VTFensterY1'; veritip:sayi),
(anahtar:'VTFensterY2'; veritip:sayi),
(anahtar:'01Frequenz'; veritip:sayi),
(anahtar:'01Sendername'; veritip:yazi),
(anahtar:'02Frequenz'; veritip:sayi),
(anahtar:'02Sendername'; veritip:yazi),
(anahtar:'03Frequenz'; veritip:sayi),
(anahtar:'03Sendername'; veritip:yazi),
(anahtar:'04Frequenz'; veritip:sayi),
(anahtar:'04Sendername'; veritip:yazi),
(anahtar:'05Frequenz'; veritip:sayi),
(anahtar:'05Sendername'; veritip:yazi),
(anahtar:'06Frequenz'; veritip:sayi),
(anahtar:'06Sendername'; veritip:yazi),
(anahtar:'07Frequenz'; veritip:sayi),
(anahtar:'07Sendername'; veritip:yazi),
(anahtar:'08Frequenz'; veritip:sayi),
(anahtar:'08Sendername'; veritip:yazi),
(anahtar:'09Frequenz'; veritip:sayi),
(anahtar:'09Sendername'; veritip:yazi),
(anahtar:'10Frequenz'; veritip:sayi),
(anahtar:'10Sendername'; veritip:yazi),
(anahtar:'11Frequenz'; veritip:sayi),
(anahtar:'11Sendername'; veritip:yazi),
(anahtar:'12Frequenz'; veritip:sayi),
(anahtar:'12Sendername'; veritip:yazi),
(anahtar:'13Frequenz'; veritip:sayi),
(anahtar:'13Sendername'; veritip:yazi),
(anahtar:'14Frequenz'; veritip:sayi),
(anahtar:'14Sendername'; veritip:yazi),
(anahtar:'15Frequenz'; veritip:sayi),
(anahtar:'15Sendername'; veritip:yazi),
(anahtar:'16Frequenz'; veritip:sayi),
(anahtar:'16Sendername'; veritip:yazi),
(anahtar:'17Frequenz'; veritip:sayi),
(anahtar:'17Sendername'; veritip:yazi),
(anahtar:'18Frequenz'; veritip:sayi),
(anahtar:'18Sendername'; veritip:yazi),
(anahtar:'19Frequenz'; veritip:sayi),
(anahtar:'19Sendername'; veritip:yazi),
(anahtar:'20Frequenz'; veritip:sayi),
(anahtar:'20Sendername'; veritip:yazi),
(anahtar:'21Frequenz'; veritip:sayi),
(anahtar:'21Sendername'; veritip:yazi),
(anahtar:'22Frequenz'; veritip:sayi),
(anahtar:'22Sendername'; veritip:yazi),
(anahtar:'23Frequenz'; veritip:sayi),
(anahtar:'23Sendername'; veritip:yazi),
(anahtar:'24Frequenz'; veritip:sayi),
(anahtar:'24Sendername'; veritip:yazi),
(anahtar:'25Frequenz'; veritip:sayi),
(anahtar:'25Sendername'; veritip:yazi),
(anahtar:'26Frequenz'; veritip:sayi),
(anahtar:'26Sendername'; veritip:yazi),
(anahtar:'27Frequenz'; veritip:sayi),
(anahtar:'27Sendername'; veritip:yazi),
(anahtar:'28Frequenz'; veritip:sayi),
(anahtar:'28Sendername'; veritip:yazi),
(anahtar:'29Frequenz'; veritip:sayi),
(anahtar:'29Sendername'; veritip:yazi),
(anahtar:'30Frequenz'; veritip:sayi),
(anahtar:'30Sendername'; veritip:yazi),
(anahtar:'31Frequenz'; veritip:sayi),
(anahtar:'31Sendername'; veritip:yazi),
(anahtar:'32Frequenz'; veritip:sayi),
(anahtar:'32Sendername'; veritip:yazi),
(anahtar:'33Frequenz'; veritip:sayi),
(anahtar:'33Sendername'; veritip:yazi),
(anahtar:'34Frequenz'; veritip:sayi),
(anahtar:'34Sendername'; veritip:yazi),
(anahtar:'35Frequenz'; veritip:sayi),
(anahtar:'35Sendername'; veritip:yazi),
(anahtar:'36Frequenz'; veritip:sayi),
(anahtar:'36Sendername'; veritip:yazi),
(anahtar:'37Frequenz'; veritip:sayi),
(anahtar:'37Sendername'; veritip:yazi),
(anahtar:'38Frequenz'; veritip:sayi),
(anahtar:'38Sendername'; veritip:yazi),
(anahtar:'39Frequenz'; veritip:sayi),
(anahtar:'39Sendername';veritip:yazi),
(anahtar:'40Frequenz'; veritip:sayi),
(anahtar:'40Sendername'; veritip:yazi)
);

var
  frmMain :TfrmMain;
  reg     :TRegistry;
  dizi    :array[1..ALAN] of TDizi;

implementation

uses ayrintilar, kunye;

{$R *.dfm}

procedure TfrmMain.Yukle;
  var
    i:integer;
begin
  for i:=1 to ALAN do begin
    case SIRA[i].veritip of
      SAYI:
        begin
          dizi[i].sayi:=reg.ReadInteger(SIRA[i].anahtar);
        end;
      YAZI:
        begin
          dizi[i].yazi:=reg.ReadString(SIRA[i].anahtar);
        end;
    end;
  end;
end;

procedure TfrmMain.Sakla;
  var
    i     :integer;
begin
  for i:=1 to ALAN do begin
    case SIRA[i].veritip of
      SAYI:
        begin
          reg.WriteInteger(SIRA[i].anahtar, dizi[i].sayi);
         end;
      YAZI:
        begin
          reg.WriteString(SIRA[i].anahtar, dizi[i].yazi);
        end;
    end;
  end;
end;


procedure TfrmMain.btnTamamClick(Sender: TObject);
begin
  reg.Free;
  close;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  reg:=TRegistry.Create;

  reg.RootKey:=HKEY_CURRENT_USER;
  if not reg.OpenKey(YOL, TRUE) then begin
    statusMain.Panels[0].Text:='Sistemde More TV''ye ait ayarlar olduðu algýlanamadý';
  end else begin
    Yukle;
    statusMain.Panels[0].Text:='More TV 3.50 ayarlarý doðru algýlandý';
  end;

end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  frmAyrintilar.showmodal;
end;

procedure TfrmMain.Button2Click(Sender: TObject);
  var
    dosya :TIniFile;
    i     :integer;
    s     :string;
begin
//KAYIT DOSYADAN ALINIP REGISTER'A SAKLANACAK
  opendialog.Filter:='INI dosyasý (*.ini)|*.ini';
  if not opendialog.Execute then begin
    exit;
  end;
  s:=opendialog.FileName;

  dosya := TIniFile.Create(s);
  try
    if dosya.ReadBool('PROGRAM','More TV 3.50',FALSE)=TRUE then begin
      for i:=1 to ALAN do begin
        case SIRA[i].veritip of
          SAYI:
            dizi[i].sayi := dosya.ReadInteger({baþlýk}inttostr(SIRA[i].veritip),SIRA[i].anahtar, dizi[i].sayi);
          YAZI:
            dizi[i].yazi := dosya.ReadString({baþlýk}inttostr(SIRA[i].veritip), SIRA[i].anahtar, dizi[i].yazi);
        end;
      end;
      Sakla;
      statusMain.Panels[0].Text :='Bilgiler baþarýyla kaydedildi';
    end else begin
      statusMain.Panels[0].Text :='Seçtiðiniz dosya gerekli imzayý taþýmýyor';
    end;
  finally
    dosya.Free;
  end;

end;

procedure TfrmMain.Button3Click(Sender: TObject);
  var
    dosya :TIniFile;
    i     :integer;
    s     :string;
begin
//KAYIT REGISTER'DAN ALINIP DOSYAYA SAKLANACAK
  savedialog.Filter:='INI dosyasý (*.ini)|*.ini';
  if not savedialog.Execute then begin
    exit;
  end;
  s:=savedialog.FileName;

  dosya := TIniFile.Create(s);
  try
    dosya.WriteBool('PROGRAM','More TV 3.50',TRUE);
    Yukle;
    for i:=1 to ALAN do begin
      case SIRA[i].veritip of
        SAYI:
          dosya.WriteInteger({baþlýk}inttostr(SIRA[i].veritip),SIRA[i].anahtar, dizi[i].sayi);
        YAZI:
          dosya.WriteString({baþlýk}inttostr(SIRA[i].veritip), SIRA[i].anahtar, dizi[i].yazi);
      end;
    end;
    statusMain.Panels[0].Text :='Bilgiler baþarýyla yüklendi';
  finally
    dosya.Free;
  end;

end;

procedure TfrmMain.Button4Click(Sender: TObject);
begin
  frmKunye.showmodal;
end;

end.
