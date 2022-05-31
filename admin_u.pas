unit admin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TadminForm = class(TForm)
    Label1: TLabel;
    DBGridUsers: TDBGrid;
    btnAddUser: TBitBtn;
    btnCount: TBitBtn;
    rdgUserTypes: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddUserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
  private
    { Private declarations }
    procedure showTable;
  public
    { Public declarations }
  end;

var
  adminForm: TadminForm;

implementation

{$R *.dfm}

uses dmUsers_u;

procedure TadminForm.btnAddUserClick(Sender: TObject);
var
sUsername, sPassword, sUsertype : string;
begin
sUsername := inputbox('Add User', 'Enter Username?', 'Bob');
sPassword := inputbox('Add User', 'Enter Password?', 'bobspassword');
sUsertype := inputbox('Add User', 'Student or Admin(S or A)?', 'S');


with DataModuleUsers do
begin

tblUsers.Insert;

tblUsers['Username'] := sUsername;
tblUsers['Password'] := sPassword;
tblUsers['Usertype'] := sUsertype;

tblUsers.Post;
end;

showTable;

end;

procedure TadminForm.btnCountClick(Sender: TObject);
var
sUserType : string;
begin
if rdgUserTypes.ItemIndex = 0 then
  sUserType := 'A'
else if rdgUserTypes.ItemIndex = 1 then
  sUserType := 'S'
else
begin
  showmessage('No user type selected from radio group. Select either Student or Admin.');
  Exit;
end;

with DataModuleUsers do
  begin
  qryUsers.Close;
  qryUsers.SQL.Clear;
  qryUsers.SQL.Add('select count(*) as CountUserType from Users where UserType = ' + quotedstr(sUserType));
  qryUsers.Open;

  showmessage('Amount of ' + rdgUserTypes.Items[rdgUserTypes.ItemIndex] + 's: ' + qryUsers.fieldbyname('CountUserType').asString);

  showTable;
  end;


end;

procedure TadminForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TadminForm.FormCreate(Sender: TObject);
begin
showTable;
end;

procedure TadminForm.FormShow(Sender: TObject);
begin
  DBGridUsers.DataSource := DataModuleUsers.dsUsers;
  DBGridUsers.Columns[0].Width := 50;
  DBGridUsers.Columns[1].Width := 50;
  DBGridUsers.Columns[2].Width := 50;
  DBGridUsers.Columns[3].Width := 50;
end;

procedure TadminForm.showTable;
begin
with DataModuleUsers do
  begin
  qryUsers.Close;
  qryUsers.SQL.Clear;
  qryUsers.SQL.Add('select * from Users');
  qryUsers.Open;
  end;
end;

end.
