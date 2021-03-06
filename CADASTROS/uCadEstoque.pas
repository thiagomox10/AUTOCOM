unit uCadEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCad, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, FireDAC.Comp.Client, pcnConversaoNFE,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, pcnConversao,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxDropDownEdit,
  cxMemo, cxDBEdit, cxCheckBox, cxCurrencyEdit, cxSpinEdit, cxGroupBox,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxDBLabel,
  Vcl.StdCtrls, ACBrBase, ACBrEnterTab, Easysize, RxPlacemnt, cxLabel,
  cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxNavigator,
  cxDBNavigator, cxPC, dxStatusBar, cxButtons, Vcl.ExtCtrls, cxImageComboBox,
  dxSkinsCore, dxSkinCaramel, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu;

type
  TfrmCadEstoque = class(TfrmCad)
    dsSessao: TDataSource;
    dsUnidade: TDataSource;
    pgOpc: TcxPageControl;
    TabImpostos: TcxTabSheet;
    dsAliq: TDataSource;
    dsRedBC: TDataSource;
    dsCST: TDataSource;
    gppis: TcxGroupBox;
    gpcofins: TcxGroupBox;
    gpipi: TcxGroupBox;
    TabMedic: TcxTabSheet;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBCalcEdit13: TcxDBCurrencyEdit;
    cxDBCalcEdit12: TcxDBCurrencyEdit;
    cxDBCalcEdit14: TcxDBCurrencyEdit;
    TabBalanca: TcxTabSheet;
    cxDBMemo1: TcxDBMemo;
    cxDBMemo2: TcxDBMemo;
    btnReplicar: TcxButton;
    Panel7: TPanel;
    cmbOpPesq: TcxComboBox;
    cxLabel1: TcxLabel;
    cmbSessaoPesq: TcxComboBox;
    tbvcod_gtin: TcxGridDBColumn;
    tbvncm: TcxGridDBColumn;
    tbvnome: TcxGridDBColumn;
    tbvvrvenda_vista: TcxGridDBColumn;
    tbvvrcusto: TcxGridDBColumn;
    gppfp: TPanel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBCalcEdit15: TcxDBCurrencyEdit;
    gpsngpc: TPanel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBComboBox;
    gpatualiz: TPanel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBSpinEdit8: TcxDBSpinEdit;
    Label26: TcxLabel;
    Label22: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    Label14: TcxLabel;
    Label35: TcxLabel;
    Label48: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label47: TcxLabel;
    Label36: TcxLabel;
    Label46: TcxLabel;
    Label10: TcxLabel;
    Label40: TcxLabel;
    cxLabel6: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    gbNatRec: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    cxLabel8: TcxLabel;
    cmbTabela: TcxDBLookupComboBox;
    cmbCod_receita: TcxDBLookupComboBox;
    btnAssociar: TcxButton;
    cxGroupBox5: TPanel;
    cxLabel5: TcxLabel;
    cxGroupBox6: TPanel;
    cxLabel3: TcxLabel;
    cxGroupBox9: TPanel;
    Label41: TcxLabel;
    cxGroupBox10: TPanel;
    Label37: TcxLabel;
    cxGroupBox8: TPanel;
    cxLabel4: TcxLabel;
    cxGroupBox7: TPanel;
    cxLabel2: TcxLabel;
    lblcodbal: TcxDBLabel;
    cxDBSpinEdit5: TcxDBLookupComboBox;
    cxDBSpinEdit4: TcxDBLookupComboBox;
    cxDBSpinEdit2: TcxDBLookupComboBox;
    cxDBSpinEdit3: TcxDBLookupComboBox;
    cxDBSpinEdit6: TcxDBLookupComboBox;
    cxDBSpinEdit7: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel1: TPanel;
    EDID: TcxDBLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cmbSessao: TcxDBLookupComboBox;
    cmbUnidade: TcxDBLookupComboBox;
    cxDBCalcEdit1: TcxDBCurrencyEdit;
    cxDBCalcEdit2: TcxDBCurrencyEdit;
    cxDBCalcEdit3: TcxDBCurrencyEdit;
    cxDBCalcEdit4: TcxDBCurrencyEdit;
    cxDBCalcEdit5: TcxDBCurrencyEdit;
    cxDBCalcEdit7: TcxDBCurrencyEdit;
    cxDBCalcEdit8: TcxDBCurrencyEdit;
    cxDBCalcEdit9: TcxDBCurrencyEdit;
    cxDBCalcEdit11: TcxDBCurrencyEdit;
    Panel2: TPanel;
    cbSusp: TcxDBCheckBox;
    cbPromo: TcxDBCheckBox;
    cdProdProp: TcxDBCheckBox;
    cxDBTextEdit7: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cbBalanca: TcxDBCheckBox;
    edGTIN: TcxDBTextEdit;
    edcodaux: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    btnCadNCM: TcxButton;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label38: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxLabel9: TcxLabel;
    cxDBSpinEdit9: TcxDBSpinEdit;
    cmbRedBC: TcxDBLookupComboBox;
    cmbCst: TcxDBLookupComboBox;
    btnCadCST: TcxButton;
    btnCadRedBC: TcxButton;
    cmbAliqICMS: TcxDBLookupComboBox;
    btnCadAliq: TcxButton;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label18: TcxLabel;
    cxDBImageComboBox1: TcxDBImageComboBox;
    cxLabel10: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel11: TcxLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    cxLabel14: TcxLabel;
    cxDBCurrencyEdit5: TcxDBCurrencyEdit;
    cxLabel15: TcxLabel;
    cxDBCurrencyEdit6: TcxDBCurrencyEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxDBImageComboBox2: TcxDBImageComboBox;
    cmbDestinacao: TcxDBComboBox;
    Label39: TcxLabel;
    cxDBCurrencyEdit7: TcxDBCurrencyEdit;
    cxLabel19: TcxLabel;
    DSSpedTabela: TDataSource;
    cxButton5: TcxButton;
    tbvmedicam_principio_atv: TcxGridDBColumn;
    cbEditar: TcxCheckBox;
    btnCalcPMC: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCadCSTClick(Sender: TObject);
    procedure btnCadAliqClick(Sender: TObject);
    procedure DS1StateChange(Sender: TObject);
    procedure TabCadShow(Sender: TObject);
    procedure edGTINExit(Sender: TObject);
    procedure dbNavButtonsButtonClick(Sender: TObject; AButtonIndex: Integer;
      var ADone: Boolean);
    procedure cbBalancaClick(Sender: TObject);
    procedure cxDBCalcEdit5Enter(Sender: TObject);
    procedure DS1DataChange(Sender: TObject; Field: TField);
    procedure cxDBTextEdit7Click(Sender: TObject);
    procedure cmbOpPesqClick(Sender: TObject);
    procedure cmbSessaoPesqClick(Sender: TObject);
    procedure edPesqPropertiesChange(Sender: TObject);
    procedure TabPesqShow(Sender: TObject);
    procedure tbvcod_gtinHeaderClick(Sender: TObject);
    procedure cmbSessaoPropertiesChange(Sender: TObject);
    procedure cmbCstPropertiesChange(Sender: TObject);
    procedure btnCadNCMClick(Sender: TObject);
    procedure cxDBSpinEdit5PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cmbCod_receitaPropertiesChange(Sender: TObject);
    procedure cxDBSpinEdit4PropertiesChange(Sender: TObject);
    procedure cxDBCalcEdit3Enter(Sender: TObject);
    procedure btnReplicarClick(Sender: TObject);
    procedure btnCadRedBCClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cbEditarClick(Sender: TObject);
    procedure tbvCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edPesqEnter(Sender: TObject);
    procedure btnCalcPMCClick(Sender: TObject);

  private
    procedure Achar_Medic;
    procedure Configurar;
    function Gerar_Filtro: string;
    procedure Definir_Tabela_Sped(cst: integer);
  public
    var
      Editando: boolean;
    procedure Gerar_Codigo_Barras;
  end;

