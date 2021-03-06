package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

/**
 * Info-Fornitore si può usare solo continuando la registrazione del fornitore, quindi senza uscire da tile "Nuovo Fornitore"
 * Se si esce da questa tile e si vuole modificare l'anagrafica fornitore, bisogna usare AnagraficaFornitore
 */
public class AnagraficaFornitore {
    public static final BrowserElement EmailContatto = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateFormInputEmail-inner']")});
    public static final BrowserElement LinguaggioButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--lingua-arrow']")});
    public static final BrowserElement ULLinguaggio = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--lingua-popup-list-listUl']")});
    public static final BrowserElement ValutaDiRiferimentoButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--iCurrency-vhi']")});
    public static final BrowserElement ValutaDiRiferimentoCerca = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-searchField-I']")});
    public static final BrowserElement ValutaDiRiferimentoLente = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-searchField-search']")});
    public static final BrowserElement ValutaDiRiferimentoDDL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-list-listUl']")});
    public static final BrowserElement SitoWeb = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierCreationData--infosupplierblock-Collapsed--website-inner']")});
    public static final BrowserElement InviaProposta = new BrowserElement(new By[]{By.xpath("//bdi[text()='Submit Proposal']")});
    public static final BrowserElement AttachmentTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Attachments']")});
    public static final BrowserElement AggiungiCommodity = new BrowserElement(new By[]{By.xpath("//button[@id='application-NPPFornitori-Display-component---SupplierCreationData--commodityprojectblock-Collapsed--id_suppliercommodityblocktab_Table_HeaderToolbar_ButtonAddNew']")});
    public static final BrowserElement AggiungiProgetti = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPFornitori-Display-component---SupplierCreationData--commodityprojectblock-Collapsed--id_supplierprojectblocktab_Table_HeaderToolbar_ButtonAddNew-content']")});
    public static final BrowserElement CommodityArrow = new BrowserElement(new By[]{By.xpath("//span[@id='iCommodity-arrow']")});
    public static final BrowserElement ULCommodity = new BrowserElement(new By[]{By.xpath("//ul[@id='iCommodity-popup-list-listUl']")});
    public static final BrowserElement RegistraCommodity = new BrowserElement(new By[]{By.xpath("//button[@id='id_SupplierAddCommodityFormCTAButtonSave']")});
    public static final BrowserElement ProgettoArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierAddProjectFormSelectProject-arrow']")});
    public static final BrowserElement ULProgetto = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierAddProjectFormSelectProject-popup-list-listUl']")});
    public static final BrowserElement RegistraProgetto = new BrowserElement(new By[]{By.xpath("//button[@id='id_SupplierAddProjectFormCTAButtonSave']")});
    public static final BrowserElement NuovoContatto = new BrowserElement(new By[]{By.xpath("//button[@id='application-NPPFornitori-Display-component---SupplierCreationData--contactblock-Collapsed--idNewUsrBtn']")});
    public static final BrowserElement NomeContatto = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateFormInputName-inner']")});
    public static final BrowserElement CognomeContatto = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateFormInputSurname-inner']")});
    public static final BrowserElement TelefonoContatto = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateFormInputPhone-inner']")});
    public static final BrowserElement ArrowRuolo = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateFormComboRole-arrow']")});
    public static final BrowserElement ULRuolo = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateFormComboRole-popup-list-listUl']")});
    public static final BrowserElement ArrowTimezone = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateFormComboTimezone-arrow']")});
    public static final BrowserElement ULTimezone = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateFormComboTimezone-popup-list-listUl']")});
    public static final BrowserElement ArrowContattoPrimario = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateFormPC-arrow']")});
    public static final BrowserElement ULContattoPrimario = new BrowserElement(new By[]{By.id("id_SupplierCreateFormPC-popup-list-listUl")});
    public static final BrowserElement SalvaContatto = new BrowserElement(new By[]{By.xpath("//button[@id='_IDSupplierCreateFormCTAButtonSave']")});
    public static final BrowserElement TornaIndietro = new BrowserElement(new By[]{By.xpath("//a[@id='shell-header-logo']")});
    public static final BrowserElement NuovoUfficioOperativo = new BrowserElement(new By[]{By.xpath("//button[@id='application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--idNewUsrBtn']")});
    public static final BrowserElement NomeUfficioOperativo = new BrowserElement(new By[]{By.xpath("//input[@id='SupplierCreateOfficeInputName-inner']")});
    public static final BrowserElement TipoIndirizzoArrow = new BrowserElement(new By[]{By.xpath("//span[@id='SupplierCreateOfficeComboTipo-arrow']")});
    public static final BrowserElement ULTipoIndirizzo = new BrowserElement(new By[]{By.xpath("//ul[@id='SupplierCreateOfficeComboTipo-popup-list-listUl']")});
    public static final BrowserElement NazioneButton = new BrowserElement(new By[]{By.xpath("//span[@id='iOfficeNation-vhi' and @role='button']")});
    public static final BrowserElement NazioneInput = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-searchField-I]")});
    public static final BrowserElement ULNazione = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-list-listUl")});
    public static final BrowserElement Indirizzo = new BrowserElement(new By[]{By.id("SupplierCreateOfficeInputAddress-inner")});
    public static final BrowserElement CodicePostale = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboPostalCode-inner")});
    public static final BrowserElement Citta = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboCity-inner")});
    public static final BrowserElement ProvinciaButton = new BrowserElement(new By[]{By.id("SupplierCreateOfficeLocal-vhi")});
    public static final BrowserElement ProvinciaInput = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--selectDialog2-searchField-I")});
    public static final BrowserElement ULProvincia = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--selectDialog2-list-listUl")});
    public static final BrowserElement SalvaUfficioOperativo = new BrowserElement(new By[]{By.id("_IDGenButton1x")});
    public static final BrowserElement SubmitProposal = new BrowserElement(new By[]{By.xpath("//bdi[text()='Submit Proposal']")});
    public static final BrowserElement PartitaIVASalva = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--partitaiva-inner']")});

    public static final BrowserElement Salva = new BrowserElement(new By[]{By.id("_IDGenButton1x-inner")});
