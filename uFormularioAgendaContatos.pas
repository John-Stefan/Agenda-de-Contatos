unit uFormularioAgendaContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtNome: TDBEdit;
    Label3: TLabel;
    txtCelular: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    txtBusca: TEdit;
    gdContatos: TDBGrid;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    procedure txtBuscaChange(Sender: TObject);
    procedure gdContatosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uFormularioDM;

procedure TForm1.gdContatosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If DM.tbContatos.FieldByName('bloqueado').AsBoolean  Then
  Begin
    gdContatos.Canvas.Brush.Color := $000000CA;
    gdContatos.Canvas.Font.Color := clWhite;
  End;

  gdContatos.Canvas.FillRect(Rect);
  gdContatos.DefaultDrawDataCell(Rect, column.field, state);
end;

procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  DM.tbContatos.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.
