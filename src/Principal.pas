unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    edtTarefa: TEdit;
    btnPlay: TSpeedButton;
    btnStop: TSpeedButton;
    mmoResultado: TMemo;
    Timer1: TTimer;
    lblTempo: TLabel;
    lblTitulo: TLabel;
    lblResultados: TLabel;
    lblTituloTempo: TLabel;
    procedure btnPlayClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
  private
    { Private declarations }
    FTempo,
    FHoraInicio: TDateTime;
    procedure HabilitarComponentes(pHabilitaPlay, pHabilitaPause, pHabilitaTimer : Boolean);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
uses
  DateUtils, System.SysUtils;
{$R *.dfm}

procedure TfrmPrincipal.btnPlayClick(Sender: TObject);
begin
  if edtTarefa.Text = '' then
    begin
      ShowMessage('Preencha a tarefa para iniciar.');
      abort;
    end;

  FTempo := 0;
  HabilitarComponentes(False, True, True);
  FHoraInicio := Now();
end;

procedure TfrmPrincipal.btnStopClick(Sender: TObject);
var
  lTempoGasto,
  lFormatacaoHora: string;
begin
  lTempoGasto := lblTempo.Caption;
  lblTempo.Caption := '00:00:00';

  lFormatacaoHora := FormatDateTime('hh:mm:ss', FHoraInicio);

  mmoResultado.Lines.Add(edtTarefa.Text + #13#10 + '  Hora iniciada: ' + lFormatacaoHora + #13#10 + '  Tempo executando: ' + lTempoGasto + #13#10);
  HabilitarComponentes(True, False, False);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  FTempo := incSecond(FTempo);
  lblTempo.Caption := FormatDateTime('hh:mm:ss', FTempo);
end;

procedure TfrmPrincipal.HabilitarComponentes(pHabilitaPlay, pHabilitaPause, pHabilitaTimer : Boolean);
begin
  btnPlay.Enabled := pHabilitaPlay;
  btnStop.Enabled := pHabilitaPause;
  Timer1.Enabled := pHabilitaTimer;
end;

end.
