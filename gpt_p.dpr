program gpt_p;

uses
  Vcl.Forms,
  gpt_u in 'gpt_u.pas' {Form1},
  requests_u in 'requests_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
