unit globals;

interface

uses  SysUtils, Windows;

    Function GetTmpDir: String;
    Function GetSysDir: String;
    Function AddSlash(Filename: String): String;
  
implementation

Function AddSlash(Filename: String): String;
begin
  result := FileName;
  if result[length(result)] <> '\' then
    result := result + '\'
end;

Function GetTmpDir: String;
var
  Dir: array[0..MAX_PATH]of Char;
begin
  if GetTempPath(SizeOf(Dir), Dir) <> 0 then
    Result := StrPas(Dir)
  else
    Result := GetCurrentDir;
  Result := AddSlash(Result);
end;

Function GetSysDir: String;
var
  Dir: array[0..MAX_PATH-1] of char;
begin
  SetString(Result, Dir, GetSystemDirectory(Dir, MAX_PATH));
  Result := AddSlash(Result);
end;
end.
