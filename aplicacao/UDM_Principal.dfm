object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 654
  Width = 886
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\ueg_ihc_interfac' +
      'es\banco\dados.mdb;Mode=ReadWrite|Share Deny None;Persist Securi' +
      'ty Info=False;'
    IsolationLevel = ilReadCommitted
    LoginPrompt = False
    Mode = Data.Win.ADODB
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 40
  end
end
