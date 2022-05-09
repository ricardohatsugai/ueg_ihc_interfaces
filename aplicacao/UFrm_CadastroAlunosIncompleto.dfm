object Frm_CadastroIncompleto: TFrm_CadastroIncompleto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Tela de cadastro de alunos ineficiente.'
  ClientHeight = 662
  ClientWidth = 1053
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 176
    Width = 65
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 16
    Top = 216
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 16
    Top = 256
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label8: TLabel
    Left = 16
    Top = 304
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label9: TLabel
    Left = 16
    Top = 344
    Width = 19
    Height = 13
    Caption = 'Cep'
    FocusControl = DBEdit8
  end
  object Label10: TLabel
    Left = 16
    Top = 384
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit9
  end
  object Label11: TLabel
    Left = 16
    Top = 424
    Width = 28
    Height = 13
    Caption = 'E-Mail'
    FocusControl = DBEdit10
  end
  object Label12: TLabel
    Left = 16
    Top = 464
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit11
  end
  object Label13: TLabel
    Left = 16
    Top = 504
    Width = 61
    Height = 13
    Caption = 'id_faculdade'
    FocusControl = DBEdit12
  end
  object Label14: TLabel
    Left = 16
    Top = 544
    Width = 40
    Height = 13
    Caption = 'id_curso'
    FocusControl = DBEdit13
  end
  object Label15: TLabel
    Left = 16
    Top = 584
    Width = 36
    Height = 13
    Caption = 'Per'#237'odo'
    FocusControl = DBEdit14
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 134
    Height = 21
    DataField = 'id'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 238
    Height = 21
    DataField = 'data'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 589
    Height = 21
    DataField = 'nome'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 152
    Width = 589
    Height = 21
    DataField = 'endereco'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 192
    Width = 459
    Height = 21
    DataField = 'complemento'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 232
    Width = 459
    Height = 21
    DataField = 'bairro'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 5
  end
  object DBComboBox1: TDBComboBox
    Left = 16
    Top = 275
    Width = 353
    Height = 21
    DataField = 'cidade_lookup'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 16
    Top = 360
    Width = 199
    Height = 21
    DataField = 'cep'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 16
    Top = 400
    Width = 199
    Height = 21
    DataField = 'telefone'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 16
    Top = 440
    Width = 589
    Height = 21
    DataField = 'email'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 16
    Top = 480
    Width = 199
    Height = 21
    DataField = 'celular'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 16
    Top = 520
    Width = 134
    Height = 21
    DataField = 'id_faculdade'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 16
    Top = 560
    Width = 134
    Height = 21
    DataField = 'id_curso'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 16
    Top = 600
    Width = 199
    Height = 21
    DataField = 'periodo'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 13
  end
  object DBComboBox2: TDBComboBox
    Left = 16
    Top = 323
    Width = 145
    Height = 21
    DataField = 'estado_lookup'
    DataSource = DM_Principal.DS_Clientes
    TabOrder = 14
  end
  object Btn_Salvar: TBitBtn
    Left = 424
    Top = 588
    Width = 130
    Height = 45
    Caption = 'Salvar'
    TabOrder = 15
  end
  object Btn_Cancelar: TBitBtn
    Left = 648
    Top = 588
    Width = 130
    Height = 45
    Caption = 'Cancelar'
    TabOrder = 16
    OnClick = Btn_CancelarClick
  end
end
