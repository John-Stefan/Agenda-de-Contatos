object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 614
  ClientWidth = 951
  Color = 1710618
  TransparentColor = True
  TransparentColorValue = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 230
    Height = 28
    Caption = 'Agenda de Contatos'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 24
    Top = 119
    Width = 440
    Height = 466
    Color = 1513239
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object DBText1: TDBText
      Left = 19
      Top = 432
      Width = 271
      Height = 17
      DataField = 'data'
      DataSource = DM.dsContatos
    end
    object Label2: TLabel
      Left = 19
      Top = 19
      Width = 84
      Height = 13
      Caption = 'Nome do Contato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 19
      Top = 134
      Width = 33
      Height = 13
      Caption = 'Celular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 243
      Width = 63
      Height = 13
      Caption = 'Observa'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 19
      Top = 413
      Width = 120
      Height = 13
      Caption = 'Data e Hora do Cadastro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 38
      Top = 204
      Width = 50
      Height = 13
      Caption = 'Bloqueado'
    end
    object Label8: TLabel
      Left = 19
      Top = 76
      Width = 28
      Height = 13
      Caption = 'E-Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 19
      Top = 203
      Width = 15
      Height = 17
      Color = clBackground
      DataField = 'bloqueado'
      DataSource = DM.dsContatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnHighlight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object txtNome: TDBEdit
      Left = 19
      Top = 38
      Width = 397
      Height = 21
      BorderStyle = bsNone
      Color = 4210752
      DataField = 'nome'
      DataSource = DM.dsContatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object txtCelular: TDBEdit
      Left = 19
      Top = 153
      Width = 226
      Height = 21
      BorderStyle = bsNone
      Color = 4210752
      DataField = 'celular'
      DataSource = DM.dsContatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 19
      Top = 262
      Width = 397
      Height = 134
      BorderStyle = bsNone
      Color = 4210752
      DataField = 'observacoes'
      DataSource = DM.dsContatos
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 19
      Top = 95
      Width = 397
      Height = 21
      BorderStyle = bsNone
      Color = 4210752
      DataField = 'email'
      DataSource = DM.dsContatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 64
    Width = 440
    Height = 33
    DataSource = DM.dsContatos
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 488
    Top = 119
    Width = 441
    Height = 466
    Color = 1513239
    ParentBackground = False
    TabOrder = 2
    object Label7: TLabel
      Left = 16
      Top = 19
      Width = 32
      Height = 13
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txtBusca: TEdit
      Left = 16
      Top = 38
      Width = 409
      Height = 21
      BorderStyle = bsNone
      Color = 4210752
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = txtBuscaChange
    end
    object gdContatos: TDBGrid
      Left = 16
      Top = 75
      Width = 409
      Height = 374
      DataSource = DM.dsContatos
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBackground
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = gdContatosDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Contatos Registrados'
          Width = 393
          Visible = True
        end>
    end
  end
end
