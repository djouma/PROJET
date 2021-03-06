program G_PRESSING4;

uses
  Forms,
  ULinge in 'ULinge.pas' {FEnregLinge},
  UDmPressing in 'UDmPressing.pas' {DmPressing: TDataModule},
  UConnexion in 'UConnexion.pas' {FConnect},
  UFAccueil in 'UFAccueil.pas' {FAccueil},
  UMenuGen in 'UMenuGen.pas' {FMenuGen},
  UClient in 'UClient.pas' {FClient},
  UQuartier in 'UQuartier.pas' {FQuartier},
  UQrDepot in 'UQrDepot.pas' {QrDepot: TQuickRep},
  UFCmdeJournalier in 'UFCmdeJournalier.pas' {FEtatJourDepot},
  UEtatJournalier in 'UEtatJournalier.pas' {QrEtatJournalier: TQuickRep},
  UEtatJourReg in 'UEtatJourReg.pas' {FEtatJourReg},
  UQrEtatJourReg in 'UQrEtatJourReg.pas' {QrEtatJourReg: TQuickRep},
  UFLivaison in 'UFLivaison.pas' {FLivraison},
  UEtatPeriodiqueDep in 'UEtatPeriodiqueDep.pas' {FEtatPeriodiqueDep},
  UEtatPeriodiqueReg in 'UEtatPeriodiqueReg.pas' {FEtatPeriodiqueReg},
  UChangMotPass in 'UChangMotPass.pas' {FUpdatePass},
  UReglement in 'UReglement.pas' {FReg},
  UReglement2 in 'UReglement2.pas' {QrReglement2: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gestion d''un Pressing';
  Application.CreateForm(TFAccueil, FAccueil);
  Application.CreateForm(TFMenuGen, FMenuGen);
  Application.CreateForm(TFEtatJourReg, FEtatJourReg);
  Application.CreateForm(TFClient, FClient);
  Application.CreateForm(TFQuartier, FQuartier);
  Application.CreateForm(TFEnregLinge, FEnregLinge);
  Application.CreateForm(TDmPressing, DmPressing);
  Application.CreateForm(TFConnect, FConnect);
  Application.CreateForm(TQrDepot, QrDepot);
  Application.CreateForm(TFEtatJourDepot, FEtatJourDepot);
  Application.CreateForm(TQrEtatJournalier, QrEtatJournalier);
  Application.CreateForm(TQrEtatJourReg, QrEtatJourReg);
  Application.CreateForm(TFLivraison, FLivraison);
  Application.CreateForm(TFEtatPeriodiqueDep, FEtatPeriodiqueDep);
  Application.CreateForm(TFEtatPeriodiqueReg, FEtatPeriodiqueReg);
  Application.CreateForm(TFUpdatePass, FUpdatePass);
  Application.CreateForm(TFReg, FReg);
  Application.CreateForm(TQrReglement2, QrReglement2);
  Application.Run;
end.