var
  frmCadEstoque: TfrmCadEstoque;
  coluna : TcxGridDBColumn;

implementation

{$R *.dfm}

uses uAutocomConsts, uDM, uFuncoes, uMD5Print, uMain, uPesqNCM, uCadSpedTabelas,
  udm_ini, uReplica, uRegras_Imposto, uDM_Conn;

procedure TfrmCadEstoque.Achar_Medic;
var
   prc_custo: currency;
   s: string;
begin
   DMConn.Q1.Open('select * from farma_unipreco where codbar=' + QuotedStr(DM.QEstoquecod_gtin.AsString));

   if DMConn.Q1.IsEmpty then
      DMConn.Q1.Open('select * from farma_unipreco where codbar2=' + QuotedStr(DM.QEstoquecod_gtin.AsString));

   if DMConn.Q1.IsEmpty then
      DMConn.Q1.Open('select * from farma_unipreco where codbar3=' + QuotedStr(DM.QEstoquecod_gtin.AsString));

   if DMConn.Q1.IsEmpty then
      DMConn.Q1.Open('select * from farma_unipreco where codbar4=' + QuotedStr(DM.QEstoquecod_gtin.AsString));

   if not DMConn.Q1.IsEmpty then
   begin
      DM.QEstoquemedicam_apresentacao.AsString  := DMConn.Q1.FieldByName('APRESENT').AsString;
      DM.QEstoquemedicam_principio_atv.AsString := DMConn.Q1.FieldByName('PRINATVNOM').AsString;
      DM.QEstoquemedicam_nomelab.AsString       := DMConn.Q1.FieldByName('NOMELAB').AsString;
      DM.QEstoquemedicam_portaria.AsString      := BuscaTroca(DMConn.Q1.FieldByName('PORTARIA').AsString,'-','');

      DM.QEstoquenome.AsString := copy(DMConn.Q1.FieldByName('DESCRICAO').AsString + ' ' +
                                       DMConn.Q1.FieldByName('APRESENT').AsString + ' ' +
                                       DMConn.Q1.FieldByName('NOMELAB').AsString, 1, 100);

      if cmbCst.Properties.DataController.DataSet.Locate('cst',60,[]) then
      begin
         DM.QEstoquecst.AsInteger := cmbCst.Properties.DataController.DataSet.FieldByName('id').AsInteger;
      end;

      s := DMConn.Q1.FieldByName('PRCCUSTO18').AsString;
      s := copy(s, 1, pos('.', s)+2);
      s := number(s);
      prc_custo := Arredonda(StrToFloatDef(s,0)/100,2);

      DM.QEstoquevrcusto.AsCurrency      := prc_custo;
      DM.QEstoquevrcusto_real.AsCurrency := prc_custo;

      DM.QEstoquevrvenda_vista.AsCurrency := DMConn.Q1.FieldByName('max_preco').AsCurrency;
      DM.QEstoquevrvenda_prz.AsCurrency   := DMConn.Q1.FieldByName('max_preco').AsCurrency;
      DM.QEstoquevrvenda_old.AsCurrency   := DMConn.Q1.FieldByName('max_preco').AsCurrency;
      DM.QEstoquemedicam_pmc.AsCurrency   := DMConn.Q1.FieldByName('max_preco').AsCurrency;
      DM.QEstoquemedic_fracao.Value       := 1;
      DM.QEstoquemedic_atualizar_web.AsString := 'S';
   end;