//tab contact
    public static final BrowserElement TabContact = new BrowserElement(new By[]{By.xpath("//bdi[text()='Contact']")});
    public static final BrowserElement NuovoContattoTabContact = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--contactblock-Collapsed--idNewUsrBtn")});
//tab commodities and projects
public static final BrowserElement TabCommodityAndProject = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--ObjectPageLayout-anchBar-application-NPPFornitori-Display-component---SupplierData--commodityproject-anchor")});

    public static final BrowserElement AggiungiCommodityTabCommodity = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--commodityprojectblock-Collapsed--id_suppliercommodityblocktab_Table_HeaderToolbar_ButtonAddNew")});
    public static final BrowserElement AggiungiProgettiTabCommodity = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--commodityprojectblock-Collapsed--id_supplierprojectblocktab_Table_HeaderToolbar_ButtonAddNew-content")});
//tab request
public static final BrowserElement TabRequest = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--ObjectPageLayout-anchBar-application-NPPFornitori-Display-component---SupplierData--request-anchor")});
    public static final BrowserElement AddRequest = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--requestblock-Collapsed--_IDGenButton1")});


    //tab attachement
    public static final BrowserElement AddDocumentButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add document']")});
    public static final BrowserElement AttachmentName = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateAttachmentInputName-inner']")});
    public static final BrowserElement AttachmentDescription = new BrowserElement(new By[]{By.xpath("//textarea[@id='id_SupplierCreateAttachmentInputDescription-inner']")});
    public static final BrowserElement AttachmentFileName = new BrowserElement(new By[]{By.xpath("//input[ @type='file' and @id='fuSupplierCreate-fu']")});
    public static final BrowserElement AttachFileButton = new BrowserElement(new By[]{By.xpath("//bdi[@id='fuSupplierCreate-fu_button-BDI-content']")});
    public static final BrowserElement AddButton = new BrowserElement(new By[]{By.xpath("//button//bdi[@id='_IDSupplierCreateAttachmentCTAButtonSave-BDI-content']")});
    public static final BrowserElement CancelButton = new BrowserElement(new By[]{By.xpath("//button//bdi[@id='_IDSupplierCreateAttachmentCTAButtonCancel-BDI-content']")});
    public static final BrowserElement CreateOperationOficeSerachInputField = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-searchField-I']")});
    public static final BrowserElement CreateOperationOficeSerachLenteIngradimento = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPFornitori-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-searchField-search']")});
    public static final BrowserElement StatusRegisteredAFC = new BrowserElement(new By[]{By.xpath("//span[text()='Registered AFC']")});
    public static final BrowserElement StatusProsposed = new BrowserElement(new By[]{By.xpath("//span[text()='Proposed']")});
    public static final BrowserElement StatusRegistered = new BrowserElement(new By[]{By.xpath("//span[text()='Registered']")});

    // Tab Attachement in update
    public static final BrowserElement AttachmentsTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Attachments']")});
    public static final BrowserElement AddDocumentButtonUpdate = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPFornitori-Display-component---SupplierData--attachmentblock-Collapsed--_IDGenButton1-BDI-content' and text()='Add document']")});

    // Tab Operational Officies

    public static final BrowserElement OperationalOfficesTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Operational Offices']")});
    public static final BrowserElement AddOperationalOfficesButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add operational office']")});
    public static final BrowserElement OperationsOfficeName = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateOfficeInputName-inner']")});
    public static final BrowserElement AddressTypeArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateOfficeComboTipo-arrow']")});
    public static final BrowserElement AddressTypeUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateOfficeComboTipo-popup-list-listUl']")});
    public static final BrowserElement CountryButton = new BrowserElement(new By[]{By.xpath("//span[@id='SupplierCreateOfficeComboNation-vhi']")});
    public static final BrowserElement CountrySearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-searchField-I']")});
    public static final BrowserElement CountryLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-searchField-search']")});
    public static final BrowserElement CountryUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-list-listUl']")});
    public static final BrowserElement Address = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateOfficeInputAddress-inner']")});
    public static final BrowserElement PostalCode = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateOfficeComboPostalCode-inner']")});
    public static final BrowserElement City = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateOfficeComboCity-inner']")});
    public static final BrowserElement ProvinceButton = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateOfficeLocal-vhi']")});
    public static final BrowserElement ProvinceUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-list-listUl']")}); //56
    public static final BrowserElement ProvinceSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-searchField-I']")});
    public static final BrowserElement ProvinceLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-searchField-search']")});
    public static final BrowserElement OperetionsOfficeSave = new BrowserElement(new By[]{By.xpath("//bdi[text()='Save']")});

