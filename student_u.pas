unit student_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TstudentForm = class(TForm)
    Label1: TLabel;
    edtAnswer1: TEdit;
    edtSubject: TEdit;
    btnSubmit: TBitBtn;
    btnGenerate: TBitBtn;
    btnStart: TBitBtn;
    memJson: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGenerateClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  studentForm: TstudentForm;

implementation

{$R *.dfm}

uses requests_u;

procedure TstudentForm.btnGenerateClick(Sender: TObject);
var sPrompt, sRequestOutput : String;
begin
sRequestOutput := requests_u.Form2.handleRequest('say this is a test', '0', '20');
//You are a high school english teacher. You have read the book "Strange Case of Dr Jekyll and Mr Hyde" to your students. Create five trivia questions about the book
memJson.Lines.Clear;
memJson.Lines.Add(sRequestOutput);
showmessage('Questions have been generated. Click START button to start timer.');

end;

procedure TstudentForm.btnStartClick(Sender: TObject);
begin
//Shows question labels and enabled edit boxes
end;

procedure TstudentForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

end.
