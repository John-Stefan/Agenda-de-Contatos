unit uFormularioDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Forms, Windows, System.RegularExpressions;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbContatos: TFDTable;
    dsContatos: TDataSource;
    tbContatosid: TFDAutoIncField;
    tbContatosnome: TStringField;
    tbContatoscelular: TStringField;
    tbContatosobservacoes: TMemoField;
    tbContatosbloqueado: TBooleanField;
    tbContatosdata: TDateTimeField;
    procedure tbContatosAfterInsert(DataSet: TDataSet);
    procedure tbContatosBeforePost(DataSet: TDataSet);
    procedure tbContatosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFormularioAgendaContatos;

{$R *.dfm}

procedure TDM.tbContatosAfterInsert(DataSet: TDataSet);
begin
  tbContatosdata.Value := Now();
end;

procedure TDM.tbContatosAfterPost(DataSet: TDataSet);
begin
  Application.MessageBox('Cadastro realizado com sucesso!', 'Agenda de Contatos', MB_OK + MB_SYSTEMMODAL + MB_ICONINFORMATION);
end;

procedure TDM.tbContatosBeforePost(DataSet: TDataSet);
var
  caracteresValidacao: String;
begin
  If tbContatos.FieldByName('nome').AsString.IsEmpty Then
  Begin
    Application.MessageBox('Digite o nome do contato!', 'Agenda de Contatos', MB_OK + MB_SYSTEMMODAL
    + MB_ICONWARNING);
    Abort;
  End;

  If tbContatos.FieldByName('nome').AsString.Length < 3 Then
  Begin
    Application.MessageBox('O nome do contato deve possuir no minimo 3 caracteres!', 'Agenda de Contatos',
    MB_Ok + MB_SYSTEMMODAL + MB_ICONWARNING);
    Abort;
  End;

  If tbContatos.FieldByName('celular').AsString.IsEmpty Then
  Begin
    Application.MessageBox('Digite o numero do contato!', 'Agenda de Contatos', MB_OK + MB_SYSTEMMODAL + MB_ICONWARNING);
    Abort;
  End;

end;

end.
