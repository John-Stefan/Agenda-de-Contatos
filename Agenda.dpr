program Agenda;

uses
  Vcl.Forms,
  uFormularioAgendaContatos in 'uFormularioAgendaContatos.pas' {Form1},
  uFormularioDM in 'uFormularioDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