end;

procedure TfrmCadEstoque.btnCadAliqClick(Sender: TObject);
begin
{$IFDEF GERENCIAL}
   frmMain.Alquotas1.Click;
{$ENDIF}
end;

procedure TfrmCadEstoque.btnCadCSTClick(Sender: TObject);
begin
{$IFDEF GERENCIAL}
   frmMain.CST1.Click;
{$ENDIF}
end;

procedure TfrmCadEstoque.btnCadNCMClick(Sender: TObject);
begin
   if DS1.DataSet.State in [dsEdit, dsInsert] then
   begin
      AbreForm(TfrmPesqNCM, frmPesqNCM);

      if DM.QNCM.Active then
      if not DM.QNCM.IsEmpty then
         DM.QEstoquencm.AsString := DM.QNCMcod_ncm.AsString;
   end;
end;

procedure TfrmCadEstoque.btnCadRedBCClick(Sender: TObject);
begin
{$IFDEF GERENCIAL}
   frmMain.ReduesBC1.Click;
{$ENDIF}
end;

procedure TfrmCadEstoque.btnReplicarClick(Sender: TObject);
begin
   frmReplica := TfrmReplica.Create(self);
   frmReplica.ShowModal;
   FreeAndNil(frmReplica);
end;

procedure TfrmCadEstoque.cbBalancaClick(Sender: TObject);
begin
   if DS1.DataSet.State in[dsInsert, dsEdit] then
   begin
      if cbBalanca.Checked then
      begin
         DM.QEstoquecod_interno.AsString := DM.Gerar_CodBarra_Balanca;
         DM.QEstoquecod_gtin.AsString := DM_INI.Ini.StoredValue['prefix_cod_balanca'] +
                                         LFill(DM.QEstoquecod_interno.AsString, DM_INI.Ini.StoredValue['tam_cod_balanca'], '0');
      end
      else
         DM.QEstoquecod_interno.Value := 0;

      Configurar;
   end;
