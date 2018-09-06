unit ZRSearch;

interface

uses
  SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons;

type
  TfmSearch = class(TForm)
    lbInvitation: TLabel;
    edSearchStr: TEdit;
    cbUseCase: TCheckBox;
    cbFromCurrent: TCheckBox;
    btCont: TBitBtn;
    btCancel: TBitBtn;
    btFind: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.lfm}
uses
  zrConst;

procedure TfmSearch.FormCreate(Sender: TObject);
begin
  Caption                    := szrSearchDlgCaption;
  lbInvitation .Caption      := szrSearchDlgInvitation;
  cbUseCase    .Caption      := szrSearchDlgIgnoreCase;
  cbFromCurrent.Caption      := szrSearchDlgFromCurrent;
  btFind       .Caption      := szrSearchDlgStartSearch;
  btCont       .Caption      := szrSearchDlgContinueSearch;
  btCancel     .Caption      := szrCancel;
end;

procedure TfmSearch.FormShow(Sender: TObject);
begin
  edSearchStr.SetFocus;
end;

end.

