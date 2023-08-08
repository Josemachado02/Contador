object frmPrincipal: TfrmPrincipal
  Left = 1057
  Top = 62
  Caption = 'Temporizador'
  ClientHeight = 215
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object btnPlay: TSpeedButton
    Left = 182
    Top = 29
    Width = 52
    Height = 25
    Caption = 'Play'
    Flat = True
    OnClick = btnPlayClick
  end
  object btnStop: TSpeedButton
    Left = 246
    Top = 29
    Width = 52
    Height = 25
    Caption = 'Stop'
    Enabled = False
    Flat = True
    OnClick = btnStopClick
  end
  object lblTempo: TLabel
    Left = 53
    Top = 190
    Width = 42
    Height = 15
    AutoSize = False
    Caption = '00:00:00'
  end
  object lblTitulo: TLabel
    Left = 5
    Top = 8
    Width = 160
    Height = 15
    Caption = 'Assunto para marcar o tempo:'
  end
  object lblResultados: TLabel
    Left = 5
    Top = 58
    Width = 60
    Height = 15
    Caption = 'Resultados:'
  end
  object lblTituloTempo: TLabel
    Left = 5
    Top = 190
    Width = 42
    Height = 15
    Caption = 'Tempo: '
  end
  object edtTarefa: TEdit
    Left = 5
    Top = 29
    Width = 165
    Height = 23
    TabOrder = 0
  end
  object mmoResultado: TMemo
    Left = 5
    Top = 79
    Width = 295
    Height = 105
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 240
    Top = 156
  end
end
