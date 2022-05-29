program gpt_p;

uses
  Vcl.Forms,
  gpt_u in 'gpt_u.pas' {Form1},
  requests_u in 'requests_u.pas' {Form2},
  dmUsers_u in 'dmUsers_u.pas' {DataModuleUsers: TDataModule},
  admin_u in 'admin_u.pas' {adminForm},
  student_u in 'student_u.pas' {studentForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TwelcomeForm, welcomeForm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataModuleUsers, DataModuleUsers);
  Application.CreateForm(TadminForm, adminForm);
  Application.CreateForm(TstudentForm, studentForm);
  Application.Run;
end.
