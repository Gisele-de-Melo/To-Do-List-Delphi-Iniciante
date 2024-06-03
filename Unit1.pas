//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BtnAdd: TButton;
    BtnRemove: TButton;
    BtnClear: TButton;
    ListBox1: TListBox;
    procedure BtnAddClick(Sender: TObject);
    procedure BtnRemoveClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnAddClick(Sender: TObject);
begin
  if Edit1.Text <> '' then
  begin
    ListBox1.Items.Add(Edit1.Text);
    Edit1.Text := '';
    Edit1.SetFocus;
  end
  else
    ShowMessage('Digite uma tarefa antes de adicionar.');
end;

procedure TForm1.BtnRemoveClick(Sender: TObject);
begin
  if ListBox1.ItemIndex <> -1 then
    ListBox1.Items.Delete(ListBox1.ItemIndex)
  else
    ShowMessage('Selecione uma tarefa para remover.');
end;

procedure TForm1.BtnClearClick(Sender: TObject);
begin
  ListBox1.Clear;
end;

end.
