unit UEtCmdeJournalier;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TEtCommandeJ = class(TQuickRep)
    EDepotJournalier: TQuickRep;
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData4: TQRSysData;
    QrDate: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRImage2: TQRImage;
  private

  public

  end;

var
  EtCommandeJ: TEtCommandeJ;

implementation

uses UDmAkif, UDmPressing;

{$R *.DFM}

end.