end;

procedure TfrmCadEstoque.cbEditarClick(Sender: TObject);
begin
   tbv.OptionsData.Editing         := cbEditar.Checked;
   tbv.OptionsSelection.CellSelect := cbEditar.Checked;
   tbvvrcusto.Editing              := cbEditar.Checked;
   tbvncm.Editing                  := cbEditar.Checked;
   tbvvrvenda_vista.Editing        := cbEditar.Checked;
   //tbvquant.Editing                := cbEditar.Checked;
   DS1.AutoEdit                    := cbEditar.Checked;
end;

procedure TfrmCadEstoque.cmbOpPesqClick(Sender: TObject);
begin
   cmbSessaoPesq.Visible := Number(cmbOpPesq.Text)= '1';
   DM.QEstoque.Close;
   edPesq.Clear;
   edPesq.SetFocus;
end;

procedure TfrmCadEstoque.cmbSessaoPesqClick(Sender: TObject);
begin
   DM.QEstoque.Close;
   edPesq.Clear;
   edPesq.SetFocus;
end;

procedure TfrmCadEstoque.cmbSessaoPropertiesChange(Sender: TObject);
begin
   if DS1.DataSet.State in [dsEdit, dsInsert] then
   begin//para isso funcionar ListOptions.SyncMode deve ser True
      if cmbSessao.Properties.DataController.DataSet.FieldByName('usoint').AsString = 'S' then
         DM.QEstoquedestinacao.AsString := '07 Material de Uso e Consumo'
      else
         DM.QEstoquedestinacao.AsString := '00 Mercadoria para Revenda';
   end;
end;

procedure TfrmCadEstoque.Configurar; //exibe ou oculta elementos, conforme a cfg do aplicativo
begin
   TabMedic.TabVisible   := DM_INI.ini.StoredValue['modo_farmacia'];
   TabBalanca.TabVisible := DM.QEstoquebalanca.AsString = 'S';
   edcodaux.Enabled      := DM_INI.INI.StoredValue['exibir_cod_aux'];
   edGTIN.Enabled        := not cbBalanca.Checked;
   gppis.Visible         := DM.QEstoqueincide_pis_cofins.AsString = 'S';
   gpcofins.Visible      := gppis.Visible;
   gbNatRec.Visible      := gppis.Visible;
   gppfp.Visible         := DM_INI.INI.StoredValue['modo_farmacia_popular'];
   cbBalanca.Visible     := (DM_INI.INI.StoredValue['modo_outros']) and (DM_INI.INI.StoredValue['prefix_cod_balanca'] > 0);
   cdProdProp.Visible    := DM_INI.INI.StoredValue['modo_outros'];
   lblcodbal.Visible     := DM_INI.INI.StoredValue['modo_outros'];
   gpipi.Visible         := DM.QEmpresacontr_ipi.AsString = 'S';
end;

procedure TfrmCadEstoque.cxButton1Click(Sender: TObject);
begin
   DM.QSped_CST_Tabela.Open('select * from sped_cst_tabela order by tabela');
   AbreForm(TfrmCadSpedTabelas, frmCadSpedTabelas);
   DM.QSped_CST_Tabela.Open('select * from sped_cst_tabela where cst=' + Texto_Mysql(DM.QEstoquecst_pis_sai.Value));
end;

