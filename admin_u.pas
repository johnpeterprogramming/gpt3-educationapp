unit admin_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TadminForm = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adminForm: TadminForm;

implementation

{$R *.dfm}

procedure TadminForm.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
