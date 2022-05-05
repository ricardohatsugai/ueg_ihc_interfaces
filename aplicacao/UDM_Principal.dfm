object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 654
  Width = 886
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\ueg_ihc_interfac' +
      'es\banco\dados.mdb;Mode=ReadWrite|Share Deny None;Persist Securi' +
      'ty Info=False;'
    LoginPrompt = False
    Mode = Data.Win.ADODB
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 40
  end
  object ADOQ_Clientes: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'CliId'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select * from Clientes '
      'Where Clientes.id =:CliId')
    Left = 72
    Top = 112
    object ADOQ_Clientesid: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_Clientesdata: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object ADOQ_Clientesnome: TWideStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      Size = 45
    end
    object ADOQ_Clientesendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 45
      FieldName = 'endereco'
      Size = 45
    end
    object ADOQ_Clientescomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 35
      FieldName = 'complemento'
      Size = 35
    end
    object ADOQ_Clientesbairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object ADOQ_Clientesid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object ADOQ_Clientesid_estado: TIntegerField
      FieldName = 'id_estado'
    end
    object ADOQ_Clientescep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object ADOQ_Clientestelefone: TWideStringField
      FieldName = 'telefone'
      Size = 255
    end
    object ADOQ_Clientesemail: TWideStringField
      FieldName = 'email'
      Size = 255
    end
    object ADOQ_Clientescelular: TWideStringField
      FieldName = 'celular'
      Size = 255
    end
    object ADOQ_Clientesid_faculdade: TIntegerField
      FieldName = 'id_faculdade'
    end
    object ADOQ_Clientesid_curso: TIntegerField
      FieldName = 'id_curso'
    end
    object ADOQ_Clientesperiodo: TWideStringField
      FieldName = 'periodo'
      Size = 255
    end
  end
  object DSP_Clientes: TDataSetProvider
    DataSet = ADOQ_Clientes
    Left = 72
    Top = 176
  end
  object CDS_Clientes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CliId'
        ParamType = ptInput
        Size = -1
        Value = 0
      end>
    ProviderName = 'DSP_Clientes'
    Left = 72
    Top = 240
    object CDS_Clientesid: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Id'
      FieldName = 'id'
      Required = True
    end
    object CDS_Clientesdata: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object CDS_Clientesnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 45
    end
    object CDS_Clientesendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 45
    end
    object CDS_Clientescomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 35
    end
    object CDS_Clientesbairro: TWideStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 35
      FieldName = 'bairro'
      Size = 35
    end
    object CDS_Clientesid_cidade: TIntegerField
      FieldName = 'id_cidade'
    end
    object CDS_Clientesid_estado: TIntegerField
      FieldName = 'id_estado'
    end
    object CDS_Clientescep: TWideStringField
      DisplayLabel = 'Cep'
      DisplayWidth = 15
      FieldName = 'cep'
      Size = 15
    end
    object CDS_Clientestelefone: TWideStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 15
    end
    object CDS_Clientesemail: TWideStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 45
      FieldName = 'email'
      Size = 45
    end
    object CDS_Clientescelular: TWideStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      Size = 15
    end
    object CDS_Clientesid_faculdade: TIntegerField
      FieldName = 'id_faculdade'
    end
    object CDS_Clientesid_curso: TIntegerField
      FieldName = 'id_curso'
    end
    object CDS_Clientesperiodo: TWideStringField
      DisplayLabel = 'Per'#237'odo'
      DisplayWidth = 15
      FieldName = 'periodo'
      Size = 15
    end
  end
  object DS_Clientes: TDataSource
    Left = 72
    Top = 304
  end
end
