unit ZRPrnDlg;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  Spin, ExtCtrls, ZREscape, ZRPrntr, PrintersDlgs;

type

  { TZRPrintForm }

  TZRPrintForm = class(TForm)
    bbPrinterSettings: TBitBtn;
    BitBtnOk: TBitBtn;
    BitBtnCancel: TBitBtn;
    cbPrinter: TComboBox;
    chbPrintToFile: TCheckBox;
    cbOEMConvert: TCheckBox;
    cbEscapes: TComboBox;
    cbIgnoreFontStyle: TCheckBox;
    cbPaperType: TComboBox;
    eCodePage: TEdit;
    lbPaperType: TLabel;
    sePgFrom: TSpinEdit;
    sePgTo: TSpinEdit;
    gbPrinter: TGroupBox;
    gbPages: TGroupBox;
    gbCopies: TGroupBox;
    gbOptions: TGroupBox;
    lbCodePage: TLabel;
    lbEscapes: TLabel;
    lbCopies: TLabel;
    lbPgTo: TLabel;
    lbPgFrom: TLabel;
    lbPrinter: TLabel;
    PrinterSetupDlg: TPrinterSetupDialog;
    rbPagesAll: TRadioButton;
    rbPagesFromTo: TRadioButton;
    seCopies: TSpinEdit;
    procedure bbPrinterSettingsClick(Sender: TObject);
    procedure cbPrinterChange(Sender: TObject);
  private

  public
    class function Execute(AOptions: TZReportOptions; APageCount: Integer = 0): Boolean;
  end;

var
  ZRPrintForm: TZRPrintForm;

implementation

{$R *.lfm}

uses
  Printers, ZRConst;

{ TZRPrintForm }

procedure TZRPrintForm.cbPrinterChange(Sender: TObject);
begin
  Printer.PrinterIndex := cbPrinter.ItemIndex;
end;

procedure TZRPrintForm.bbPrinterSettingsClick(Sender: TObject);
begin
  if PrinterSetupDlg.Execute then
    cbPrinter.ItemIndex := Printer.PrinterIndex;
end;

class function TZRPrintForm.Execute(AOptions: TZReportOptions;
  APageCount: Integer): Boolean;
var
  Dlg: TZRPrintForm;
  TmpPrnIdx: Integer;
  I: TZREscapeModel;
begin
  TmpPrnIdx := Printer.PrinterIndex;
  Dlg := TZRPrintForm.Create(Application);

  Dlg.Caption := szrPrintDialogCaption;
  Dlg.cbIgnoreFontStyle.Caption := szrIgnoreFontStyles;
  Dlg.cbOEMConvert.Caption := szrConvertToOEM;
  Dlg.gbPrinter.Caption := szrPrintDialogPrinter;
  Dlg.lbPrinter.Caption := szrPrintDialogPrinter;
  Dlg.bbPrinterSettings.Caption := szrPrintDialogSetup;
  Dlg.chbPrintToFile.Caption := szrPrintDialogPrToFile;
  Dlg.gbPages.Caption := szrPrintDialogPrRange;
  Dlg.rbPagesAll.Caption := szrPrintDialogRAll;
  Dlg.rbPagesFromTo.Caption := szrPrintDialogRPages;
  Dlg.lbPgFrom.Caption := szrPrintDialogRFrom;
  Dlg.lbPgTo.Caption := szrPrintDialogRTo;
  Dlg.gbCopies.Caption := szrPrintDialogCopies;
  Dlg.lbCopies.Caption := szrPrintDialogNrCopies;
  Dlg.gbOptions.Caption := szrPrintDialogOptions;
  Dlg.lbCodePage.Caption := szrPrintDialogCP;
  Dlg.lbEscapes.Caption := szrEscapeModel;
  Dlg.lbPaperType.Caption := szrPrintDialogPaper;
  Dlg.cbPaperType.Items.Clear;
  Dlg.cbPaperType.Items.Add(szrPrintDialogPCont);
  Dlg.cbPaperType.Items.Add(szrPrintDialogPFolio);
  Dlg.cbPaperType.Items.Add(szrPrintDialogPSheet);

  Dlg.cbPrinter.Items.Clear;
  Dlg.cbPrinter.Items.AddStrings(Printer.Printers);
  Dlg.cbPrinter.ItemIndex := Printer.PrinterIndex;
  Dlg.seCopies.Value := AOptions.Copies;
  Dlg.sePgFrom.Value := AOptions.PageFrom;
  Dlg.sePgTo.Value := AOptions.PageTo;
  Dlg.sePgFrom.MaxValue := APageCount;
  Dlg.sePgTo.MaxValue := APageCount;
  Dlg.cbOEMConvert.Checked := AOptions.OEMConvert;
  Dlg.eCodePage.Text := IntToStr(AOptions.CodePage);
  Dlg.cbEscapes.Items.Clear;
  Dlg.cbIgnoreFontStyle.Checked := AOptions.IgnoreStyles;
  for I := Low(TZREscapeModel) to High(TZREscapeModel) do
    Dlg.cbEscapes.Items.Add(EscapeModelNames[I]);
  Dlg.cbEscapes.ItemIndex := Integer(AOptions.Escapes.Model);
  Dlg.cbPaperType.ItemIndex := Integer(AOptions.PaperType);
  Dlg.chbPrintToFile.Checked := AOptions.Destination = zrdFile;
  if Dlg.ShowModal = mrOK then
  begin
    AOptions.Copies := Dlg.seCopies.Value;
    if Dlg.rbPagesAll.Checked then
    begin
      AOptions.PageFrom := Dlg.sePgFrom.Value;
      AOptions.PageTo := Dlg.sePgTo.Value;
    end
    else
    begin
      AOptions.PageFrom := 1;
      AOptions.PageTo := APageCount;
    end;
    if Dlg.cbEscapes.ItemIndex <> -1 then
      AOptions.Escapes.Model := TZREscapeModel(Dlg.cbEscapes.ItemIndex);
    AOptions.OEMConvert := Dlg.cbOEMConvert.Checked;
    AOptions.CodePage := StrToIntDef(Dlg.eCodePage.Text, AOptions.CodePage);
    AOptions.IgnoreStyles := Dlg.cbIgnoreFontStyle.Checked;
    AOptions.PaperType := TZRPaperType(Dlg.cbPaperType.ItemIndex);
    if Dlg.chbPrintToFile.Checked then
      AOptions.Destination := zrdFile
    else
      AOptions.Destination := zrdPrinter;
    Result := True;
  end
  else
  begin
    Printer.PrinterIndex := TmpPrnIdx;
    Result := False;
  end;
  Dlg.Free;
end;

end.

