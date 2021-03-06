unit uEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, ACBrBase, ACBrEnterTab, Easysize,
  RxPlacemnt, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxSkinsCore,
  dxSkinCaramel;

type
  TfrmEmpresa = class(Tfrm)
    cmb1: TcxImageComboBox;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresa: TfrmEmpresa;

implementation

{$R *.dfm}

uses uAutocomConsts, uFuncoes, udm_ini {$IFDEF PV},uPV{$ELSE},uMain{$ENDIF};

procedure TfrmEmpresa.cxButton1Click(Sender: TObject);
begin
   DM_INI.ini.inifilename := Aqui(C_INI_FILE, cmb1.Properties.Items[cmb1.SelectedItem].Value + '.ini');
{$IFDEF PV}
   frmPV.btnLogin.Tag := 100;
   frmPV.btnLogin.Click;
{$ELSE}
   frmMain.btnLogin.Tag := 100;
   frmMain.btnLogin.Click;
{$ENDIF}
   btnSair.Click;
end;

procedure TfrmEmpresa.FormCreate(Sender: TObject);
const
   adir = 'INI\EMP';
var
   lista: TStringList;
   i: integer;
begin
   inherited;
   if FileExists(Aqui(adir, 'lst.dat')) then
   begin
      lista := TStringList.Create;
      lista.LoadFromFile(Aqui(adir, 'lst.dat'));

      for i := 0 to lista.Count -1 do
      begin
         with cmb1.Properties.Items.Add do
         begin
            Description := Copy(lista.Strings[i],1, pos('|', lista.Strings[i])-1);
            Value       := Trim(Copy(lista.Strings[i],pos('|', lista.Strings[i])+1, 20));
         end;
      end;

      lista.Free;
   end
   else
   ShowMessage('Lista de empresas n�o existe.');
end;

end.
