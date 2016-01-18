unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JPEG, ExtCtrls, tlhelp32,inifiles, Spin ;

type
  TCharSet = set of Char;
  TPCCMainForm = class(TForm)
    btnShow: TButton;
    btnEnable: TButton;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    btnOptions: TButton;
    procedure btnShowClick(Sender: TObject);
    procedure btnEnableClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
  public
    procedure Capture;
    procedure ShowApp;
    procedure HideApp;
    procedure LaunchCapScr;
    procedure StopCapScr;
    procedure WMCopyData(var msg: TWMCopyData); message WM_COPYDATA;
    procedure WMHotkey(Var msgkey: TWMHotkey); message WM_HOTKEY;
    procedure WMQueryEndSession(var Message : TWMQueryEndSession); message WM_QueryEndSession;

  end;

var
  PCCMainForm: TPCCMainForm;

implementation

uses UCaptScr, globals, UOptions;

{$R *.dfm}

function isScreenSaverRunning: boolean;
 function isModuleRunning(sname: string): boolean;
  function GetShortName(lname: string): string;
  var
    i: integer;
    psTmp: pchar;
  begin
    i:= MAX_PATH+1;
    GetMem(psTmp,i);
    GetShortPathName(pchar(lname),psTmp,i);
    result:= ansiuppercase(string(psTmp));
    FreeMem(psTmp);
  end;
 var
   ok: boolean;
   modulename: string;
   pentry: TProcessEntry32;
   snapshot: THandle;
 begin
   snapshot:= 0;
   ok:= false;
   try
     snapshot:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
     if snapshot<> 0 then
       begin
         pentry.dwSize:= SizeOf(TProcessEntry32);
         if Process32First(snapshot,pentry) then
           begin
             modulename:= GetShortName(sname);
             ok:= (GetShortName(string(pentry.szExeFile))= modulename);
             if not ok then
               while Process32Next(snapshot,pentry) do
                 begin
                   ok:= (GetShortName(string(pentry.szExeFile))= modulename);
                   if ok then
                     break;
                 end;
           end;
       end;
   finally
     CloseHandle(snapshot);
   end;
   result:= ok;
 end;
begin
    result:= isModuleRunning('SCRNSAVE.EXE');
end;

procedure TPCCMainForm.WMCopyData(var msg: TWMCopyData);
begin
  case ord (PChar(msg.CopyDataStruct.lpData)[0]) of
    115: StopCapScr;    //s
    108: LaunchCapScr;  //l
    119: ShowApp;       //w
    104: HideApp;       //h
  end;
end;

procedure TPCCMainForm.WMQueryEndSession(var Message : TWMQueryEndSession);
begin
  inherited;
  StopCapScr;
  Message.Result := 1;
end;

procedure TPCCMainForm.Capture;
var
  bmp: TBitmap;
  JPEG:TJPEGImage;
  FileName: string;
begin
  FileName := GetTmpDir + '~' + FormatDateTime('hh-mm-ss',Now) +'.tmp';

  Bmp := TBitmap.Create;
 try
    bmp.Width := screen.Width;
    bmp.Height := screen.Height;
    BitBlt(bmp.Canvas.Handle, 0, 0, bmp.Width, bmp.Height,
      GetDC(GetDesktopWindow), 0, 0, SrcCopy);
    JPEG := TJPEGImage.Create;
    try
      JPEG.CompressionQuality := 50;
      JPEG.Assign(bmp);
      JPEG.SaveToFile(FileName);
      Application.ProcessMessages;
    finally
      JPEG.Free
    end;
 finally
    bmp.Free
 end;
end;

procedure TPCCMainForm.ShowApp;
begin
  Visible := true;
  Application.BringToFront;
  ShowWindow(Application.Handle, SW_Hide);
end;

procedure TPCCMainForm.HideApp;
begin
  Visible := false;
end;

procedure TPCCMainForm.LaunchCapScr;
begin
  btnEnable.Caption := '&Deactivate';
  Timer1.Enabled := true;
end;

procedure TPCCMainForm.StopCapScr;
begin
  btnEnable.Caption := '&Activate';
  Timer1.Enabled := false;
end;

procedure TPCCMainForm.btnShowClick(Sender: TObject);
begin
  CapScrForm := TCapScrForm.Create(Application);
  try
    CapScrForm.ShowModal
  finally
    CapScrForm.Free;
  end;
end;

procedure TPCCMainForm.btnEnableClick(Sender: TObject);
begin
  case Timer1.Enabled of
    true: StopCapScr;
    false: LaunchCapScr;
  end;
end;

procedure TPCCMainForm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := false;
  Capture;
  Timer1.Enabled := true;
end;

procedure TPCCMainForm.FormDestroy(Sender: TObject);
begin
  StopCapScr;
  UnRegisterHotkey(Handle, 1);
  UnRegisterHotkey(Handle, 2);
  UnRegisterHotkey(Handle, 3);
  UnRegisterHotkey(Handle, 4);
end;

procedure TPCCMainForm.FormCreate(Sender: TObject);
begin
 if not (csDesigning in ComponentState) then
    begin
      RegisterHotkey(Handle, 1, Mod_Control + Mod_Alt, 76);  // launch
      RegisterHotkey(Handle, 2, Mod_Control + Mod_Alt, 83);  // Stop
      RegisterHotkey(Handle, 3, Mod_Control + Mod_Alt, 38);  // show
      RegisterHotkey(Handle, 4, Mod_Control + Mod_Alt, 40);  // hide
    end;
  LaunchCapScr;    
end;

procedure TPCCMainForm.WMHotkey(Var msgkey: TWMHotkey);
Begin
  case msgkey.HotKey of
    1: LaunchCapScr;
    2: StopCapScr;
    3: ShowApp;
    4: HideApp;
  end;
end;

procedure TPCCMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  HideApp;
  CanClose := false;
end;

procedure TPCCMainForm.Button1Click(Sender: TObject);
begin
  if MessageDlg('Do you want to exit ' + Application.Title + ' ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TPCCMainForm.Button2Click(Sender: TObject);
begin
  ShowMessage(Application.Title+#13+'BENYAMMI Bachir'+#13+'CopyRigth © 2005');
end;

procedure TPCCMainForm.btnOptionsClick(Sender: TObject);
begin
  FrmOpt := TFrmOpt.Create(Application);
  try
    FrmOpt.ShowModal
  finally
    FrmOpt.Free;
  end;
end;

end.
