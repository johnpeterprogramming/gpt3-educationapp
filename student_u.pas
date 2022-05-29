unit student_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TstudentForm = class(TForm)
    Label1: TLabel;
    btnExit: TBitBtn;
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  studentForm: TstudentForm;

implementation

{$R *.dfm}

procedure TstudentForm.btnExitClick(Sender: TObject);
begin
Application.Terminate;
end;

end.
