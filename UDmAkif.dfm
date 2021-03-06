object DmAkif: TDmAkif
  OldCreateOrder = False
  Left = 539
  Top = 115
  Height = 458
  Width = 495
  object DBakif: TDatabase
    AliasName = 'ODBC_DBAKIF'
    Connected = True
    DatabaseName = 'dbakif'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa'
      'PASSWORD=12345')
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object TClient: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.CLIENT'
    Left = 200
    Top = 8
    object TClientNOMCLIENT: TStringField
      FieldName = 'NOMCLIENT'
      Required = True
      FixedChar = True
    end
    object TClientPRENOMCLIENT: TStringField
      FieldName = 'PRENOMCLIENT'
      Required = True
      FixedChar = True
    end
    object TClientTELCLIENT: TStringField
      FieldName = 'TELCLIENT'
      Required = True
      FixedChar = True
      Size = 15
    end
    object TClientadressclient: TStringField
      FieldName = 'adressclient'
      FixedChar = True
    end
    object TClientIDCLIENT: TIntegerField
      FieldName = 'IDCLIENT'
    end
  end
  object DSClient: TDataSource
    DataSet = TClient
    Left = 16
    Top = 56
  end
  object DSCommande: TDataSource
    DataSet = TCommande
    Left = 136
    Top = 8
  end
  object TType: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.TYPE_COMMANDE'
    Left = 72
    Top = 56
  end
  object DSType: TDataSource
    DataSet = TType
    Left = 136
    Top = 56
  end
  object TServeur: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.SERVEUR'
    Left = 200
    Top = 56
    object TServeurIDSERVEUR: TStringField
      FieldName = 'IDSERVEUR'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TServeurNOMSERVEUR: TStringField
      FieldName = 'NOMSERVEUR'
      Required = True
      FixedChar = True
    end
    object TServeurPRENOMSERV: TStringField
      FieldName = 'PRENOMSERV'
      Required = True
      FixedChar = True
    end
    object TServeurTELSERV: TStringField
      FieldName = 'TELSERV'
      Required = True
      FixedChar = True
      Size = 15
    end
    object TServeurADRESSESERV: TStringField
      FieldName = 'ADRESSESERV'
      Required = True
      FixedChar = True
    end
    object TServeurSEXE: TStringField
      FieldName = 'SEXE'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object TTable: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.TABLE'
    Left = 16
    Top = 112
    object TTableIDTABLE: TStringField
      FieldName = 'IDTABLE'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TTableLIBELLETABLE: TStringField
      FieldName = 'LIBELLETABLE'
      Required = True
      FixedChar = True
    end
  end
  object DSTable: TDataSource
    DataSet = TTable
    Left = 72
    Top = 112
  end
  object DSServeur: TDataSource
    DataSet = TServeur
    Left = 136
    Top = 112
  end
  object QRechClient: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      'Select *'
      'From Client'
      'where Nomclient like :p1 or Prenomclient like :p1;')
    Left = 200
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QRechClientNOMCLIENT: TStringField
      DisplayWidth = 21
      FieldName = 'NOMCLIENT'
      Origin = 'DBAKIF.Client.NOMCLIENT'
      FixedChar = True
    end
    object QRechClientPRENOMCLIENT: TStringField
      DisplayWidth = 23
      FieldName = 'PRENOMCLIENT'
      Origin = 'DBAKIF.Client.PRENOMCLIENT'
      FixedChar = True
    end
    object QRechClientTELCLIENT: TStringField
      DisplayWidth = 17
      FieldName = 'TELCLIENT'
      Origin = 'DBAKIF.Client.TELCLIENT'
      FixedChar = True
      Size = 15
    end
    object QRechClientadressclient: TStringField
      DisplayWidth = 23
      FieldName = 'adressclient'
      Origin = 'DBAKIF.Client.adressclient'
      FixedChar = True
    end
    object QRechClientidclient: TIntegerField
      DisplayWidth = 12
      FieldName = 'idclient'
      Origin = 'DBAKIF.Client.idclient'
    end
  end
  object Tplat: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.PLAT'
    Left = 16
    Top = 168
    object TplatIDPLAT: TStringField
      FieldName = 'IDPLAT'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TplatLIBELLEPLAT: TStringField
      FieldName = 'LIBELLEPLAT'
      Required = True
      FixedChar = True
    end
    object TplatPRIXPLAT: TFloatField
      FieldName = 'PRIXPLAT'
      Required = True
    end
    object Tplatidtypeplat: TIntegerField
      FieldName = 'idtypeplat'
      Required = True
    end
  end
  object DSRechClient: TDataSource
    DataSet = QRechClient
    Left = 136
    Top = 168
  end
  object TUtil: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.UTILISATEUR'
    Left = 80
    Top = 168
    object TUtilNumutil: TIntegerField
      FieldName = 'Numutil'
      Required = True
    end
    object TUtilUtilLogin: TStringField
      FieldName = 'UtilLogin'
      Required = True
      FixedChar = True
      Size = 15
    end
    object TUtilUtilPasword: TStringField
      FieldName = 'UtilPasword'
      Required = True
      FixedChar = True
      Size = 15
    end
    object TUtilUtilGroup: TStringField
      FieldName = 'UtilGroup'
      Required = True
      FixedChar = True
      Size = 15
    end
  end
  object QUtil: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      'Select* '
      'From Utilisateur'
      'Where UtilLogin=: P1 and UtilPassword=: P2')
    Left = 200
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'P1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'P2'
        ParamType = ptUnknown
      end>
  end
  object QRechPlat: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      
        'SELECT P.IDPLAT,LIBELLEPLAT,P.PRIXPLAT, T.idtypeplat,T.LibelleTy' +
        'peplat'
      'FROM PLAT P, TYPE_PLAT T'
      'WHERE P.idtypeplat=T.idtypeplat'
      ' AND LIBELLEPLAT like :p1;')
    Left = 16
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QRechPlatIDPLAT: TStringField
      FieldName = 'IDPLAT'
      Origin = 'DBAKIF.PLAT.IDPLAT'
      FixedChar = True
      Size = 10
    end
    object QRechPlatLIBELLEPLAT: TStringField
      FieldName = 'LIBELLEPLAT'
      Origin = 'DBAKIF.PLAT.LIBELLEPLAT'
      FixedChar = True
    end
    object QRechPlatPRIXPLAT: TFloatField
      FieldName = 'PRIXPLAT'
      Origin = 'DBAKIF.PLAT.PRIXPLAT'
    end
    object QRechPlatidtypeplat: TIntegerField
      FieldName = 'idtypeplat'
      Origin = 'DBAKIF.TYPE_PLAT.idtypeplat'
    end
    object QRechPlatLibelleTypeplat: TStringField
      FieldName = 'LibelleTypeplat'
      Origin = 'DBAKIF.TYPE_PLAT.LibelleTypeplat'
      FixedChar = True
    end
  end
  object DSRechPlat: TDataSource
    DataSet = QRechPlat
    Left = 80
    Top = 216
  end
  object Ttypeplat: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.TYPE_PLAT'
    Left = 144
    Top = 216
    object Ttypeplatidtypeplat: TIntegerField
      FieldName = 'idtypeplat'
      Required = True
    end
    object TtypeplatLibelleTypeplat: TStringField
      FieldName = 'LibelleTypeplat'
      Required = True
      FixedChar = True
    end
  end
  object DSTypeplat: TDataSource
    DataSet = Ttypeplat
    Left = 200
    Top = 216
  end
  object TConserner: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.CONSERNER'
    Left = 16
    Top = 264
    object TConsernerIDPLAT: TStringField
      FieldName = 'IDPLAT'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TConsernerQUANTITE: TStringField
      FieldName = 'QUANTITE'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TConsernerMONTANT: TFloatField
      FieldName = 'MONTANT'
    end
    object TConsernerIDCOM: TIntegerField
      FieldName = 'IDCOM'
      Required = True
    end
  end
  object TCommande: TTable
    Active = True
    DatabaseName = 'dbakif'
    TableName = 'dbo.COMMANDE'
    Left = 72
    Top = 16
    object TCommandeIDTYPECOM: TStringField
      DisplayWidth = 9
      FieldName = 'IDTYPECOM'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TCommandeIDSERVEUR: TStringField
      DisplayWidth = 8
      FieldName = 'IDSERVEUR'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TCommandeIDTABLE: TStringField
      DisplayWidth = 7
      FieldName = 'IDTABLE'
      FixedChar = True
      Size = 10
    end
    object TCommandeDATECOM: TDateTimeField
      DisplayWidth = 14
      FieldName = 'DATECOM'
      Required = True
    end
    object TCommandeLIVRER: TStringField
      DisplayWidth = 8
      FieldName = 'LIVRER'
      FixedChar = True
      Size = 3
    end
    object TCommandeNumutil: TIntegerField
      DisplayWidth = 9
      FieldName = 'Numutil'
      Required = True
    end
    object TCommandeIDCLIENT: TIntegerField
      DisplayWidth = 13
      FieldName = 'IDCLIENT'
      Required = True
    end
    object TCommandeIDCOM: TIntegerField
      DisplayWidth = 8
      FieldName = 'IDCOM'
    end
    object TCommandeMontantTotal: TFloatField
      FieldName = 'MontantTotal'
    end
  end
  object QRechCmde: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      'Select *'
      'From COMMANDE'
      'where LIVRER='#39'Non'#39
      ' and idcom like :p1;')
    Left = 80
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'p1'
        ParamType = ptUnknown
      end>
    object QRechCmdeIDTYPECOM: TStringField
      FieldName = 'IDTYPECOM'
      Origin = 'DBAKIF.COMMANDE.IDTYPECOM'
      FixedChar = True
      Size = 10
    end
    object QRechCmdeIDSERVEUR: TStringField
      FieldName = 'IDSERVEUR'
      Origin = 'DBAKIF.COMMANDE.IDSERVEUR'
      FixedChar = True
      Size = 10
    end
    object QRechCmdeIDTABLE: TStringField
      FieldName = 'IDTABLE'
      Origin = 'DBAKIF.COMMANDE.IDTABLE'
      FixedChar = True
      Size = 10
    end
    object QRechCmdeDATECOM: TDateTimeField
      FieldName = 'DATECOM'
      Origin = 'DBAKIF.COMMANDE.DATECOM'
    end
    object QRechCmdeNumutil: TIntegerField
      FieldName = 'Numutil'
      Origin = 'DBAKIF.COMMANDE.Numutil'
    end
    object QRechCmdeIDCLIENT: TIntegerField
      FieldName = 'IDCLIENT'
      Origin = 'DBAKIF.COMMANDE.IDCLIENT'
    end
    object QRechCmdeIDCOM: TIntegerField
      FieldName = 'IDCOM'
      Origin = 'DBAKIF.COMMANDE.IDCOM'
    end
    object QRechCmdeLIVRER: TStringField
      FieldName = 'LIVRER'
      Origin = 'DBAKIF.COMMANDE.LIVRER'
      FixedChar = True
      Size = 3
    end
    object QRechCmdeLIVRE: TStringField
      FieldKind = fkCalculated
      FieldName = 'LIVRE'
      Size = 3
      Calculated = True
    end
  end
  object DSRechCmde: TDataSource
    DataSet = QRechCmde
    Left = 144
    Top = 272
  end
  object Ttypecom: TTable
    DatabaseName = 'dbakif'
    TableName = 'dbo.TYPE_COMMANDE'
    Left = 216
    Top = 272
  end
  object QCmdeFacture: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      'select C.Idcom,DATECOM,C.IDCLIENT,C.IDTYPECOM,montanttotal,'
      'CL.NOMCLIENT, CL.PRENOMCLIENT, CL.TELCLIENT,T.LIBELLETYPE,'
      'CO.IDPLAT,CO.QUANTITE,CO.MONTANT, P.LIBELLEPLAT,P.PRIXPLAT'
      '  from COMMANDE C, CLIENT CL,TYPE_COMMANDE T,CONSERNER CO,PLAT P'
      
        'where C.IDCOM=CO.IDCOM and C.IDCLIENT=CL.idclient and C.IDTYPECO' +
        'M=T.IDTYPECOM '
      'and P.IDPLAT=CO.IDPLAT'
      'and C.Idcom= :c1'
      'order by 1')
    Left = 320
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'c1'
        ParamType = ptUnknown
      end>
  end
  object QCmdePer: TQuery
    Active = True
    DatabaseName = 'dbakif'
    SQL.Strings = (
      
        'select C.Idcom,DATECOM,T.LIBELLETYPE,CL.NOMCLIENT, CL.PRENOMCLIE' +
        'NT, CL.TELCLIENT,'
      'montanttotal'
      'from COMMANDE C, CLIENT CL,TYPE_COMMANDE T'
      'where  C.IDCLIENT=CL.idclient and C.IDTYPECOM=T.IDTYPECOM '
      'and DATECOM between :d1 and :d2'
      'order by 1')
    Left = 288
    Top = 120
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object QCmdePerIdcom: TIntegerField
      FieldName = 'Idcom'
    end
    object QCmdePerDATECOM: TDateTimeField
      FieldName = 'DATECOM'
    end
    object QCmdePerLIBELLETYPE: TStringField
      FieldName = 'LIBELLETYPE'
      FixedChar = True
    end
    object QCmdePerNOMCLIENT: TStringField
      FieldName = 'NOMCLIENT'
      FixedChar = True
    end
    object QCmdePerPRENOMCLIENT: TStringField
      FieldName = 'PRENOMCLIENT'
      FixedChar = True
    end
    object QCmdePerTELCLIENT: TStringField
      FieldName = 'TELCLIENT'
      FixedChar = True
      Size = 15
    end
    object QCmdePermontanttotal: TFloatField
      FieldName = 'montanttotal'
      DisplayFormat = '### ### ###'
    end
  end
  object DsQCmdePer: TDataSource
    DataSet = QCmdePer
    Left = 336
    Top = 136
  end
  object QCmdePerTot: TQuery
    DatabaseName = 'dbakif'
    SQL.Strings = (
      'select SUM(montanttotal) as TOTAL'
      'from COMMANDE C, CLIENT CL,TYPE_COMMANDE T'
      'where  C.IDCLIENT=CL.idclient and C.IDTYPECOM=T.IDTYPECOM '
      'and DATECOM between :d1 and :d2'
      'order by 1')
    Left = 288
    Top = 240
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'd1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'd2'
        ParamType = ptUnknown
      end>
    object QCmdePerTotTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '### ### ###'
    end
  end
  object DsQCmdePerTot: TDataSource
    DataSet = QCmdePerTot
    Left = 376
    Top = 232
  end
end
