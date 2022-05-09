object Frm_Cadastro_Completo: TFrm_Cadastro_Completo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Alunos - Tela completa.'
  ClientHeight = 492
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 492
    Align = alClient
    TabOrder = 0
    object Lbl_Data: TLabel
      Left = 24
      Top = 16
      Width = 26
      Height = 16
      Caption = 'Data'
    end
    object Lbl_Nome: TLabel
      Left = 136
      Top = 16
      Width = 33
      Height = 16
      Caption = 'Nome'
    end
    object Lbl_Endereco: TLabel
      Left = 544
      Top = 16
      Width = 53
      Height = 16
      Caption = 'Endere'#231'o'
    end
    object Lbl_Complemento: TLabel
      Left = 24
      Top = 80
      Width = 79
      Height = 16
      Caption = 'Complemento'
    end
    object Lbl_Bairro: TLabel
      Left = 272
      Top = 80
      Width = 34
      Height = 16
      Caption = 'Bairro'
    end
    object Lbl_Estado: TLabel
      Left = 584
      Top = 80
      Width = 38
      Height = 16
      Caption = 'Estado'
    end
    object Lbl_Cidade: TLabel
      Left = 672
      Top = 80
      Width = 39
      Height = 16
      Caption = 'Cidade'
    end
    object Lbl_Cep: TLabel
      Left = 912
      Top = 80
      Width = 22
      Height = 16
      Caption = 'Cep'
    end
    object Lbl_Telefone: TLabel
      Left = 24
      Top = 144
      Width = 50
      Height = 16
      Caption = 'Telefone'
    end
    object Lbl_Email: TLabel
      Left = 160
      Top = 144
      Width = 35
      Height = 16
      Caption = 'E-Mail'
    end
    object Lbl_Celular: TLabel
      Left = 544
      Top = 144
      Width = 40
      Height = 16
      Caption = 'Celular'
    end
    object Lbl_Curso: TLabel
      Left = 484
      Top = 248
      Width = 33
      Height = 16
      Caption = 'Curso'
    end
    object GroupBox1: TGroupBox
      Left = 24
      Top = 216
      Width = 841
      Height = 161
      Caption = 'Escolaridade'
      Ctl3D = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      object Lbl_Faculdade: TLabel
        Left = 24
        Top = 32
        Width = 58
        Height = 16
        Caption = 'Faculdade'
      end
      object Lbl_Periodo: TLabel
        Left = 24
        Top = 96
        Width = 43
        Height = 16
        Caption = 'Per'#237'odo'
      end
      object CMB_Faculdade: TComboBox
        Left = 24
        Top = 54
        Width = 417
        Height = 22
        Style = csOwnerDrawVariable
        TabOrder = 0
        OnEnter = CMB_FaculdadeEnter
        OnExit = CMB_FaculdadeExit
      end
      object Cmb_Curso: TComboBox
        Left = 460
        Top = 54
        Width = 349
        Height = 22
        Style = csOwnerDrawVariable
        TabOrder = 1
      end
      object Edit_Periodo: TEdit
        Left = 24
        Top = 118
        Width = 55
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = Edit_PeriodoKeyPress
      end
    end
    object MaskEdit_Data: TMaskEdit
      Left = 24
      Top = 38
      Width = 89
      Height = 24
      Hint = 'Este campo ser'#225' preenchido automaticamente pelo sistema.'
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
    end
    object Edit_Nome: TEdit
      Left = 136
      Top = 38
      Width = 385
      Height = 24
      Hint = 'Nome do usu'#225'rio'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object Edit_Endereco: TEdit
      Left = 544
      Top = 38
      Width = 465
      Height = 24
      Hint = 'Endere'#231'o do Aluno'
      CharCase = ecUpperCase
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object Edit_Complemento: TEdit
      Left = 24
      Top = 102
      Width = 225
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit_Bairro: TEdit
      Left = 272
      Top = 102
      Width = 297
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Cmb_Estado: TComboBox
      Left = 584
      Top = 102
      Width = 73
      Height = 22
      Style = csOwnerDrawVariable
      CharCase = ecUpperCase
      TabOrder = 6
      OnEnter = Cmb_EstadoEnter
      OnExit = Cmb_EstadoExit
    end
    object Cmd_Cidade: TComboBox
      Left = 672
      Top = 102
      Width = 225
      Height = 22
      Style = csOwnerDrawVariable
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object MaskEdit_Cep: TMaskEdit
      Left = 912
      Top = 102
      Width = 97
      Height = 24
      EditMask = '99.999-999;0;_'
      MaxLength = 10
      TabOrder = 8
      Text = ''
    end
    object MaskEdit_Telefone: TMaskEdit
      Left = 24
      Top = 166
      Width = 119
      Height = 24
      EditMask = '(99) 9999-9999;0;_'
      MaxLength = 14
      TabOrder = 9
      Text = ''
    end
    object Edit_Email: TEdit
      Left = 160
      Top = 166
      Width = 361
      Height = 24
      TabOrder = 10
    end
    object MaskEdit_Celular: TMaskEdit
      Left = 544
      Top = 166
      Width = 133
      Height = 24
      EditMask = '(99) 9 9999-9999;0;_'
      MaxLength = 16
      TabOrder = 11
      Text = ''
    end
    object Btn_Salvar: TBitBtn
      Left = 656
      Top = 408
      Width = 130
      Height = 45
      Caption = '&Salvar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 12
      OnClick = Btn_SalvarClick
    end
    object Btn_Cancerlar: TBitBtn
      Left = 871
      Top = 408
      Width = 130
      Height = 45
      Caption = '&Cancelar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 13
      OnClick = Btn_CancerlarClick
    end
  end
end
