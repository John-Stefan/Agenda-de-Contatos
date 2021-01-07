object DM: TDM
  OldCreateOrder = False
  Height = 243
  Width = 503
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 40
  end
  object tbContatos: TFDTable
    Active = True
    AfterInsert = tbContatosAfterInsert
    BeforePost = tbContatosBeforePost
    AfterPost = tbContatosAfterPost
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'agenda.contatos'
    TableName = 'agenda.contatos'
    Left = 152
    Top = 40
    object tbContatosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbContatosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbContatoscelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
      Required = True
      Size = 16
    end
    object tbContatosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
    object tbContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object tbContatosemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
  end
  object dsContatos: TDataSource
    DataSet = tbContatos
    Left = 248
    Top = 40
  end
  object FDQuery1: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select email from contatos')
    Left = 160
    Top = 136
  end
end
