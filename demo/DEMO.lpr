program DEMO;

{$MODE Delphi}

uses
  Forms, Interfaces,
  MAIN in 'MAIN.PAS' {fmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
