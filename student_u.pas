unit student_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TstudentForm = class(TForm)
    Label1: TLabel;
    edtAnswer1: TEdit;
    btnSubmit: TBitBtn;
    btnGenerate: TBitBtn;
    btnStart: TBitBtn;
    memJson: TMemo;
    cmbSubject: TComboBox;
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
var sPrompt, sRequestOutput, e1, e2, e3 : String;
begin

e1 := 'The following questsions are regarding the book: A Strange case of Dr Jekyl and Mr Hyde. Q: What is Mr Uttersons occupation? A: Mr Utterson is a lawyer. Q: That is correct .';
e2 := 'Q: Who is Mr Hyde? A:Mr Hyde is a highschool teacher. Q: Your answer is incorrect, Dr Jekyl transforms into Mr Hyde, he is the mental and physical manifestation of his evil personality. ';
e3 := 'Q:What is Mr Jekyls motive to transform into Mr Hyde A: Dr Jekyl wants to be evil. Q: Mostly incorrect, Dr Jeykl transforms into Mr Hyde to be able to explore his evil side without consequences. ';
sPrompt := e1 + e2 + 'Q:Name two examples of Mr Uttersons friends \nA: ' + edtAnswer1.Text + ' \nQ: ';
sRequestOutput := requests_u.Form2.handleRequest(sPrompt, '0', '200');
//You are a high school english teacher. You have read the book "Strange Case of Dr Jekyll and Mr Hyde" to your students. Create five trivia questions about the book
memJson.Lines.Clear;
memJson.Lines.Add(sRequestOutput);
//showmessage('Questions have been generated. Click START button to start timer.');

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
