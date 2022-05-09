object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 654
  Width = 886
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\ueg_ihc_interfac' +
      'es\banco\dados.mdb;Mode=ReadWrite;Persist Security Info=False;'
    KeepConnection = False
    LoginPrompt = False
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
    Options = [poAllowCommandText, poUseQuoteChar]
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
    object CDS_Clientescidade_lookup: TStringField
      DisplayLabel = 'Cidade'
      FieldKind = fkLookup
      FieldName = 'cidade_lookup'
      LookupDataSet = ADOQ_Cidades
      LookupKeyFields = 'id'
      LookupResultField = 'cidade'
      KeyFields = 'id_cidade'
      Size = 35
      Lookup = True
    end
    object CDS_Clientesid_estado: TIntegerField
      FieldName = 'id_estado'
    end
    object CDS_Clientesestado_lookup: TStringField
      DisplayLabel = 'Estado'
      FieldKind = fkLookup
      FieldName = 'estado_lookup'
      LookupDataSet = ADOQ_Estados
      LookupKeyFields = 'id'
      LookupResultField = 'estado'
      KeyFields = 'id_estado'
      Size = 5
      Lookup = True
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
    DataSet = CDS_Clientes
    Left = 72
    Top = 304
  end
  object ADOQ_Cidades: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'est'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 0
      end>
    SQL.Strings = (
      'Select * from Cidades '
      'Where Cidades.id_estado =:est '
      'order by Cidades.cidade')
    Left = 208
    Top = 112
    object ADOQ_Cidadesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_Cidadescidade: TWideStringField
      FieldName = 'cidade'
      Size = 255
    end
    object ADOQ_Cidadesid_estado: TIntegerField
      FieldName = 'id_estado'
    end
    object ADOQ_Cidadesestado_lookup: TStringField
      FieldKind = fkLookup
      FieldName = 'estado_lookup'
      LookupDataSet = ADOQ_Estados
      LookupKeyFields = 'id'
      LookupResultField = 'estado'
      KeyFields = 'id_estado'
      Size = 5
      Lookup = True
    end
  end
  object ADOQ_Estados: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Estados '
      'order by Estados.estado')
    Left = 328
    Top = 112
    object ADOQ_Estadosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_Estadosestado: TWideStringField
      FieldName = 'estado'
      Size = 255
    end
  end
  object ADOQ_ClientesAuxiliar: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select c.id, c.nome from Clientes as c')
    Left = 440
    Top = 112
    object ADOQ_ClientesAuxiliarid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_ClientesAuxiliarnome: TWideStringField
      FieldName = 'nome'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQ_Estados
    Left = 336
    Top = 192
  end
  object ADOQ_Faculdades: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from Faculdades as F '
      'order by F.faculdade')
    Left = 568
    Top = 112
    object ADOQ_Faculdadesid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_Faculdadesfaculdade: TWideStringField
      FieldName = 'faculdade'
      Size = 255
    end
  end
  object ADOQ_Cursos: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_curso'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select * from Cursos as C '
      'where C.id_faculdade =:id_curso')
    Left = 680
    Top = 112
    object ADOQ_Cursosid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_Cursoscurso: TWideStringField
      FieldName = 'curso'
      Size = 255
    end
    object ADOQ_Cursosid_faculdade: TIntegerField
      FieldName = 'id_faculdade'
    end
  end
end
