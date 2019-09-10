program moretool;

uses
  Forms,
  main in 'main.pas' {frmMain},
  ayrintilar in 'ayrintilar.pas' {frmAyrintilar},
  kunye in 'kunye.pas' {frmKunye};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAyrintilar, frmAyrintilar);
  Application.CreateForm(TfrmKunye, frmKunye);
  Application.Run;
end.
