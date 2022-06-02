unit gpt_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TwelcomeForm = class(TForm)
    pnlLogin: TPanel;
    btnLogin: TBitBtn;
    edtUsername: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblWelcome: TLabel;
    btnStudent: TBitBtn;
    btnAdmin: TBitBtn;
    procedure btnRunClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
    procedure btnStudentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sUsername, sUserType : string;
    iScoresID : integer;
  end;

var
  welcomeForm: TwelcomeForm;

implementation

{$R *.dfm}

uses requests_u, dmUsers_u, admin_u, student_u;


procedure TwelcomeForm.btnAdminClick(Sender: TObject);
begin

adminForm.Show;
welcomeForm.Hide;
end;

procedure TwelcomeForm.btnLoginClick(Sender: TObject);
var
sUsername, sPassword : string;
bLoggedIn : boolean;
begin
sUsername := edtUsername.Text;
sPassword := edtPassword.Text;
bLoggedIn := false;

with DataModuleUsers do
begin
  tblUsers.First;
  while not tblUsers.Eof do
  begin
    if (tblUsers['Username'] = sUsername) and (tblUsers['Password'] = sPassword) then
    begin
      bLoggedIn := true;
      sUsername := tblUsers['Username'];
      sUserType := tblUsers['Usertype'];
      break;
    end;

    tblUsers.Next;
  end;

end;


if bLoggedIn then
begin
  pnlLogin.Hide;

  if sUserType = 'S' then
    btnStudent.Visible := true
  else
    btnAdmin.Visible := true;

  lblWelcome.visible := true;
  lblWelcome.Caption := 'Welcome ' + sUsername;
end
else
  showmessage('Incorrect Username or Password');

end;

procedure TwelcomeForm.btnRunClick(Sender: TObject);
//var sInput, sRequestOutput : String;
begin
//
//sInput := edtPrompt.Text;
//sRequestOutput := requests_u.Form2.handleRequest(sInput, '0', '100');
//memJson.Lines.Clear;
//memJson.Lines.Add(sRequestOutput);

end;

procedure TwelcomeForm.btnStudentClick(Sender: TObject);
begin
studentForm.Show;
welcomeForm.Hide;
end;

procedure TwelcomeForm.FormCreate(Sender: TObject);
var blue, turquoise : TColor;
begin
pnlLogin.Top := 0;
pnlLogin.Left := 0;
blue := TColor(RGB(0,32,63));
turquoise := TColor(RGB(173,239,209));

welcomeForm.Color := turquoise;
lblWelcome.Color := turquoise;
lblWelcome.Font.Color := blue;
end;

end.
