unit dmUsers_u;

interface

uses
  System.SysUtils, System.Classes, ADODB, DB;

type
  TDataModuleUsers = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    conUsers : TADOConnection;
    tblUsers : TADOTable;
    dsUsers : TDataSource;

  end;

var
  DataModuleUsers: TDataModuleUsers;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModuleUsers.DataModuleCreate(Sender: TObject);
begin
// Instantiate objects
conUsers := TADOConnection.Create( DataModuleUsers );
tblUsers := TADOTable.Create( DataModuleUsers );
dsUsers := TDataSource.Create( DataModuleUsers );

// Setup connection to Users database
conUsers.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Users.mdb;Mode=ReadWrite;Persist Security Info=False';
conUsers.LoginPrompt := false;
conUsers.Open;

// Setup tables
tblUsers.Connection := conUsers;
tblUsers.TableName := 'Users';

// Setup Datasource
dsUsers.DataSet := tblUsers;

tblUsers.Open;


end;

end.
