object DM_NFE: TDM_NFE
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 530
  Width = 606
  object NFe1: TACBrNFe
    OnStatusChange = NFe1StatusChange
    Configuracoes.Geral.SSLLib = libCapicomDelphiSoap
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpIndy
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.WebServices.UF = 'MG'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.Tentativas = 3
    Configuracoes.WebServices.IntervaloTentativas = 2000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = DANFE
    Left = 60
    Top = 64
  end
  object QNF: TFDQuery
    AfterInsert = QNFAfterInsert
    AfterPost = QNFAfterPost
    Connection = DB
    SQL.Strings = (
      'select * from nf order by id desc limit 1;')
    Left = 428
    Top = 4
    object QNFid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNFIde_cNF: TIntegerField
      FieldName = 'Ide_cNF'
      Origin = 'Ide_cNF'
      DisplayFormat = '000000'
    end
    object QNFIde_natOp: TStringField
      FieldName = 'Ide_natOp'
      Origin = 'Ide_natOp'
      Size = 60
    end
    object QNFIde_indPag: TIntegerField
      FieldName = 'Ide_indPag'
      Origin = 'Ide_indPag'
    end
    object QNFIde_modelo: TIntegerField
      FieldName = 'Ide_modelo'
      Origin = 'Ide_modelo'
    end
    object QNFIde_serie: TIntegerField
      FieldName = 'Ide_serie'
      Origin = 'Ide_serie'
      DisplayFormat = '000'
    end
    object QNFIde_nNF: TIntegerField
      FieldName = 'Ide_nNF'
      Origin = 'Ide_nNF'
    end
    object QNFIde_tpNF: TIntegerField
      FieldName = 'Ide_tpNF'
      Origin = 'Ide_tpNF'
    end
    object QNFIde_dEmi: TDateTimeField
      FieldName = 'Ide_dEmi'
      Origin = 'Ide_dEmi'
      EditMask = '!00/00/0000 00:00;1;_'
    end
    object QNFIde_dSaiEnt: TDateTimeField
      FieldName = 'Ide_dSaiEnt'
      Origin = 'Ide_dSaiEnt'
      EditMask = '!00/00/0000 00:00;1;_'
    end
    object QNFIde_tpEmis: TIntegerField
      FieldName = 'Ide_tpEmis'
      Origin = 'Ide_tpEmis'
    end
    object QNFIde_tpAmb: TIntegerField
      FieldName = 'Ide_tpAmb'
      Origin = 'Ide_tpAmb'
    end
    object QNFIde_verProc: TStringField
      FieldName = 'Ide_verProc'
      Origin = 'Ide_verProc'
    end
    object QNFIde_cUF: TIntegerField
      FieldName = 'Ide_cUF'
      Origin = 'Ide_cUF'
    end
    object QNFIde_cMunFG: TStringField
      FieldName = 'Ide_cMunFG'
      Origin = 'Ide_cMunFG'
      Size = 60
    end
    object QNFIde_finNFe: TIntegerField
      FieldName = 'Ide_finNFe'
      Origin = 'Ide_finNFe'
    end
    object QNFIde_dhCont: TDateField
      FieldName = 'Ide_dhCont'
      Origin = 'Ide_dhCont'
    end
    object QNFIde_xJust: TStringField
      FieldName = 'Ide_xJust'
      Origin = 'Ide_xJust'
      Size = 250
    end
    object QNFEmit_CNPJCPF: TStringField
      FieldName = 'Emit_CNPJCPF'
      Origin = 'Emit_CNPJCPF'
    end
    object QNFEmit_IE: TStringField
      FieldName = 'Emit_IE'
      Origin = 'Emit_IE'
    end
    object QNFEmit_xNome: TStringField
      FieldName = 'Emit_xNome'
      Origin = 'Emit_xNome'
      Size = 60
    end
    object QNFEmit_xFant: TStringField
      FieldName = 'Emit_xFant'
      Origin = 'Emit_xFant'
      Size = 60
    end
    object QNFEmit_EnderEmit_fone: TStringField
      FieldName = 'Emit_EnderEmit_fone'
      Origin = 'Emit_EnderEmit_fone'
      Size = 14
    end
    object QNFmit_EnderEmit_CEP: TStringField
      FieldName = 'mit_EnderEmit_CEP'
      Origin = 'mit_EnderEmit_CEP'
      Size = 8
    end
    object QNFEmit_EnderEmit_xLgr: TStringField
      FieldName = 'Emit_EnderEmit_xLgr'
      Origin = 'Emit_EnderEmit_xLgr'
      Size = 60
    end
    object QNFEmit_EnderEmit_nro: TStringField
      FieldName = 'Emit_EnderEmit_nro'
      Origin = 'Emit_EnderEmit_nro'
      Size = 60
    end
    object QNFEmit_EnderEmit_xCpl: TStringField
      FieldName = 'Emit_EnderEmit_xCpl'
      Origin = 'Emit_EnderEmit_xCpl'
      Size = 60
    end
    object QNFEmit_EnderEmit_xBairro: TStringField
      FieldName = 'Emit_EnderEmit_xBairro'
      Origin = 'Emit_EnderEmit_xBairro'
      Size = 60
    end
    object QNFEmit_EnderEmit_cMun: TIntegerField
      FieldName = 'Emit_EnderEmit_cMun'
      Origin = 'Emit_EnderEmit_cMun'
    end
    object QNFEmit_EnderEmit_xMun: TStringField
      FieldName = 'Emit_EnderEmit_xMun'
      Origin = 'Emit_EnderEmit_xMun'
      Size = 60
    end
    object QNFEmit_EnderEmit_UF: TStringField
      FieldName = 'Emit_EnderEmit_UF'
      Origin = 'Emit_EnderEmit_UF'
      Size = 2
    end
    object QNFEmit_enderEmit_cPais: TIntegerField
      FieldName = 'Emit_enderEmit_cPais'
      Origin = 'Emit_enderEmit_cPais'
    end
    object QNFEmit_enderEmit_xPais: TStringField
      FieldName = 'Emit_enderEmit_xPais'
      Origin = 'Emit_enderEmit_xPais'
      Size = 60
    end
    object QNFEmit_IEST: TStringField
      FieldName = 'Emit_IEST'
      Origin = 'Emit_IEST'
      Size = 14
    end
    object QNFEmit_IM: TStringField
      FieldName = 'Emit_IM'
      Origin = 'Emit_IM'
      Size = 15
    end
    object QNFEmit_CNAE: TStringField
      FieldName = 'Emit_CNAE'
      Origin = 'Emit_CNAE'
      Size = 7
    end
    object QNFEmit_CRT: TIntegerField
      FieldName = 'Emit_CRT'
      Origin = 'Emit_CRT'
    end
    object QNFDest_CNPJCPF: TStringField
      FieldName = 'Dest_CNPJCPF'
      Origin = 'Dest_CNPJCPF'
    end
    object QNFDest_IE: TStringField
      FieldName = 'Dest_IE'
      Origin = 'Dest_IE'
    end
    object QNFDest_xNome: TStringField
      FieldName = 'Dest_xNome'
      Origin = 'Dest_xNome'
      Size = 60
    end
    object QNFDest_EnderDest_Fone: TStringField
      FieldName = 'Dest_EnderDest_Fone'
      Origin = 'Dest_EnderDest_Fone'
    end
    object QNFDest_EnderDest_CEP: TStringField
      FieldName = 'Dest_EnderDest_CEP'
      Origin = 'Dest_EnderDest_CEP'
      Size = 10
    end
    object QNFDest_EnderDest_xLgr: TStringField
      FieldName = 'Dest_EnderDest_xLgr'
      Origin = 'Dest_EnderDest_xLgr'
      Size = 60
    end
    object QNFDest_EnderDest_nro: TStringField
      FieldName = 'Dest_EnderDest_nro'
      Origin = 'Dest_EnderDest_nro'
      Size = 60
    end
    object QNFDest_EnderDest_xCpl: TStringField
      FieldName = 'Dest_EnderDest_xCpl'
      Origin = 'Dest_EnderDest_xCpl'
      Size = 60
    end
    object QNFDest_EnderDest_xBairro: TStringField
      FieldName = 'Dest_EnderDest_xBairro'
      Origin = 'Dest_EnderDest_xBairro'
      Size = 60
    end
    object QNFDest_EnderDest_cMun: TIntegerField
      FieldName = 'Dest_EnderDest_cMun'
      Origin = 'Dest_EnderDest_cMun'
    end
    object QNFDest_EnderDest_xMun: TStringField
      FieldName = 'Dest_EnderDest_xMun'
      Origin = 'Dest_EnderDest_xMun'
      Size = 60
    end
    object QNFDest_EnderDest_UF: TStringField
      FieldName = 'Dest_EnderDest_UF'
      Origin = 'Dest_EnderDest_UF'
      Size = 2
    end
    object QNFDest_ISUF: TStringField
      FieldName = 'Dest_ISUF'
      Origin = 'Dest_ISUF'
    end
    object QNFDest_EnderDest_cPais: TIntegerField
      FieldName = 'Dest_EnderDest_cPais'
      Origin = 'Dest_EnderDest_cPais'
    end
    object QNFDest_EnderDest_xPais: TStringField
      FieldName = 'Dest_EnderDest_xPais'
      Origin = 'Dest_EnderDest_xPais'
      Size = 60
    end
    object QNFRetirada_CNPJCPF: TStringField
      FieldName = 'Retirada_CNPJCPF'
      Origin = 'Retirada_CNPJCPF'
    end
    object QNFRetirada_xLgr: TStringField
      FieldName = 'Retirada_xLgr'
      Origin = 'Retirada_xLgr'
      Size = 60
    end
    object QNFRetirada_nro: TStringField
      FieldName = 'Retirada_nro'
      Origin = 'Retirada_nro'
      Size = 60
    end
    object QNFRetirada_xCpl: TStringField
      FieldName = 'Retirada_xCpl'
      Origin = 'Retirada_xCpl'
      Size = 60
    end
    object QNFRetirada_xBairro: TStringField
      FieldName = 'Retirada_xBairro'
      Origin = 'Retirada_xBairro'
      Size = 60
    end
    object QNFRetirada_cMun: TIntegerField
      FieldName = 'Retirada_cMun'
      Origin = 'Retirada_cMun'
    end
    object QNFRetirada_xMun: TStringField
      FieldName = 'Retirada_xMun'
      Origin = 'Retirada_xMun'
      Size = 60
    end
    object QNFRetirada_UF: TStringField
      FieldName = 'Retirada_UF'
      Origin = 'Retirada_UF'
      Size = 2
    end
    object QNFEntrega_CNPJCPF: TStringField
      FieldName = 'Entrega_CNPJCPF'
      Origin = 'Entrega_CNPJCPF'
    end
    object QNFEntrega_xLgr: TStringField
      FieldName = 'Entrega_xLgr'
      Origin = 'Entrega_xLgr'
      Size = 60
    end
    object QNFEntrega_nro: TStringField
      FieldName = 'Entrega_nro'
      Origin = 'Entrega_nro'
      Size = 60
    end
    object QNFEntrega_xCpl: TStringField
      FieldName = 'Entrega_xCpl'
      Origin = 'Entrega_xCpl'
      Size = 60
    end
    object QNFEntrega_xBairro: TStringField
      FieldName = 'Entrega_xBairro'
      Origin = 'Entrega_xBairro'
      Size = 60
    end
    object QNFEntrega_cMun: TIntegerField
      FieldName = 'Entrega_cMun'
      Origin = 'Entrega_cMun'
    end
    object QNFEntrega_xMun: TStringField
      FieldName = 'Entrega_xMun'
      Origin = 'Entrega_xMun'
      Size = 60
    end
    object QNFEntrega_UF: TStringField
      FieldName = 'Entrega_UF'
      Origin = 'Entrega_UF'
      Size = 2
    end
    object QNFmodFrete: TIntegerField
      FieldName = 'modFrete'
      Origin = 'modFrete'
    end
    object QNFTransporta_CNPJCPF: TStringField
      FieldName = 'Transporta_CNPJCPF'
      Origin = 'Transporta_CNPJCPF'
    end
    object QNFTransporta_xNome: TStringField
      FieldName = 'Transporta_xNome'
      Origin = 'Transporta_xNome'
      Size = 60
    end
    object QNFTransporta_IE: TStringField
      FieldName = 'Transporta_IE'
      Origin = 'Transporta_IE'
    end
    object QNFTransporta_xEnder: TStringField
      FieldName = 'Transporta_xEnder'
      Origin = 'Transporta_xEnder'
      Size = 60
    end
    object QNFTransporta_xMun: TStringField
      FieldName = 'Transporta_xMun'
      Origin = 'Transporta_xMun'
      Size = 60
    end
    object QNFTransporta_UF: TStringField
      FieldName = 'Transporta_UF'
      Origin = 'Transporta_UF'
      Size = 2
    end
    object QNFretvServ: TFloatField
      FieldName = 'retvServ'
      Origin = 'retvServ'
      DisplayFormat = '0.00'
    end
    object QNFretvBCRet: TFloatField
      FieldName = 'retvBCRet'
      Origin = 'retvBCRet'
      DisplayFormat = '0.00'
    end
    object QNFretpICMSRet: TFloatField
      FieldName = 'retpICMSRet'
      Origin = 'retpICMSRet'
      DisplayFormat = '0.00'
    end
    object QNFretvICMSRet: TFloatField
      FieldName = 'retvICMSRet'
      Origin = 'retvICMSRet'
      DisplayFormat = '0.00'
    end
    object QNFretCFOP: TStringField
      FieldName = 'retCFOP'
      Origin = 'retCFOP'
      Size = 4
    end
    object QNFretcMunFG: TIntegerField
      FieldName = 'retcMunFG'
      Origin = 'retcMunFG'
    end
    object QNFveicplaca: TStringField
      FieldName = 'veicplaca'
      Origin = 'veicplaca'
      Size = 10
    end
    object QNFveicUF: TStringField
      FieldName = 'veicUF'
      Origin = 'veicUF'
      Size = 2
    end
    object QNFveicRNTC: TStringField
      FieldName = 'veicRNTC'
      Origin = 'veicRNTC'
    end
    object QNFnFat: TStringField
      FieldName = 'nFat'
      Origin = 'nFat'
      Size = 60
    end
    object QNFvOrig: TFloatField
      FieldName = 'vOrig'
      Origin = 'vOrig'
      DisplayFormat = '0.00'
    end
    object QNFvDesc: TFloatField
      FieldName = 'vDesc'
      Origin = 'vDesc'
      DisplayFormat = '0.00'
    end
    object QNFvLiq: TFloatField
      FieldName = 'vLiq'
      Origin = 'vLiq'
      DisplayFormat = '0.00'
    end
    object QNFinfAdFisco: TMemoField
      FieldName = 'infAdFisco'
      Origin = 'infAdFisco'
      BlobType = ftMemo
    end
    object QNFinfCpl: TMemoField
      FieldName = 'infCpl'
      Origin = 'infCpl'
      BlobType = ftMemo
    end
    object QNFICMSTot_vBC: TFloatField
      FieldName = 'ICMSTot_vBC'
      Origin = 'ICMSTot_vBC'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vICMS: TFloatField
      FieldName = 'ICMSTot_vICMS'
      Origin = 'ICMSTot_vICMS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vBCST: TFloatField
      FieldName = 'ICMSTot_vBCST'
      Origin = 'ICMSTot_vBCST'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vST: TFloatField
      FieldName = 'ICMSTot_vST'
      Origin = 'ICMSTot_vST'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vProd: TFloatField
      FieldName = 'ICMSTot_vProd'
      Origin = 'ICMSTot_vProd'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vFrete: TFloatField
      FieldName = 'ICMSTot_vFrete'
      Origin = 'ICMSTot_vFrete'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vSeg: TFloatField
      FieldName = 'ICMSTot_vSeg'
      Origin = 'ICMSTot_vSeg'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vDesc: TFloatField
      FieldName = 'ICMSTot_vDesc'
      Origin = 'ICMSTot_vDesc'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vII: TFloatField
      FieldName = 'ICMSTot_vII'
      Origin = 'ICMSTot_vII'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vIPI: TFloatField
      FieldName = 'ICMSTot_vIPI'
      Origin = 'ICMSTot_vIPI'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vPIS: TFloatField
      FieldName = 'ICMSTot_vPIS'
      Origin = 'ICMSTot_vPIS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vCOFINS: TFloatField
      FieldName = 'ICMSTot_vCOFINS'
      Origin = 'ICMSTot_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vOutro: TFloatField
      FieldName = 'ICMSTot_vOutro'
      Origin = 'ICMSTot_vOutro'
      DisplayFormat = '0.00'
    end
    object QNFICMSTot_vNF: TFloatField
      FieldName = 'ICMSTot_vNF'
      Origin = 'ICMSTot_vNF'
      DisplayFormat = '0.00'
    end
    object QNFISSQNtot_vServ: TFloatField
      FieldName = 'ISSQNtot_vServ'
      Origin = 'ISSQNtot_vServ'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vBC: TFloatField
      FieldName = 'ISSQNTot_vBC'
      Origin = 'ISSQNTot_vBC'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vISS: TFloatField
      FieldName = 'ISSQNTot_vISS'
      Origin = 'ISSQNTot_vISS'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vPIS: TFloatField
      FieldName = 'ISSQNTot_vPIS'
      Origin = 'ISSQNTot_vPIS'
      DisplayFormat = '0.00'
    end
    object QNFISSQNTot_vCOFINS: TFloatField
      FieldName = 'ISSQNTot_vCOFINS'
      Origin = 'ISSQNTot_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetPIS: TFloatField
      FieldName = 'retTrib_vRetPIS'
      Origin = 'retTrib_vRetPIS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetCOFINS: TFloatField
      FieldName = 'retTrib_vRetCOFINS'
      Origin = 'retTrib_vRetCOFINS'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetCSLL: TFloatField
      FieldName = 'retTrib_vRetCSLL'
      Origin = 'retTrib_vRetCSLL'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vBCIRRF: TFloatField
      FieldName = 'retTrib_vBCIRRF'
      Origin = 'retTrib_vBCIRRF'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vIRRF: TFloatField
      FieldName = 'retTrib_vIRRF'
      Origin = 'retTrib_vIRRF'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vBCRetPrev: TFloatField
      FieldName = 'retTrib_vBCRetPrev'
      Origin = 'retTrib_vBCRetPrev'
      DisplayFormat = '0.00'
    end
    object QNFretTrib_vRetPrev: TFloatField
      FieldName = 'retTrib_vRetPrev'
      Origin = 'retTrib_vRetPrev'
      DisplayFormat = '0.00'
    end
    object QNFvTotTrib: TFloatField
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
    end
    object QNFmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNFhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNFstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object QNFIde_hSaiEnt: TTimeField
      FieldName = 'Ide_hSaiEnt'
      Origin = 'Ide_hSaiEnt'
    end
    object QNFinfCpl_Dig: TMemoField
      FieldName = 'infCpl_Dig'
      Origin = 'infCpl_Dig'
      BlobType = ftMemo
    end
    object QNFid_venda: TMemoField
      FieldName = 'id_venda'
      Origin = 'id_venda'
      BlobType = ftMemo
    end
    object QNFIde_Presencial: TIntegerField
      FieldName = 'Ide_Presencial'
      Origin = 'Ide_Presencial'
    end
    object QNFIde_Cons_Final: TIntegerField
      FieldName = 'Ide_Cons_Final'
      Origin = 'Ide_Cons_Final'
    end
    object QNFDest_IndIEDest: TIntegerField
      FieldName = 'Dest_IndIEDest'
      Origin = 'Dest_IndIEDest'
    end
  end
  object QNF_Item: TFDQuery
    AfterInsert = QNF_ItemAfterInsert
    BeforePost = QNF_ItemBeforePost
    AfterPost = QNF_ItemAfterPost
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item where nf=:id')
    Left = 428
    Top = 56
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Itemid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Itemnf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ItemnItem: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ITEM'
      FieldName = 'nItem'
      Origin = 'nItem'
      DisplayFormat = '000'
    end
    object QNF_ItemcProd: TStringField
      Alignment = taRightJustify
      DisplayLabel = 'C'#211'D.'
      FieldName = 'cProd'
      Origin = 'cProd'
      Size = 60
    end
    object QNF_ItemcEAN: TStringField
      DisplayLabel = 'C'#211'D GTIN'
      FieldName = 'cEAN'
      Origin = 'cEAN'
    end
    object QNF_ItemxProd: TStringField
      DisplayLabel = 'DESCRI'#199#195'O DO PRODUTO/SERVI'#199'O'
      FieldName = 'xProd'
      Origin = 'xProd'
      Size = 120
    end
    object QNF_ItemNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
    object QNF_ItemCFOP: TStringField
      Alignment = taCenter
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 4
    end
    object QNF_ItemuCom: TStringField
      Alignment = taCenter
      DisplayLabel = 'UN'
      FieldName = 'uCom'
      Origin = 'uCom'
      Size = 6
    end
    object QNF_ItemqCom: TFloatField
      DisplayLabel = 'QTD'
      FieldName = 'qCom'
      Origin = 'qCom'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemvUnCom: TFloatField
      DisplayLabel = 'VR UNIT.'
      FieldName = 'vUnCom'
      Origin = 'vUnCom'
      currency = True
    end
    object QNF_ItemvProd: TFloatField
      DisplayLabel = 'TOTAL'
      FieldName = 'vProd'
      Origin = 'vProd'
      currency = True
    end
    object QNF_ItemcEANTrib: TStringField
      FieldName = 'cEANTrib'
      Origin = 'cEANTrib'
    end
    object QNF_ItemuTrib: TStringField
      FieldName = 'uTrib'
      Origin = 'uTrib'
      Size = 6
    end
    object QNF_ItemqTrib: TFloatField
      FieldName = 'qTrib'
      Origin = 'qTrib'
    end
    object QNF_ItemvUnTrib: TFloatField
      FieldName = 'vUnTrib'
      Origin = 'vUnTrib'
      currency = True
    end
    object QNF_ItemvOutro: TFloatField
      DisplayLabel = 'O.D.A'
      FieldName = 'vOutro'
      Origin = 'vOutro'
      currency = True
    end
    object QNF_ItemvFrete: TFloatField
      DisplayLabel = 'FRETE'
      FieldName = 'vFrete'
      Origin = 'vFrete'
      currency = True
    end
    object QNF_ItemvSeg: TFloatField
      DisplayLabel = 'SEGURO'
      FieldName = 'vSeg'
      Origin = 'vSeg'
      currency = True
    end
    object QNF_ItemvDesc: TFloatField
      DisplayLabel = 'DESC.'
      FieldName = 'vDesc'
      Origin = 'vDesc'
      currency = True
    end
    object QNF_IteminfAdProd: TMemoField
      FieldName = 'infAdProd'
      Origin = 'infAdProd'
      BlobType = ftMemo
    end
    object QNF_ItemICMS_vBC: TFloatField
      DisplayLabel = 'ICMS BC'
      FieldName = 'ICMS_vBC'
      Origin = 'ICMS_vBC'
      currency = True
    end
    object QNF_ItemICMS_CST: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'CST'
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      DisplayFormat = '00'
    end
    object QNF_ItemICMS_orig: TIntegerField
      Alignment = taCenter
      FieldName = 'ICMS_orig'
      Origin = 'ICMS_orig'
    end
    object QNF_ItemICMS_modBC: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'MOD. BC'
      FieldName = 'ICMS_modBC'
      Origin = 'ICMS_modBC'
    end
    object QNF_ItemICMS_pICMS: TFloatField
      DisplayLabel = 'ICMS (%)'
      FieldName = 'ICMS_pICMS'
      Origin = 'ICMS_pICMS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS: TFloatField
      DisplayLabel = 'ICMS ($)'
      FieldName = 'ICMS_vICMS'
      Origin = 'ICMS_vICMS'
      currency = True
    end
    object QNF_ItemICMS_CSOSN: TIntegerField
      FieldName = 'ICMS_CSOSN'
      Origin = 'ICMS_CSOSN'
    end
    object QNF_ItemICMS_pCredSN: TFloatField
      FieldName = 'ICMS_pCredSN'
      Origin = 'ICMS_pCredSN'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN: TFloatField
      FieldName = 'ICMS_vCredICMSSN'
      Origin = 'ICMS_vCredICMSSN'
      currency = True
    end
    object QNF_ItemICMS_modBCST: TIntegerField
      FieldName = 'ICMS_modBCST'
      Origin = 'ICMS_modBCST'
    end
    object QNF_ItemICMS_pMVAST: TFloatField
      FieldName = 'ICMS_pMVAST'
      Origin = 'ICMS_pMVAST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST: TFloatField
      FieldName = 'ICMS_vTabelaST'
      Origin = 'ICMS_vTabelaST'
      currency = True
    end
    object QNF_ItemICMS_pRedBCST: TFloatField
      FieldName = 'ICMS_pRedBCST'
      Origin = 'ICMS_pRedBCST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST: TFloatField
      FieldName = 'ICMS_vBCST'
      Origin = 'ICMS_vBCST'
      currency = True
    end
    object QNF_ItemICMS_pICMSST: TFloatField
      FieldName = 'ICMS_pICMSST'
      Origin = 'ICMS_pICMSST'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST: TFloatField
      FieldName = 'ICMS_vICMSST'
      Origin = 'ICMS_vICMSST'
      currency = True
    end
    object QNF_ItemICMS_pRedBC: TFloatField
      FieldName = 'ICMS_pRedBC'
      Origin = 'ICMS_pRedBC'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST: TIntegerField
      FieldName = 'IPI_CST'
      Origin = 'IPI_CST'
    end
    object QNF_ItemIPI_clEnq: TStringField
      FieldName = 'IPI_clEnq'
      Origin = 'IPI_clEnq'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd: TStringField
      FieldName = 'IPI_CNPJProd'
      Origin = 'IPI_CNPJProd'
    end
    object QNF_ItemIPI_cSelo: TStringField
      FieldName = 'IPI_cSelo'
      Origin = 'IPI_cSelo'
      Size = 60
    end
    object QNF_ItemIPI_qSelo: TIntegerField
      FieldName = 'IPI_qSelo'
      Origin = 'IPI_qSelo'
    end
    object QNF_ItemIPI_vBC: TFloatField
      FieldName = 'IPI_vBC'
      Origin = 'IPI_vBC'
      currency = True
    end
    object QNF_ItemIPI_qUnid: TFloatField
      FieldName = 'IPI_qUnid'
      Origin = 'IPI_qUnid'
    end
    object QNF_ItemIPI_vUnid: TFloatField
      FieldName = 'IPI_vUnid'
      Origin = 'IPI_vUnid'
      currency = True
    end
    object QNF_ItemIPI_pIPI: TFloatField
      FieldName = 'IPI_pIPI'
      Origin = 'IPI_pIPI'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI: TFloatField
      FieldName = 'IPI_vIPI'
      Origin = 'IPI_vIPI'
      currency = True
    end
    object QNF_ItemII_vBc: TFloatField
      FieldName = 'II_vBc'
      Origin = 'II_vBc'
      currency = True
    end
    object QNF_ItemII_vDespAdu: TFloatField
      FieldName = 'II_vDespAdu'
      Origin = 'II_vDespAdu'
      currency = True
    end
    object QNF_ItemII_vII: TFloatField
      FieldName = 'II_vII'
      Origin = 'II_vII'
      currency = True
    end
    object QNF_ItemII_vIOF: TFloatField
      FieldName = 'II_vIOF'
      Origin = 'II_vIOF'
      currency = True
    end
    object QNF_ItemPIS_CST: TIntegerField
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
    end
    object QNF_ItemPIS_vBC: TFloatField
      FieldName = 'PIS_vBC'
      Origin = 'PIS_vBC'
      currency = True
    end
    object QNF_ItemPIS_pPIS: TFloatField
      FieldName = 'PIS_pPIS'
      Origin = 'PIS_pPIS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS: TFloatField
      FieldName = 'PIS_vPIS'
      Origin = 'PIS_vPIS'
      currency = True
    end
    object QNF_ItemPIS_qBCProd: TFloatField
      FieldName = 'PIS_qBCProd'
      Origin = 'PIS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vAliqProd: TFloatField
      FieldName = 'PIS_vAliqProd'
      Origin = 'PIS_vAliqProd'
      currency = True
    end
    object QNF_ItemPISST_vBc: TFloatField
      FieldName = 'PISST_vBc'
      Origin = 'PISST_vBc'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_pPis: TFloatField
      FieldName = 'PISST_pPis'
      Origin = 'PISST_pPis'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_qBCProd: TFloatField
      FieldName = 'PISST_qBCProd'
      Origin = 'PISST_qBCProd'
      DisplayFormat = '0.00'
    end
    object QNF_ItemPISST_vAliqProd: TFloatField
      FieldName = 'PISST_vAliqProd'
      Origin = 'PISST_vAliqProd'
      currency = True
    end
    object QNF_ItemPISST_vPIS: TFloatField
      FieldName = 'PISST_vPIS'
      Origin = 'PISST_vPIS'
      currency = True
    end
    object QNF_ItemCOFINS_CST: TIntegerField
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
    end
    object QNF_ItemCOFINS_vBC: TFloatField
      FieldName = 'COFINS_vBC'
      Origin = 'COFINS_vBC'
      currency = True
    end
    object QNF_ItemCOFINS_pCOFINS: TFloatField
      FieldName = 'COFINS_pCOFINS'
      Origin = 'COFINS_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vCOFINS: TFloatField
      FieldName = 'COFINS_vCOFINS'
      Origin = 'COFINS_vCOFINS'
      currency = True
    end
    object QNF_ItemCOFINS_qBCProd: TFloatField
      FieldName = 'COFINS_qBCProd'
      Origin = 'COFINS_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vAliqProd: TFloatField
      FieldName = 'COFINS_vAliqProd'
      Origin = 'COFINS_vAliqProd'
      currency = True
    end
    object QNF_ItemCOFINSST_vBC: TFloatField
      FieldName = 'COFINSST_vBC'
      Origin = 'COFINSST_vBC'
      currency = True
    end
    object QNF_ItemCOFINSST_pCOFINS: TFloatField
      FieldName = 'COFINSST_pCOFINS'
      Origin = 'COFINSST_pCOFINS'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_qBCProd: TFloatField
      FieldName = 'COFINSST_qBCProd'
      Origin = 'COFINSST_qBCProd'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vAliqProd: TFloatField
      FieldName = 'COFINSST_vAliqProd'
      Origin = 'COFINSST_vAliqProd'
      currency = True
    end
    object QNF_ItemCOFINSST_vCOFINS: TFloatField
      FieldName = 'COFINSST_vCOFINS'
      Origin = 'COFINSST_vCOFINS'
      DisplayFormat = '0.00'
    end
    object QNF_ItemISSQN_vBC: TFloatField
      FieldName = 'ISSQN_vBC'
      Origin = 'ISSQN_vBC'
      currency = True
    end
    object QNF_ItemISSQN_vAliq: TFloatField
      FieldName = 'ISSQN_vAliq'
      Origin = 'ISSQN_vAliq'
      currency = True
    end
    object QNF_ItemISSQN_vISSQN: TFloatField
      FieldName = 'ISSQN_vISSQN'
      Origin = 'ISSQN_vISSQN'
      currency = True
    end
    object QNF_ItemISSQN_cMunFG: TIntegerField
      FieldName = 'ISSQN_cMunFG'
      Origin = 'ISSQN_cMunFG'
    end
    object QNF_ItemISSQN_cListServ: TIntegerField
      FieldName = 'ISSQN_cListServ'
      Origin = 'ISSQN_cListServ'
    end
    object QNF_ItemISSQN_SitTrib: TIntegerField
      FieldName = 'ISSQN_SitTrib'
      Origin = 'ISSQN_SitTrib'
    end
    object QNF_ItemICMS_vBCSTRet: TFloatField
      FieldName = 'ICMS_vBCSTRet'
      Origin = 'ICMS_vBCSTRet'
      currency = True
    end
    object QNF_ItemICMS_vICMSSTRet: TFloatField
      FieldName = 'ICMS_vICMSSTRet'
      Origin = 'ICMS_vICMSSTRet'
      currency = True
    end
    object QNF_ItemQTD: TFloatField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object QNF_ItemICMS_CST_inform: TIntegerField
      FieldName = 'ICMS_CST_inform'
      Origin = 'ICMS_CST_inform'
    end
    object QNF_ItemICMS_orig_inform: TIntegerField
      FieldName = 'ICMS_orig_inform'
      Origin = 'ICMS_orig_inform'
    end
    object QNF_ItemICMS_modBC_inform: TIntegerField
      FieldName = 'ICMS_modBC_inform'
      Origin = 'ICMS_modBC_inform'
    end
    object QNF_ItemICMS_vBC_inform: TFloatField
      FieldName = 'ICMS_vBC_inform'
      Origin = 'ICMS_vBC_inform'
      currency = True
    end
    object QNF_ItemICMS_pICMS_inform: TFloatField
      FieldName = 'ICMS_pICMS_inform'
      Origin = 'ICMS_pICMS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMS_inform: TFloatField
      FieldName = 'ICMS_vICMS_inform'
      Origin = 'ICMS_vICMS_inform'
      currency = True
    end
    object QNF_ItemICMS_CSOSN_inform: TIntegerField
      FieldName = 'ICMS_CSOSN_inform'
      Origin = 'ICMS_CSOSN_inform'
    end
    object QNF_ItemICMS_pCredSN_inform: TFloatField
      FieldName = 'ICMS_pCredSN_inform'
      Origin = 'ICMS_pCredSN_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vCredICMSSN_inform: TFloatField
      FieldName = 'ICMS_vCredICMSSN_inform'
      Origin = 'ICMS_vCredICMSSN_inform'
      currency = True
    end
    object QNF_ItemICMS_modBCST_inform: TIntegerField
      FieldName = 'ICMS_modBCST_inform'
      Origin = 'ICMS_modBCST_inform'
    end
    object QNF_ItemICMS_pMVAST_inform: TFloatField
      FieldName = 'ICMS_pMVAST_inform'
      Origin = 'ICMS_pMVAST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vTabelaST_inform: TFloatField
      FieldName = 'ICMS_vTabelaST_inform'
      Origin = 'ICMS_vTabelaST_inform'
      currency = True
    end
    object QNF_ItemICMS_pRedBCST_inform: TFloatField
      FieldName = 'ICMS_pRedBCST_inform'
      Origin = 'ICMS_pRedBCST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vBCST_inform: TFloatField
      FieldName = 'ICMS_vBCST_inform'
      Origin = 'ICMS_vBCST_inform'
      currency = True
    end
    object QNF_ItemICMS_pICMSST_inform: TFloatField
      FieldName = 'ICMS_pICMSST_inform'
      Origin = 'ICMS_pICMSST_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemICMS_vICMSST_inform: TFloatField
      FieldName = 'ICMS_vICMSST_inform'
      Origin = 'ICMS_vICMSST_inform'
      currency = True
    end
    object QNF_ItemICMS_pRedBC_inform: TFloatField
      FieldName = 'ICMS_pRedBC_inform'
      Origin = 'ICMS_pRedBC_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_CST_inform: TIntegerField
      FieldName = 'IPI_CST_inform'
      Origin = 'IPI_CST_inform'
    end
    object QNF_ItemIPI_clEnq_inform: TStringField
      FieldName = 'IPI_clEnq_inform'
      Origin = 'IPI_clEnq_inform'
      Size = 5
    end
    object QNF_ItemIPI_CNPJProd_inform: TStringField
      FieldName = 'IPI_CNPJProd_inform'
      Origin = 'IPI_CNPJProd_inform'
    end
    object QNF_ItemIPI_cSelo_inform: TStringField
      FieldName = 'IPI_cSelo_inform'
      Origin = 'IPI_cSelo_inform'
      Size = 60
    end
    object QNF_ItemIPI_qSelo_inform: TIntegerField
      FieldName = 'IPI_qSelo_inform'
      Origin = 'IPI_qSelo_inform'
    end
    object QNF_ItemIPI_cEnq_inform: TStringField
      FieldName = 'IPI_cEnq_inform'
      Origin = 'IPI_cEnq_inform'
      Size = 3
    end
    object QNF_ItemIPI_vBC_inform: TFloatField
      FieldName = 'IPI_vBC_inform'
      Origin = 'IPI_vBC_inform'
      currency = True
    end
    object QNF_ItemIPI_qUnid_inform: TFloatField
      FieldName = 'IPI_qUnid_inform'
      Origin = 'IPI_qUnid_inform'
    end
    object QNF_ItemIPI_vUnid_inform: TFloatField
      FieldName = 'IPI_vUnid_inform'
      Origin = 'IPI_vUnid_inform'
      currency = True
    end
    object QNF_ItemIPI_pIPI_inform: TFloatField
      FieldName = 'IPI_pIPI_inform'
      Origin = 'IPI_pIPI_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemIPI_vIPI_inform: TFloatField
      FieldName = 'IPI_vIPI_inform'
      Origin = 'IPI_vIPI_inform'
    end
    object QNF_ItemII_vBc_inform: TFloatField
      FieldName = 'II_vBc_inform'
      Origin = 'II_vBc_inform'
      currency = True
    end
    object QNF_ItemII_vDespAdu_inform: TFloatField
      FieldName = 'II_vDespAdu_inform'
      Origin = 'II_vDespAdu_inform'
      currency = True
    end
    object QNF_ItemII_vII_inform: TFloatField
      FieldName = 'II_vII_inform'
      Origin = 'II_vII_inform'
      currency = True
    end
    object QNF_ItemII_vIOF_inform: TFloatField
      FieldName = 'II_vIOF_inform'
      Origin = 'II_vIOF_inform'
      currency = True
    end
    object QNF_ItemPIS_CST_inform: TIntegerField
      FieldName = 'PIS_CST_inform'
      Origin = 'PIS_CST_inform'
    end
    object QNF_ItemPIS_vBC_inform: TFloatField
      FieldName = 'PIS_vBC_inform'
      Origin = 'PIS_vBC_inform'
      currency = True
    end
    object QNF_ItemPIS_pPIS_inform: TFloatField
      FieldName = 'PIS_pPIS_inform'
      Origin = 'PIS_pPIS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPIS_vPIS_inform: TFloatField
      FieldName = 'PIS_vPIS_inform'
      Origin = 'PIS_vPIS_inform'
      currency = True
    end
    object QNF_ItemPIS_qBCProd_inform: TFloatField
      FieldName = 'PIS_qBCProd_inform'
      Origin = 'PIS_qBCProd_inform'
    end
    object QNF_ItemPIS_vAliqProd_inform: TFloatField
      FieldName = 'PIS_vAliqProd_inform'
      Origin = 'PIS_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemPISST_vBc_inform: TFloatField
      FieldName = 'PISST_vBc_inform'
      Origin = 'PISST_vBc_inform'
      currency = True
    end
    object QNF_ItemPISST_pPis_inform: TFloatField
      FieldName = 'PISST_pPis_inform'
      Origin = 'PISST_pPis_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemPISST_qBCProd_inform: TFloatField
      FieldName = 'PISST_qBCProd_inform'
      Origin = 'PISST_qBCProd_inform'
    end
    object QNF_ItemPISST_vAliqProd_inform: TFloatField
      FieldName = 'PISST_vAliqProd_inform'
      Origin = 'PISST_vAliqProd_inform'
    end
    object QNF_ItemPISST_vPIS_inform: TFloatField
      FieldName = 'PISST_vPIS_inform'
      Origin = 'PISST_vPIS_inform'
      currency = True
    end
    object QNF_ItemCOFINS_CST_inform: TIntegerField
      FieldName = 'COFINS_CST_inform'
      Origin = 'COFINS_CST_inform'
    end
    object QNF_ItemCOFINS_vBC_inform: TFloatField
      FieldName = 'COFINS_vBC_inform'
      Origin = 'COFINS_vBC_inform'
      currency = True
    end
    object QNF_ItemCOFINS_pCOFINS_inform: TFloatField
      FieldName = 'COFINS_pCOFINS_inform'
      Origin = 'COFINS_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINS_vCOFINS_inform: TFloatField
      FieldName = 'COFINS_vCOFINS_inform'
      Origin = 'COFINS_vCOFINS_inform'
      currency = True
    end
    object QNF_ItemCOFINS_qBCProd_inform: TFloatField
      FieldName = 'COFINS_qBCProd_inform'
      Origin = 'COFINS_qBCProd_inform'
    end
    object QNF_ItemCOFINS_vAliqProd_inform: TFloatField
      FieldName = 'COFINS_vAliqProd_inform'
      Origin = 'COFINS_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_pCOFINS_inform: TFloatField
      FieldName = 'COFINSST_pCOFINS_inform'
      Origin = 'COFINSST_pCOFINS_inform'
      DisplayFormat = '0.00#'
    end
    object QNF_ItemCOFINSST_vBC_inform: TFloatField
      FieldName = 'COFINSST_vBC_inform'
      Origin = 'COFINSST_vBC_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_qBCProd_inform: TFloatField
      FieldName = 'COFINSST_qBCProd_inform'
      Origin = 'COFINSST_qBCProd_inform'
    end
    object QNF_ItemCOFINSST_vAliqProd_inform: TFloatField
      FieldName = 'COFINSST_vAliqProd_inform'
      Origin = 'COFINSST_vAliqProd_inform'
      currency = True
    end
    object QNF_ItemCOFINSST_vCOFINS_inform: TFloatField
      FieldName = 'COFINSST_vCOFINS_inform'
      Origin = 'COFINSST_vCOFINS_inform'
      currency = True
    end
    object QNF_ItemISSQN_vBC_inform: TFloatField
      FieldName = 'ISSQN_vBC_inform'
      Origin = 'ISSQN_vBC_inform'
      currency = True
    end
    object QNF_ItemISSQN_vAliq_inform: TFloatField
      FieldName = 'ISSQN_vAliq_inform'
      Origin = 'ISSQN_vAliq_inform'
      currency = True
    end
    object QNF_ItemISSQN_vISSQN_inform: TFloatField
      FieldName = 'ISSQN_vISSQN_inform'
      Origin = 'ISSQN_vISSQN_inform'
      currency = True
    end
    object QNF_ItemISSQN_cMunFG_inform: TIntegerField
      FieldName = 'ISSQN_cMunFG_inform'
      Origin = 'ISSQN_cMunFG_inform'
    end
    object QNF_ItemISSQN_cListServ_inform: TIntegerField
      FieldName = 'ISSQN_cListServ_inform'
      Origin = 'ISSQN_cListServ_inform'
    end
    object QNF_ItemISSQN_SitTrib_inform: TIntegerField
      FieldName = 'ISSQN_SitTrib_inform'
      Origin = 'ISSQN_SitTrib_inform'
    end
    object QNF_ItemICMS_vBCSTRet_inform: TFloatField
      FieldName = 'ICMS_vBCSTRet_inform'
      Origin = 'ICMS_vBCSTRet_inform'
      currency = True
    end
    object QNF_ItemICMS_vICMSSTRet_inform: TFloatField
      FieldName = 'ICMS_vICMSSTRet_inform'
      Origin = 'ICMS_vICMSSTRet_inform'
      currency = True
    end
    object QNF_ItemICMS_motDesICMS: TIntegerField
      FieldName = 'ICMS_motDesICMS'
      Origin = 'ICMS_motDesICMS'
    end
    object QNF_ItemICMS_motDesICMS_inform: TIntegerField
      FieldName = 'ICMS_motDesICMS_inform'
      Origin = 'ICMS_motDesICMS_inform'
    end
    object QNF_ItemvTotTrib: TFloatField
      FieldName = 'vTotTrib'
      Origin = 'vTotTrib'
      currency = True
    end
    object QNF_Itemmd5: TStringField
      FieldName = 'md5'
      Origin = 'md5'
      FixedChar = True
      Size = 32
    end
    object QNF_Itemhash: TStringField
      FieldName = 'hash'
      Origin = 'hash'
      FixedChar = True
      Size = 32
    end
    object QNF_ItemPIS_codrec: TIntegerField
      FieldName = 'PIS_codrec'
      Origin = 'PIS_codrec'
    end
    object QNF_ItemEXTIPI: TStringField
      FieldName = 'EXTIPI'
      Origin = 'EXTIPI'
      Size = 3
    end
    object QNF_ItemIPI_cEnq: TStringField
      FieldName = 'IPI_cEnq'
      Origin = 'IPI_cEnq'
      Size = 3
    end
    object QNF_Itembaixa_estoque: TStringField
      FieldName = 'baixa_estoque'
      Origin = 'baixa_estoque'
      FixedChar = True
      Size = 1
    end
  end
  object DSNF_Item: TDataSource
    DataSet = QNF_Item
    Left = 528
    Top = 56
  end
  object DSNF: TDataSource
    DataSet = QNF
    Left = 528
    Top = 4
  end
  object QNF_Duplicata: TFDQuery
    AutoCalcFields = False
    AfterInsert = QNF_DuplicataAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_duplicata where nf=:id')
    Left = 428
    Top = 160
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Duplicataid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Duplicatanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_DuplicatanDup: TStringField
      FieldName = 'nDup'
      Origin = 'nDup'
      Size = 60
    end
    object QNF_DuplicatavDup: TFloatField
      FieldName = 'vDup'
      Origin = 'vDup'
    end
    object QNF_DuplicatadVenc: TDateField
      FieldName = 'dVenc'
      Origin = 'dVenc'
    end
  end
  object QNF_Reboque: TFDQuery
    AfterInsert = QNF_ReboqueAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_reboque where nf=:id')
    Left = 428
    Top = 220
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Reboqueid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Reboquenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Reboqueplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
      Size = 10
    end
    object QNF_Reboqueuf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      Size = 2
    end
    object QNF_Reboquerntc: TStringField
      FieldName = 'rntc'
      Origin = 'rntc'
    end
    object QNF_Reboquevagao: TStringField
      FieldName = 'vagao'
      Origin = 'vagao'
    end
    object QNF_Reboquebalsa: TStringField
      FieldName = 'balsa'
      Origin = 'balsa'
    end
  end
  object QNF_Referenciada: TFDQuery
    AfterInsert = QNF_ReferenciadaAfterInsert
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_referenciada where nf=:id')
    Left = 428
    Top = 272
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Referenciadaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Referenciadanf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_ReferenciadarefNFe: TStringField
      FieldName = 'refNFe'
      Origin = 'refNFe'
      Size = 44
    end
    object QNF_ReferenciadaRefNF_cUF: TIntegerField
      FieldName = 'RefNF_cUF'
      Origin = 'RefNF_cUF'
    end
    object QNF_ReferenciadaRefNF_AAMM: TStringField
      FieldName = 'RefNF_AAMM'
      Origin = 'RefNF_AAMM'
      EditMask = '!00/00;0; '
      Size = 5
    end
    object QNF_ReferenciadaRefNF_CNPJ: TStringField
      FieldName = 'RefNF_CNPJ'
      Origin = 'RefNF_CNPJ'
    end
    object QNF_ReferenciadaRefNF_modelo: TIntegerField
      FieldName = 'RefNF_modelo'
      Origin = 'RefNF_modelo'
    end
    object QNF_ReferenciadaRefNF_serie: TIntegerField
      FieldName = 'RefNF_serie'
      Origin = 'RefNF_serie'
    end
    object QNF_ReferenciadaRefNF_nNF: TIntegerField
      FieldName = 'RefNF_nNF'
      Origin = 'RefNF_nNF'
    end
    object QNF_ReferenciadaRefNFP_cUF: TIntegerField
      FieldName = 'RefNFP_cUF'
      Origin = 'RefNFP_cUF'
    end
    object QNF_ReferenciadaRefNFP_AAMM: TStringField
      FieldName = 'RefNFP_AAMM'
      Origin = 'RefNFP_AAMM'
      EditMask = '!00/00;0; '
      Size = 5
    end
    object QNF_ReferenciadaRefNFP_CNPJCPF: TStringField
      FieldName = 'RefNFP_CNPJCPF'
      Origin = 'RefNFP_CNPJCPF'
    end
    object QNF_ReferenciadaRefNFP_IE: TStringField
      FieldName = 'RefNFP_IE'
      Origin = 'RefNFP_IE'
    end
    object QNF_ReferenciadaRefNFP_modelo: TStringField
      FieldName = 'RefNFP_modelo'
      Origin = 'RefNFP_modelo'
    end
    object QNF_ReferenciadaRefNFP_serie: TIntegerField
      FieldName = 'RefNFP_serie'
      Origin = 'RefNFP_serie'
    end
    object QNF_ReferenciadaRefNFP_nNF: TIntegerField
      FieldName = 'RefNFP_nNF'
      Origin = 'RefNFP_nNF'
    end
    object QNF_ReferenciadaRefECF_modelo: TIntegerField
      FieldName = 'RefECF_modelo'
      Origin = 'RefECF_modelo'
    end
    object QNF_ReferenciadaRefECF_nECF: TStringField
      FieldName = 'RefECF_nECF'
      Origin = 'RefECF_nECF'
      Size = 10
    end
    object QNF_ReferenciadaRefECF_nCOO: TStringField
      FieldName = 'RefECF_nCOO'
      Origin = 'RefECF_nCOO'
      Size = 10
    end
    object QNF_ReferenciadaRefCte: TStringField
      FieldName = 'RefCte'
      Origin = 'RefCte'
      Size = 44
    end
    object QNF_ReferenciadaRefECF_data: TDateField
      FieldName = 'RefECF_data'
      Origin = 'RefECF_data'
      DisplayFormat = 'DD/MM/YYYY'
      EditMask = '!99/99/0000;1; '
    end
    object QNF_ReferenciadaRefECF_Serie: TStringField
      FieldName = 'RefECF_Serie'
      Origin = 'RefECF_Serie'
    end
  end
  object QNF_Volume: TFDQuery
    AfterInsert = QNF_VolumeAfterInsert
    BeforeDelete = QNF_VolumeBeforeDelete
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_volumes where nf=:id')
    Left = 428
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Volumeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Volumenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_VolumeqVol: TIntegerField
      FieldName = 'qVol'
      Origin = 'qVol'
    end
    object QNF_Volumeespecie: TStringField
      FieldName = 'especie'
      Origin = 'especie'
      Size = 60
    end
    object QNF_Volumemarca: TStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 60
    end
    object QNF_VolumenVol: TStringField
      FieldName = 'nVol'
      Origin = 'nVol'
      Size = 60
    end
    object QNF_VolumepesoL: TFloatField
      FieldName = 'pesoL'
      Origin = 'pesoL'
      DisplayFormat = '0.00'
    end
    object QNF_VolumepesoB: TFloatField
      FieldName = 'pesoB'
      Origin = 'pesoB'
      DisplayFormat = '0.00'
    end
  end
  object QNF_Lacre: TFDQuery
    AfterInsert = QNF_LacreAfterInsert
    MasterSource = DSNF_Volume
    MasterFields = 'id'
    DetailFields = 'vol'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_vol_lacre where vol=:id')
    Left = 428
    Top = 392
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QNF_Lacreid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Lacrevol: TIntegerField
      FieldName = 'vol'
      Origin = 'vol'
    end
    object QNF_Lacrenlacre: TStringField
      FieldName = 'nlacre'
      Origin = 'nlacre'
      Size = 60
    end
  end
  object DSNF_Volume: TDataSource
    DataSet = QNF_Volume
    Left = 528
    Top = 336
  end
  object QNF_Chave: TFDQuery
    AfterInsert = QNF_ChaveAfterInsert
    BeforePost = QNF_ChaveBeforePost
    MasterSource = DSNF
    MasterFields = 'id'
    DetailFields = 'nf'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_chave where nf=:id')
    Left = 428
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = 1
      end>
    object QNF_Chaveid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Chavenf: TIntegerField
      FieldName = 'nf'
      Origin = 'nf'
    end
    object QNF_Chavechave: TStringField
      FieldName = 'chave'
      Origin = 'chave'
      Size = 50
    end
    object QNF_Chaverecibo: TStringField
      FieldName = 'recibo'
      Origin = 'recibo'
      Size = 50
    end
    object QNF_Chaveprotocolo: TStringField
      FieldName = 'protocolo'
      Origin = 'protocolo'
      Size = 50
    end
    object QNF_Chavecstat: TIntegerField
      FieldName = 'cstat'
      Origin = 'cstat'
    end
    object QNF_Chavestatus: TStringField
      FieldName = 'status'
      Origin = 'status'
    end
  end
  object DSNF_Chave: TDataSource
    DataSet = QNF_Chave
    Left = 528
    Top = 456
  end
  object QNF_Item_Med: TFDQuery
    AutoCalcFields = False
    AfterInsert = QNF_Item_MedAfterInsert
    MasterSource = DSNF_Item
    MasterFields = 'id'
    DetailFields = 'item'
    Connection = DB
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from nf_item_med where item=:id')
    Left = 428
    Top = 108
    ParamData = <
      item
        Name = 'ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QNF_Item_Medid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QNF_Item_Meditem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object QNF_Item_Mednlote: TStringField
      FieldName = 'nlote'
      Origin = 'nlote'
    end
    object QNF_Item_Medqlote: TFloatField
      FieldName = 'qlote'
      Origin = 'qlote'
    end
    object QNF_Item_Meddfab: TDateField
      FieldName = 'dfab'
      Origin = 'dfab'
    end
    object QNF_Item_Meddven: TDateField
      FieldName = 'dven'
      Origin = 'dven'
    end
    object QNF_Item_Medvpmc: TFloatField
      FieldName = 'vpmc'
      Origin = 'vpmc'
    end
  end
  object DSNF_Item_Med: TDataSource
    DataSet = QNF_Item
    Left = 528
    Top = 108
  end
  object DSNF_Duplicata: TDataSource
    DataSet = QNF_Duplicata
    Left = 528
    Top = 160
  end
  object DSNF_Reboque: TDataSource
    DataSet = QNF_Reboque
    Left = 528
    Top = 224
  end
  object drvSQLite: TFDPhysSQLiteDriverLink
    Left = 66
    Top = 10
  end
  object DB: TFDConnection
    Params.Strings = (
      'Database=C:\PROJETOS\AUTOCOM\BIN\DAT\NFE\autocom.nfe'
      'LockingMode=Normal'
      'DriverID=SQLite')
    FetchOptions.AssignedValues = [evRowsetSize]
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 16
    Top = 10
  end
  object DSNF_Lacre: TDataSource
    DataSet = QNF_Lacre
    Left = 528
    Top = 400
  end
  object DSNF_Referenciada: TDataSource
    DataSet = QNF_Referenciada
    Left = 528
    Top = 280
  end
  object QCfg: TFDQuery
    AfterOpen = QCfgAfterOpen
    AfterPost = QCfgAfterPost
    Connection = DB
    SQL.Strings = (
      'select * from cfg limit 1')
    Left = 284
    Top = 60
    object QCfgCfg_Certif_NmroSerie: TStringField
      FieldName = 'Cfg_Certif_NmroSerie'
      Origin = 'Cfg_Certif_NmroSerie'
      Size = 50
    end
    object QCfgCfg_Geral_FormaEmissao: TStringField
      FieldName = 'Cfg_Geral_FormaEmissao'
      Origin = 'Cfg_Geral_FormaEmissao'
      Size = 1
    end
    object QCfgCfg_Geral_finNFe: TStringField
      FieldName = 'Cfg_Geral_finNFe'
      Origin = 'Cfg_Geral_finNFe'
      Size = 1
    end
    object QCfgCfg_Geral_tpImp: TStringField
      FieldName = 'Cfg_Geral_tpImp'
      Origin = 'Cfg_Geral_tpImp'
      Size = 1
    end
    object QCfgCfg_Geral_Salvar: TBooleanField
      FieldName = 'Cfg_Geral_Salvar'
      Origin = 'Cfg_Geral_Salvar'
    end
    object QCfgCfg_Geral_PathSalvar: TStringField
      FieldName = 'Cfg_Geral_PathSalvar'
      Origin = 'Cfg_Geral_PathSalvar'
      Size = 300
    end
    object QCfgCfg_Geral_PathSchemas: TStringField
      FieldName = 'Cfg_Geral_PathSchemas'
      Origin = 'Cfg_Geral_PathSchemas'
      Size = 300
    end
    object QCfgCfg_Geral_PathLogs: TStringField
      FieldName = 'Cfg_Geral_PathLogs'
      Origin = 'Cfg_Geral_PathLogs'
      Size = 300
    end
    object QCfgCfg_WebServ_Ambiente: TStringField
      FieldName = 'Cfg_WebServ_Ambiente'
      Origin = 'Cfg_WebServ_Ambiente'
      Size = 1
    end
    object QCfgCfg_WebServ_Visualizar: TBooleanField
      FieldName = 'Cfg_WebServ_Visualizar'
      Origin = 'Cfg_WebServ_Visualizar'
    end
    object QCfgCfg_WebServ_ProxyHost: TStringField
      FieldName = 'Cfg_WebServ_ProxyHost'
      Origin = 'Cfg_WebServ_ProxyHost'
    end
    object QCfgCfg_WebServ_ProxyPort: TStringField
      FieldName = 'Cfg_WebServ_ProxyPort'
      Origin = 'Cfg_WebServ_ProxyPort'
    end
    object QCfgCfg_WebServ_ProxyUser: TStringField
      FieldName = 'Cfg_WebServ_ProxyUser'
      Origin = 'Cfg_WebServ_ProxyUser'
    end
    object QCfgCfg_WebServ_ProxyPass: TStringField
      FieldName = 'Cfg_WebServ_ProxyPass'
      Origin = 'Cfg_WebServ_ProxyPass'
    end
    object QCfgCfg_Arq_PastaMensal: TBooleanField
      FieldName = 'Cfg_Arq_PastaMensal'
      Origin = 'Cfg_Arq_PastaMensal'
    end
    object QCfgCfg_Arq_PathNFe: TStringField
      FieldName = 'Cfg_Arq_PathNFe'
      Origin = 'Cfg_Arq_PathNFe'
      Size = 300
    end
    object QCfgCfg_Arq_PathCan: TStringField
      FieldName = 'Cfg_Arq_PathCan'
      Origin = 'Cfg_Arq_PathCan'
      Size = 300
    end
    object QCfgCfg_Arq_PathDPEC: TStringField
      FieldName = 'Cfg_Arq_PathDPEC'
      Origin = 'Cfg_Arq_PathDPEC'
      Size = 300
    end
    object QCfgCfg_Arq_PathInu: TStringField
      FieldName = 'Cfg_Arq_PathInu'
      Origin = 'Cfg_Arq_PathInu'
      Size = 300
    end
    object QCfgCfg_Arq_Salvar: TBooleanField
      FieldName = 'Cfg_Arq_Salvar'
      Origin = 'Cfg_Arq_Salvar'
    end
    object QCfgDANFE_TipoDANFE: TStringField
      FieldName = 'DANFE_TipoDANFE'
      Origin = 'DANFE_TipoDANFE'
      Size = 1
    end
    object QCfgDANFE_Logo: TStringField
      FieldName = 'DANFE_Logo'
      Origin = 'DANFE_Logo'
      Size = 300
    end
    object QCfgDANFE_FastFile: TStringField
      FieldName = 'DANFE_FastFile'
      Origin = 'DANFE_FastFile'
      Size = 300
    end
    object QCfgDANFE_Email: TStringField
      FieldName = 'DANFE_Email'
      Origin = 'DANFE_Email'
      Size = 300
    end
    object QCfgDANFE_Site: TStringField
      FieldName = 'DANFE_Site'
      Origin = 'DANFE_Site'
      Size = 300
    end
    object QCfgDANFE_PathPDF: TStringField
      FieldName = 'DANFE_PathPDF'
      Origin = 'DANFE_PathPDF'
      Size = 300
    end
    object QCfgDANFE_ImprimirDescPorc: TBooleanField
      FieldName = 'DANFE_ImprimirDescPorc'
      Origin = 'DANFE_ImprimirDescPorc'
    end
    object QCfgDANFE_ImprimirTotalLiq: TBooleanField
      FieldName = 'DANFE_ImprimirTotalLiq'
      Origin = 'DANFE_ImprimirTotalLiq'
    end
    object QCfgDANFE_ImprimirDetalEspec: TBooleanField
      FieldName = 'DANFE_ImprimirDetalEspec'
      Origin = 'DANFE_ImprimirDetalEspec'
    end
    object QCfgDANFE_MostrarPreview: TBooleanField
      FieldName = 'DANFE_MostrarPreview'
      Origin = 'DANFE_MostrarPreview'
    end
    object QCfgDANFE_MostrarStatus: TBooleanField
      FieldName = 'DANFE_MostrarStatus'
      Origin = 'DANFE_MostrarStatus'
    end
    object QCfgDANFE_TamFonte_DemaisCampos: TIntegerField
      FieldName = 'DANFE_TamFonte_DemaisCampos'
      Origin = 'DANFE_TamFonte_DemaisCampos'
    end
    object QCfgDANFE_CasasDecimais_qCom: TIntegerField
      FieldName = 'DANFE_CasasDecimais_qCom'
      Origin = 'DANFE_CasasDecimais_qCom'
    end
    object QCfgDANFE_CasasDecimais_vUnCom: TIntegerField
      FieldName = 'DANFE_CasasDecimais_vUnCom'
      Origin = 'DANFE_CasasDecimais_vUnCom'
    end
    object QCfgCfg_cNF: TIntegerField
      FieldName = 'Cfg_cNF'
      Origin = 'Cfg_cNF'
    end
    object QCfgCfg_SeqChave: TIntegerField
      FieldName = 'Cfg_SeqChave'
      Origin = 'Cfg_SeqChave'
    end
    object QCfgCfg_Serie_NF: TIntegerField
      FieldName = 'Cfg_Serie_NF'
      Origin = 'Cfg_Serie_NF'
    end
    object QCfgCfg_Lote: TIntegerField
      FieldName = 'Cfg_Lote'
      Origin = 'Cfg_Lote'
    end
    object QCfgCfg_Serv_host: TStringField
      FieldName = 'Cfg_Serv_host'
      Origin = 'Cfg_Serv_host'
      Size = 30
    end
    object QCfgCfg_Serv_User: TStringField
      FieldName = 'Cfg_Serv_User'
      Origin = 'Cfg_Serv_User'
      Size = 30
    end
    object QCfgCfg_Serv_Password: TStringField
      FieldName = 'Cfg_Serv_Password'
      Origin = 'Cfg_Serv_Password'
      Size = 30
    end
    object QCfgCfg_Serv_Database: TStringField
      FieldName = 'Cfg_Serv_Database'
      Origin = 'Cfg_Serv_Database'
      Size = 30
    end
    object QCfgDANFE_FastFile_Events: TStringField
      FieldName = 'DANFE_FastFile_Events'
      Origin = 'DANFE_FastFile_Events'
      Size = 300
    end
  end
  object Q1: TFDQuery
    Connection = DB
    Left = 284
    Top = 8
  end
  object DSCfg: TDataSource
    DataSet = QCfg
    Left = 344
    Top = 64
  end
  object QFEmissao: TFDQuery
    AfterOpen = QFEmissaoAfterOpen
    Connection = DB
    SQL.Strings = (
      'select * from femissao')
    Left = 284
    Top = 116
    object QFEmissaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QFEmissaonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 30
    end
    object QFEmissaocNF: TIntegerField
      FieldName = 'cNF'
      Origin = 'cNF'
    end
    object QFEmissaonNF: TIntegerField
      FieldName = 'nNF'
      Origin = 'nNF'
    end
    object QFEmissaoserie: TIntegerField
      FieldName = 'serie'
      Origin = 'serie'
    end
    object QFEmissaolote: TIntegerField
      FieldName = 'lote'
      Origin = 'lote'
    end
  end
  object DSFEmissao: TDataSource
    DataSet = QFEmissao
    Left = 344
    Top = 116
  end
  object DANFE: TACBrNFeDANFEFR
    ACBrNFe = NFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiSemGeracao
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    EspessuraBorda = 1
    ExibirTotalTributosItem = False
    ExibeCampoFatura = True
    TributosPercentual = ptValorProdutos
    ImprimirUnQtVlComercial = iuComercial
    Detalhado = False
    DescricaoViaEstabelec = 'Via do Consumidor'
    ExpandirDadosAdicionaisAuto = False
    ImprimirDadosArma = True
    QuebraLinhaEmDetalhamentoEspecifico = True
    IncorporarBackgroundPdf = True
    IncorporarFontesPdf = True
    ImprimirDadosDocReferenciados = True
    Left = 132
    Top = 64
  end
  object ADGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 147
    Top = 10
  end
end
