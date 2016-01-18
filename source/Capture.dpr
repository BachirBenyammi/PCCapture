program Capture;

uses
  Forms,
  Windows,
  Messages,
  UMain in 'UMain.pas' {PCCMainForm},
  UCaptScr in 'UCaptScr.pas' {CapScrForm},
  globals in 'globals.pas',
  UOptions in 'UOptions.pas' {FrmOpt};

{$R *.res}

var
  handle: THandle;
  cds: TCopyDataStruct;
  fMutex: THandle;
  carac: string;
begin
  fMutex := CreateMutex(nil, false, 'CapScr');
  if( GetLastError() = ERROR_ALREADY_EXISTS ) or
    ( WaitForSingleObject(fMutex, 100) = WAIT_TIMEOUT ) or
    ( fMutex = 0 ) then
    begin
      handle := FindWindow('TPCCMainForm', nil);
        if handle <> 0 then
          begin
            if ParamCount = 0 then Exit;
            carac := ParamStr(1);
            if not (ord(carac[1]) in [115, 108, 119, 104]) then

              Exit;
            with cds do
              begin
                dwData := 0;
                cbData := 1;
                lpData := PChar(carac);
              end;
            SendMessage(handle, WM_COPYDATA, Application.Handle, integer(@cds));
            Exit;
          end;
    end;

  ShowWindow(Application.Handle, SW_Hide);
  Application.ShowMainForm := False;
  Application.Initialize;
  Application.Title := 'PCCapture - BENBAC SOFT';
  Application.CreateForm(TPCCMainForm, PCCMainForm);
  Application.Run;
end.
