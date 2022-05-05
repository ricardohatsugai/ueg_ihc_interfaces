object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 654
  Width = 886
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\ueg_ihc_interfac' +
      'es\banco\dados.mdb;Mode=ReadWrite|Share Deny None;Persist Securi' +
      'ty Info=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 40
  end
  object ADOTEstado: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Estados'
    Left = 72
    Top = 112
    object ADOTEstadoid: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOTEstadoestado: TWideStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 15
      FieldName = 'estado'
      Size = 15
    end
  end
end