procedure TfrmCadEstoque.cxButton5Click(Sender: TObject);
begin
   if DM.QEstoque.State in [dsInsert, dsEdit] then
   begin
      AbreForm(TfrmRegras_Imposto, frmRegras_Imposto);
      DM.QEstoquecst.Value               := DM.QRegras_Impostocst.Value;
      DM.QEstoquealiq_icms.Value         := DM.QRegras_Impostoaliq.Value;
      DM.QEstoquecst_ipi_ent.Value       := DM.QRegras_Impostocst_ipi_ent.Value;
      DM.QEstoquecst_ipi_sai.Value       := DM.QRegras_Impostocst_ipi_sai.Value;
      DM.QEstoquecst_pis_ent.Value       := DM.QRegras_Impostocst_pis_ent.Value;
      DM.QEstoquecst_pis_sai.Value       := DM.QRegras_Impostocst_pis_sai.Value;
      DM.QEstoquecst_cofins_ent.Value    := DM.QRegras_Impostocst_cofins_ent.Value;
      DM.QEstoquecst_cofins_sai.Value    := DM.QRegras_Impostocst_cofins_sai.Value;
      DM.QEstoqueincide_pis_cofins.Value := DM.QRegras_Impostoicp.Value;
      DM.QEstoqueipi_pc.Value            := DM.QRegras_Impostoaliq_ipi.Value;
      DM.QEstoquepis_pc.Value            := DM.QRegras_Impostoaliq_pis.Value;
      DM.QEstoquecofins_pc.Value         := DM.QRegras_Impostoaliq_cofins.Value;
   end;
end;

procedure TfrmCadEstoque.btnCalcPMCClick(Sender: TObject);
begin
   if not (DM.QEstoque.State in [dsinsert, dsedit]) then
      exit;

   if DM.QEstoquemedic_qtcaixa.AsInteger <=0 then
      raise Exception.Create('Informe a QUANT/EMBALAGEM');
   if DM.QEstoquemedicam_pmc.Value <=0 then
      raise Exception.Create('Informe o PMC');

   DM.QEstoquemedicam_vrms.Value := Arredonda(DM.QEstoquemedicam_pmc.Value / DM.QEstoquemedic_qtcaixa.AsInteger, 2);
end;

procedure TfrmCadEstoque.cxDBCalcEdit3Enter(Sender: TObject);
begin
   if(DS1.DataSet.State in[dsInsert, dsEdit])and(DM.QEstoquemg_lucro.Value >0) then
      DM.QEstoquevrvenda_vista.Value := ArredondA(DM.QEstoquevrcusto_real.Value +((DM.QEstoquevrcusto_real.Value*DM.QEstoquemg_lucro.Value)/100),2);
end;

procedure TfrmCadEstoque.cxDBCalcEdit5Enter(Sender: TObject);
begin
   if DS1.DataSet.State in[dsInsert, dsEdit] then //calcula o vr a prazo
   begin
      if DM.qestoquepcvenda_pz.Value > 0 then
         DM.QEstoquevrvenda_prz.Value := Arredonda(DM.QEstoquevrvenda_vista.Value + ((DM.QEstoquevrvenda_vista.Value*DM.qestoquepcvenda_pz.Value)/100), 2)
      else
         DM.qestoquepcvenda_pz.Value := DM.QEstoquevrvenda_vista.Value;
   end;
end;

procedure TfrmCadEstoque.cxDBSpinEdit4PropertiesChange(Sender: TObject);
begin
   if DS1.DataSet.State in[dsInsert, dsEdit] then
      DM.QEstoquecst_cofins_ent.Value := DM.QEstoquecst_pis_ent.Value;
end;

