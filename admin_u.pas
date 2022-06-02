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
    btnRemoveUser: TBitBtn;
    pnlManage: TPanel;
    Label2: TLabel;
    pnlRetrieveData: TPanel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAddUserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnRemoveUserClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure showTable;
    procedure updateColumns;
  public
    { Public declarations }
  end;

var
  adminForm: TadminForm;

implementation

{$R *.dfm}

uses dmUsers_u;

procedure TadminForm.BitBtn1Click(Sender: TObject);
begin
// Shows Scores table
end;

procedure TadminForm.BitBtn2Click(Sender: TObject);
begin
//Produces text files that summarises score
end;

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
sUserType, sUserCount : string;
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

  sUserCount := qryUsers.fieldbyname('CountUserType').asString;

  showTable;

  showmessage('Amount of ' + rdgUserTypes.Items[rdgUserTypes.ItemIndex] + 's: ' + sUserCount);


  end;


end;

procedure TadminForm.btnRemoveUserClick(Sender: TObject);
var iUserID : integer;
begin
// Should check that at least one admin is left
iUserID := strtoint(inputbox('Remove User', 'Enter User ID', '1'));
with DataModuleUsers do
begin
  if tblUsers.Locate('UserID', iUserID, []) then
    if tblUsers['UserType'] = 'S' then
      tblUsers.Delete
    else
      showmessage('Cannot delete Admin')
  else
    showmessage('No User by that ID was found');

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
  updateColumns
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
  updateColumns;
end;

// Resizes column width automaticly to fit grid
procedure TadminForm.updateColumns;
var iColumns, iWidth, iColumnWidth : integer;
  I: Integer;
begin
  iColumns := DBGridUsers.Columns.Count;
  iWidth := DBGridUsers.Width - 35;
  iColumnWidth := iWidth div iColumns;
  for I := 0 to iColumns-1 do
    DBGridUsers.Columns[I].Width := iColumnWidth;

end;

end.
