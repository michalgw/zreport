{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit zrptlaz;

{$warn 5023 off : no warning about unused units}
interface

uses
  ZRConst, ZRStrUtl, ZRStream, ZRPrntr, ZRPrev, ZRPrgres, ZRSearch, ZRCtrls, 
  ZREval, ZRFormat, ZRUtils, ZREscape, ZReport, ZRPrnDlg, LazarusPackageIntf;

implementation

procedure Register;
begin
end;

initialization
  RegisterPackage('zrptlaz', @Register);
end.