procedure TfrmCadEstoque.cxDBSpinEdit5PropertiesChange(Sender: TObject);
begin
   if DS1.DataSet.State in[dsInsert, dsEdit] then
   begin
      DM.QEstoquecst_cofins_sai.Value := DM.QEstoquecst_pis_sai.Value;

      if DM.QEstoquecst_pis_sai.Value in [integer(pis04), integer(pis06), integer(pis07), integer(pis08), integer(pis09), integer(pis49)] then
      begin
         DM.QEstoquepis_pc.Value    := 0;
         DM.QEstoquecofins_pc.Value := 0;
      end
      else
      if DM.QEstoquecst_pis_sai.Value in [integer(pis01), integer(pis02), integer(pis03)] then
      begin
         DM.QEstoquepis_pc.Value    := DM.QEmpresaefd_contr_pis_aliq.value;
         DM.QEstoquecofins_pc.Value := DM.QEmpresaefd_contr_cofins_aliq.Value;
      end;
   end;

   DM.QSped_CST_Tabela.Open('select * from sped_cst_tabela where cst=' + Texto_Mysql(DM.QEstoquecst_pis_sai.Value));
   cmbTabela.Enabled := not DM.QSped_CST_Tabela.IsEmpty;
   cmbCod_receita.Enabled := cmbTabela.Enabled;
end;


procedure TfrmCadEstoque.cmbCstPropertiesChange(Sender: TObject);
begin
{
Tributado ICMS	      00, 20	      101,
Isento / imune	      40,41,50,51    102	   I
ICMS ST	            10, 70	      201, 202	-  nao usa para venda cf
Isento + ICMS ST	   30	            203	   -  nao usa em MG
Isento / imune	      40	            103, 300	I nao usa em MG
N�o tributado	      41	            400	   N  devolu, trf, etc, incusive Servi�os (municipal)
ICMS ST j� cobrado	60	            500	   F
Outros	            90	            900	   -  nao usa para venda cf
}
   if DS1.DataSet.State in[dsInsert, dsEdit] then
   begin //para isso funcionar listoptions.SyncMode deve ser True
      if (cmbCst.Properties.DataController.DataSet.FieldByName('cst').AsInteger in [60])or
         (cmbCst.Properties.DataController.DataSet.FieldByName('cst').AsInteger=500) then
      begin //FF
         if cmbAliqICMS.Properties.DataController.DataSet.Locate('cod_if','F',[loPartialKey]) then
            DM.QEstoquealiq_icms.AsInteger := cmbAliqICMS.Properties.DataController.DataSet.FieldByName('id').AsInteger;
      end
      else //II
      if (cmbCst.Properties.DataController.DataSet.FieldByName('cst').AsInteger in [40,41,50,51, 102]) then
      begin
         if cmbAliqICMS.Properties.DataController.DataSet.Locate('cod_if','I',[loPartialKey]) then
            DM.QEstoquealiq_icms.AsInteger := cmbAliqICMS.Properties.DataController.DataSet.FieldByName('id').AsInteger;
      end;

      if not cmbCst.Properties.DataController.DataSet.FieldByName('cst').AsInteger in [20, 70, 102, 202] then
         DM.QEstoqueinfo_complem.Value := 0;

      cmbRedBC.Enabled := cmbCst.Properties.DataController.DataSet.FieldByName('cst').AsInteger in [20,70,102,202];
   end;
end;

procedure TfrmCadEstoque.cmbCod_receitaPropertiesChange(Sender: TObject);
begin //para isso funcionar listoptions.SyncMode deve ser True
   if Assigned(cmbCod_receita.Properties.DataController.DataSet) then
      cmbCod_receita.Hint := cmbCod_receita.Properties.DataController.DataSet.FieldByName('texto').AsString;
end;

procedure TfrmCadEstoque.cxDBTextEdit7Click(Sender: TObject);
begin
   Configurar;
end;

procedure TfrmCadEstoque.dbNavButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
   if AButtonIndex in[6,9] then
      cmbSessao.SetFocus;
end;


procedure TfrmCadEstoque.Definir_Tabela_Sped(cst: integer);
begin
;
end;

procedure TfrmCadEstoque.DS1DataChange(Sender: TObject; Field: TField);
begin
   inherited;
   Configurar;
end;

procedure TfrmCadEstoque.DS1StateChange(Sender: TObject);
begin
   inherited;
   if Assigned(DS1.DataSet) then
   begin
      btnReplicar.Enabled := not (DS1.DataSet.State in [dsEdit,dsInsert]);

      if btnReplicar.Enabled then
         Configurar;
   end;
end;

procedure TfrmCadEstoque.edGTINExit(Sender: TObject);
begin
   Gerar_Codigo_Barras;
end;

