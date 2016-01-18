unit UOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, Buttons;

type
  TFrmOpt = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    seSpaceLimit: TSpinEdit;
    edFreeSpace: TEdit;
    GroupBox4: TGroupBox;
    cbSameImg: TCheckBox;
    cbScrSaver: TCheckBox;
    cbStandBy: TCheckBox;
    cbPCC: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit1: TSpinEdit;
    Label8: TLabel;
    CheckBox4: TCheckBox;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOpt: TFrmOpt;

implementation

{$R *.dfm}

end.
