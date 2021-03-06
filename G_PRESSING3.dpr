program G_PRESSING3;

uses
  Forms,
  ULinge in 'ULinge.pas' {FEnregLinge},
  UDmPressing in 'UDmPressing.pas' {DmPressing: TDataModule},
  UReglement in 'UReglement.pas' {FReg},
  UConnexion in 'UConnexion.pas' {FConnect},
  UFAccueil in 'UFAccueil.pas' {FAccueil},
  UMenuGen in 'UMenuGen.pas' {FMenuGen},
  UClient in 'UClient.pas' {FClient},
  UQuartier in 'UQuartier.pas' {FQuartier};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion d''un Pressing';
  Application.CreateForm(TFAccueil, FAccueil);
  Application.CreateForm(TFMenuGen, FMenuGen);
  Application.CreateForm(TFClient, FClient);
  Application.CreateForm(TFEnregLinge, FEnregLinge);
  Application.CreateForm(TFReg, FReg);
  Application.CreateForm(TDmPressing, DmPressing);
  Application.CreateForm(TFConnect, FConnect);
  Application.CreateForm(TFQuartier, FQuartier);
  Application.Run;
end.