procedure TfrmCadEstoque.edPesqEnter(Sender: TObject);
begin
   inherited;
   cbEditar.Checked := False;
   cbEditar.OnClick(cbEditar);
end;

procedure TfrmCadEstoque.edPesqPropertiesChange(Sender: TObject);
VAR
   s: string;
begin
   if Trim(edPesq.Text) = C_ST_VAZIO then
      DS1.DataSet.Close
   else
   begin
      if coluna.DataBinding.FieldName <> 'cod_gtin' then//se nao � gtin
      begin
         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
            begin
               dm.QEstoque.Open(C_SQL67 + Gerar_Filtro + ' order by ' + coluna.DataBinding.FieldName);
            end
            else
            begin
               s := BuscaTroca(C_SQL68, C_SOH,  Gerar_Filtro + ' and ' + coluna.DataBinding.FieldName);
               s := BuscaTroca(s, C_ETX, edPesq.Text);
               s := BuscaTroca(s, C_EOT, coluna.DataBinding.FieldName);
               dm.QEstoque.Open(s);
            end;
         end
         else
         begin
            if DS1.DataSet.Active then
               DS1.DataSet.Locate(coluna.DataBinding.FieldName, Trim(edPesq.Text), [loCaseInsensitive, loPartialKey]);
         end;
      end
      else//se � gtin
      begin
         if Length(trim(edPesq.Text))=1 then
         begin
            if trim(edPesq.Text) = C_CORINGA then
               ShowMessage('Pesquisa por este campo requer informa��o espec�fica.');
         end
         else//faz a busca a aprtir do menor tamanho do cod gtin configurado no aplicativo
         if Length(edPesq.Text) >= DM_INI.INI.StoredValue['tam_min_cod_item'] then
         begin
            s := BuscaTroca(C_SQL69, C_ETX, edPesq.Text);
            DM.QEstoque.Open(s);
         end;
      end;
   end;
end;

procedure TfrmCadEstoque.FormCreate(Sender: TObject);
begin
   tbvmedicam_principio_atv.Visible := DM_INI.INI.StoredValue['modo_farmacia'];
   inherited;
   Editando := false;
   DM.QEstoque.Open('select * from estoque order by id desc limit 1');
   DM.QEstoque_Info_compl.Open;
   DM.QAliq.Open;
   DM.QSessao.Open;
   DM.QUnidade.Open;
   DM.QSped_CST_Tabela.Open;
   DM.QSped_Tabela.Open;
   DM.QEmpresa.Open;

   if DM.QEmpresaindativ.Value < 2 then
   begin
      cmbCst.Properties.ListSource := DM.dsQCSOSN;
      DM.QCSOSN.Open;
      Label20.Caption :='CSOSN';
      cmbCst.Hint     := 'Para venda use 101, 102, 103, 300, 400 ou 500';
   end
   else
   DM.QCST.Open;

   if DM_INI.INI.StoredValue['modo_farmacia'] then //acrescenta as op��es no cmbOpPesq
   begin
      cmbOpPesq.Properties.Items.Append('SOMENTE CONTROLADOS (4)');
      CmbOpPesq.Properties.Items.Append('SOMENTE ANTIMICROBIANOS (5)');

      if DM_INI.INI.StoredValue['modo_farmacia_popular'] then
         CmbOpPesq.Properties.Items.Append('SOMENTE FARM. POPULAR (6)');
   end
   else
   begin
      if (DM_INI.INI.StoredValue['modo_outros'])and(DM_INI.INI.StoredValue['prefix_cod_balanca']>0) then
         CmbOpPesq.Properties.Items.Append('SOMENTE PROD. BALAN�A (7)');

      TabMedic.TabVisible := False;
   end;

   //popula o cmbSessaoPesq
   DMConn.Q1.Open('select concat(nome," (",id, ")") from sessao order by nome');

   while not DMConn.Q1.Eof do
   begin
      cmbSessaoPesq.Properties.Items.Add(DMConn.Q1.Fields[0].AsString);
      DMConn.Q1.Next;
   end;

   cmbSessaoPesq.Text := cmbSessaoPesq.Properties.Items[0];
   TabCad.TabVisible := True;
end;

