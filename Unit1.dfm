object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'To-Do List'
  ClientHeight = 358
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 237
    Height = 23
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Adiconar'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnRemove: TButton
    Left = 88
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 2
    OnClick = btnRemoveClick
  end
  object btnClear: TButton
    Left = 168
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = btnClearClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 80
    Width = 237
    Height = 269
    ItemHeight = 15
    TabOrder = 4
  end
end