// Eco Finance
    public static final BrowserElement EcoFinanceTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Eco Finance']")});
    public static final BrowserElement EcoFinanceAddData = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add data']")});
    public static final BrowserElement EvaluationYear = new BrowserElement(new By[]{By.xpath("//input[@id='_IDGenMaskInput1-inner']")});
    public static final BrowserElement CurrencyArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateEcofinInputCurrency-arrow']")});
    public static final BrowserElement CurrencyUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateEcofinInputCurrency-popup-list-listUl']")});
    public static final BrowserElement IncomeOperationsLastAvailableYear = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputOperatRev0-inner']")});
    public static final BrowserElement IncomeOperationsYear1 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputOperatRev1-inner']")});
    public static final BrowserElement IncomeOperationsYear2 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputOperatRev2-inner']")});
    public static final BrowserElement EBITDALastAvailableYear = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitda0-inner']")});
    public static final BrowserElement EBITDAYear1 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitda1-inner']")});
    public static final BrowserElement EBITDAYear2 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitda2-inner']")});
    public static final BrowserElement EBITDAMarginLastAvailableYear = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitdaMargin0-inner']")});
    public static final BrowserElement EBITDAMarginYear1 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitdaMargin1-inner']")});
    public static final BrowserElement EBITDAMarginYear2 = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateEcofinInputEbitdaMargin2-inner']")});
    public static final BrowserElement SaveButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Save']")});
    public static final BrowserElement EchoFinanceUpdateButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Update info']")});
    public static final BrowserElement EchoFinanceUpdateButtonManually = new BrowserElement(new By[]{By.xpath("//bdi[text()='Manually']")});

    // Request General
    public static final BrowserElement RejectedCheck = new BrowserElement(new By[]{By.xpath("//span[text()='Rejected']")});
    public static final BrowserElement ApprovedCheck = new BrowserElement(new By[]{By.xpath("//span[text()='Approved']")});
    public static final BrowserElement RegisteredWithRequestOfInformationCheck = new BrowserElement(new By[]{By.xpath("//span[text()='Registered with request for information']")});
    public static final BrowserElement RequestsTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Requests']")});
    public static final BrowserElement AddRequestButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add Request']")});
    public static final BrowserElement AddRequestArrow = new BrowserElement(new By[]{By.xpath("//span[@id='IDAddReqDialog--id_SupplierCreateRequestComboTipo-arrow']")});
    public static final BrowserElement AddRequestUL = new BrowserElement(new By[]{By.xpath("//ul[@id='IDAddReqDialog--id_SupplierCreateRequestComboTipo-popup-list-listUl']")});
    public static final BrowserElement EnterProjectUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateRequestInsertProjectAFC-popup-list-listUl']")});

    // Request SuppliersFromAfc
    public static final BrowserElement AddRequestNotes = new BrowserElement(new By[]{By.xpath("//textarea[@id='IDAddReqDialog--id_SupplierCreateRequestInputNote5-inner']")});
    public static final BrowserElement AddRequestEnterProject = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--id_SupplierCreateRequestInsertProjectAFC-inner']")});
    public static final BrowserElement AddRequestCommodityButton = new BrowserElement(new By[]{By.xpath("//span[@id='IDAddReqDialog--id_SupplierCreateRequestInsertCommodityAFC-vhi']")});
    public static final BrowserElement AddRequestCommodiryUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--requestblock-Collapsed--selectDialogCommodity-list-listUl']")});
    public static final BrowserElement AddRequestAddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});
    public static final BrowserElement AddRequestFileAdd = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--_IDGenFileUploader2-fu']")});
    public static final BrowserElement AddRequestFileDesc = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--_IDGenInput2-inner']")});

    // Request Revoked
    public static final BrowserElement ReasonRevokedArrow = new BrowserElement(new By[]{By.xpath("//span[@id='IDAddReqDialog--id_SupplierCreateRequestSelectReason-arrow']")});
    public static final BrowserElement ReasonRevokedUL = new BrowserElement(new By[]{By.xpath("//ul[@id='IDAddReqDialog--id_SupplierCreateRequestSelectReason-popup-list-listUl']")});
    public static final BrowserElement RevokedNotes = new BrowserElement(new By[]{By.xpath("//textarea[@id='IDAddReqDialog--id_SupplierCreateRequestInputNote3-inner']")});
    public static final BrowserElement RevokedProject = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--id_SupplierCreateRequestInsertProject-inner']")});
    public static final BrowserElement RevokedCommodityButton = new BrowserElement(new By[]{By.xpath("//span[@id='IDAddReqDialog--id_SupplierCreateRequestInsertCommodity-vhi']")});
    public static final BrowserElement RevokedCommodityUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--requestblock-Collapsed--selectDialogCommodity-list-listUl']")});
    public static final BrowserElement RevokedFile = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--fuSupplierCreateREV-fu']")});
    public static final BrowserElement RevokedAddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});

    // Request Ceased

    public static final BrowserElement CeasedNotes = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--id_SupplierCreateRequestInputNote-inner']")});
    public static final BrowserElement CeasedAddFile = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--fuSupplierCreateCF-fu']")});
    public static final BrowserElement CeasedFileDescription = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--id_SupplierCreateRequestAttachDesc-inner']")});
    public static final BrowserElement CeasedAddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});

    // Request Duplicaded


    public static final BrowserElement DuplicatedNotes = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--_IDGenTextArea1-inner']")});
    public static final BrowserElement DuplicatedAddFile = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--_IDGenFileUploader3-fu']")});
    public static final BrowserElement DuplicateFileDescription = new BrowserElement(new By[]{By.xpath("//input[@id='IDAddReqDialog--_IDGenInput3-inner']")});
    public static final BrowserElement DuplicateAddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});


    // Qualification Tab

    public static final BrowserElement QualificationTab = new BrowserElement(new By[]{By.xpath("//bdi[text()='Qualification']")});
    public static final BrowserElement QualificationAddSurvey = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add Survey']")});
    public static final BrowserElement CommodityQualificationButton = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateQuestComboCommodity-vhi']")});
    public static final BrowserElement CommodityQualificationSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPFornitori-Display-component---SupplierData--qualificationblock-Collapsed--selectDialogCommodity-searchField-I']")});
    public static final BrowserElement CommodityQualificationLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPFornitori-Display-component---SupplierData--qualificationblock-Collapsed--selectDialogCommodity-searchField-search']")});
    public static final BrowserElement CommodityQualificationUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--qualificationblock-Collapsed--selectDialogCommodity-list-listUl']")});
    public static final BrowserElement QualificationProjectArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateQuestComboProject-arrow']")});
    public static final BrowserElement QualificationProjectUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateQuestComboProject-popup-list-listUl']")});
    public static final BrowserElement QualificationRegionArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierCreateQuestComboRegion-arrow']")});
    public static final BrowserElement QualificationRegionUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierCreateQuestComboRegion-popup-list-listUl']")});
    public static final BrowserElement QualificationSearch = new BrowserElement(new By[]{By.xpath("//bdi[text()='Search']")});
    public static final BrowserElement QualificationAddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});



}
