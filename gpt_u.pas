unit gpt_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    btnRun: TBitBtn;
    memJson: TMemo;
    edtPrompt: TEdit;
    pnlLogin: TPanel;
    btnLogin: TBitBtn;
    edtUsername: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    procedure btnRunClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    loggedUser : string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses requests_u, dmUsers_u;


procedure TForm1.btnLoginClick(Sender: TObject);
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
      break;
    end;

    tblUsers.Next;
  end;

end;


if bLoggedIn then
begin
  showmessage('You have been logged in');
  pnlLogin.Hide;
end
else
  showmessage('Incorrect Username or Password');

end;

procedure TForm1.btnRunClick(Sender: TObject);
var sInput, bruh : String;
  I: Integer;
begin

sInput := edtPrompt.Text;
//showmessage(sPrompt);
bruh := requests_u.Form2.handleRequest(sInput, '0', '100');
memJson.Lines.Clear;
memJson.Lines.Add(bruh);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
pnlLogin.Top := 0;
pnlLogin.Left := 0;
end;

end.
