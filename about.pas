unit About;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, LCLIntf;

{$i turbocommon.inc}

type

  { TfmAbout }

  TfmAbout = class(TForm)
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label5: TLabel;
    laVersion: TLabel;
    laVersionDate: TLabel;
    Shape1: TShape;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure Label6Click(Sender: TObject);
    procedure laUpdateClick(Sender: TObject);
    procedure laWebSiteClick(Sender: TObject);
  private
    { private declarations }
  public
    procedure Init;
    { public declarations }
  end; 

var
  fmAbout: TfmAbout;

implementation

{ TfmAbout }

uses Main, Update;

procedure TfmAbout.laWebSiteClick(Sender: TObject);
begin
end;

procedure TfmAbout.Init;
begin
  laVersion.Caption:= 'Version ' + fmMain.Version;
  laVersionDate.Caption:= fmMain.VersionDate;
end;

procedure TfmAbout.Label6Click(Sender: TObject);
begin
  OpenURL('http://lazarus.freepascal.org');
end;

procedure TfmAbout.laUpdateClick(Sender: TObject);
begin
  fmUpdate:= TfmUpdate.Create(nil);
  fmUpdate.Init(fmMain.Major, fmMain.Minor, fmMain.ReleaseVersion);
  fmUpdate.Show;
end;

procedure TfmAbout.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  CloseAction:= caFree;
end;

procedure TfmAbout.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

initialization
  {$I about.lrs}

end.

