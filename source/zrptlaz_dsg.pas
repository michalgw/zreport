{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit zrptlaz_dsg;

{$warn 5023 off : no warning about unused units}
interface

uses
  ZRPrprty, ZRCapton, ZRDsgn, ZRReg, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('ZRReg', @ZRReg.Register);
end;

initialization
  RegisterPackage('zrptlaz_dsg', @Register);
end.