procedure TfrmCadEstoque.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  case key of
     VK_F2: if (btnAssociar.Visible)and(btnAssociar.Enabled) then btnAssociar.Click;
     VK_F3: if (btnReplicar.Visible)and(btnReplicar.Enabled) then btnReplicar.Click;
  end;
end;

procedure TfrmCadEstoque.FormShow(Sender: TObject);
begin
  inherited;
  if TabCad.Visible then
     cmbSessao.SetFocus;
     //editando � true se vem da entrada de nf
  if (Editando)and not (DM.QEstoque.State in  [dsinsert,dsedit]) then
     DS1.DataSet.Edit;
end;

function TfrmCadEstoque.Gerar_Filtro: string;//complemento do script SQL de pesquisa
const
   c = 'where suspenso=''N''';
var
   i: integer;
begin
   i := StrToIntDef(Number(cmbOpPesq.Text), 0);
   case i of
      0: Result := c;
      1: Result := c + ' and sessao=' + QuotedStr(Number(cmbSessaoPesq.Text)) + ' ';
      2: Result := ' where suspenso=''S''';
      3: Result := c + ' and length(medicam_portaria)>=2 ';
      4: Result := c + ' and medicam_portaria=''AM'' ';
      5: Result := c + ' and medicam_vrms>0 ';
     // 8: Result := c + ' and medicam_principio_atv like '+ Texto_Mysql(edPesq.Text + '%');
   end;
end;

procedure TfrmCadEstoque.Gerar_Codigo_Barras;
begin
   if (DS1.DataSet.State in [dsinsert, dsedit]) then
   begin
      if(DM.QEstoquecod_gtin.AsString = C_ST_VAZIO) then //se esta vazio
      begin
          if (DM.QEstoquesessao.AsInteger=0) then
          begin
             cmbSessao.SetFocus;
             raise Exception.Create('Informe a sess�o.');
          end;

          if (DM.QEstoquedestinacao.AsString = '') then
          begin
             cmbDestinacao.SetFocus;
             raise Exception.Create('Informe a destina��o.');
          end;

         if DM_INI.INI.StoredValue['gerar_gtin'] then //gera o GTIN conforme configurado no aplicativo
            DM.QEstoquecod_gtin.AsString := DM.Gerar_CodBarra_GTIN
         else //gera o codigo sequencial
            DM.QEstoquecod_gtin.AsString := DM.Gerar_CodBarra_Sequencia;
      end;

    {  //verifica se o cod ja existe
      if DM.Verificar_Duplicidade('', 'estoque', 'cod_gtin','', DM.QEstoquecod_gtin.AsString,'') then
      begin
         ShowMessage('J� existe um produto com este c�digo GTIN.');
         DM.QEstoquecod_gtin.AsString := C_ST_VAZIO;
         edGTIN.SetFocus;
      end
      else }
{      if DM_INI.INI.StoredValue['modo_farmacia'] then
         Achar_Medic;}
   end;
end;

procedure TfrmCadEstoque.TabCadShow(Sender: TObject);
begin
   inherited;
   pgOpc.ActivePage := TabImpostos;
end;

procedure TfrmCadEstoque.TabPesqShow(Sender: TObject);
var
   i: integer;
begin
   inherited;
   coluna := tbv.Columns[0];

   for i := 0 to tbv.ColumnCount - 1 do
   if tbv.Columns[i].Tag = 1 then
      coluna := tbv.Columns[i];

  lblPesq.Caption := C_190 + coluna.Caption;
  edpesq.SetFocus;
end;

procedure TfrmCadEstoque.tbvCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if not cbEditar.Checked then
  begin
     inherited;
     cbEditar.Checked := False;
  end;
end;

procedure TfrmCadEstoque.tbvcod_gtinHeaderClick(Sender: TObject);
var
   i: integer;
begin
  ds1.DataSet.close;

  for i := 0 to tbv.ColumnCount - 1 do
      tbv.Columns[i].Tag := 0;

  coluna := TcxGridDBColumn(Sender);
  TcxGridDBColumn(Sender).Tag := 1;
  lblPesq.Caption := C_190 + coluna.Caption;
  (DS1.DataSet as TFDQuery).IndexFieldNames := coluna.DataBinding.FieldName;
  edPesq.Clear;
  edpesq.SetFocus;
end;

end.



















