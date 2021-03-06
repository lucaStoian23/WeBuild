package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class InfoFornitore {

    public static final BrowserElement CodiceFiscale = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--partitaiva-inner")});
    public static final BrowserElement EmailContatto = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputEmail-inner")});
    public static final BrowserElement LinguaggioButton = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--lingua-arrow")});
    public static final BrowserElement ULLinguaggio = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--lingua-popup-list-listUl")});
    public static final BrowserElement ValutaDiRiferimentoButton = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--iCurrency-vhi")});
    public static final BrowserElement ValutaDiRiferimentoCerca = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-searchField-I")});
    public static final BrowserElement ValutaDiRiferimentoLente = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-searchField-search")});
    public static final BrowserElement ValutaDiRiferimentoDDL = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--nationDialog-list-listUl")});
    public static final BrowserElement SitoWeb = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--infosupplierblock-Collapsed--website-inner")});
    public static final BrowserElement InviaProposta = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--_IDGenButton1")});
    public static final BrowserElement AggiungiCommodity = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--commodityprojectblock-Collapsed--id_suppliercommodityblocktab_Table_HeaderToolbar_ButtonAddNew")});
    public static final BrowserElement AggiungiProgetti = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--commodityprojectblock-Collapsed--id_supplierprojectblocktab_Table_HeaderToolbar_ButtonAddNew-content")});
    public static final BrowserElement CommodityArrow = new BrowserElement(new By[]{By.xpath("//span[@id='iCommodity-arrow']")});
    public static final BrowserElement ULCommodity = new BrowserElement(new By[]{By.xpath("//ul[@id='iCommodity-popup-list-listUl']")});
    public static final BrowserElement RegistraCommodity = new BrowserElement(new By[]{By.id("id_SupplierAddCommodityFormCTAButtonSave")});
    public static final BrowserElement ProgettoArrow = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormSelectProject-arrow")});
    public static final BrowserElement ULProgetto = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormSelectProject-popup-list-listUl")});
    public static final BrowserElement RegistraProgetto = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormCTAButtonSave")});
    public static final BrowserElement NuovoContatto = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--contactblock-Collapsed--idNewUsrBtn")});
    public static final BrowserElement NomeContatto = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputName-inner")});
    public static final BrowserElement CognomeContatto = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputSurname-inner")});
    public static final BrowserElement TelefonoContatto = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputPhone-inner")});
    public static final BrowserElement ArrowRuolo = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboRole-arrow")});
    public static final BrowserElement ULRuolo = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboRole-popup-list-listUl")});
    public static final BrowserElement ArrowTimezone = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboTimezone-arrow")});
    public static final BrowserElement ULTimezone = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboTimezone-popup-list-listUl")});
    public static final BrowserElement ArrowContattoPrimario = new BrowserElement(new By[]{By.id("id_SupplierCreateFormPC-arrow")});
    public static final BrowserElement ULContattoPrimario = new BrowserElement(new By[]{By.id("id_SupplierCreateFormPC-popup-list-listUl")});
    public static final BrowserElement SalvaContatto = new BrowserElement(new By[]{By.id("_IDSupplierCreateFormCTAButtonSave")});

    public static final BrowserElement TornaIndietro = new BrowserElement(new By[]{By.xpath("//a[@id='shell-header-logo']")});

    public static final BrowserElement OperationalOffices = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Offices')]")});

    public static final BrowserElement NuovoUfficioOperativo = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--idNewUsrBtn")});
    public static final BrowserElement NomeUfficioOperativo = new BrowserElement(new By[]{By.id("SupplierCreateOfficeInputName-inner")});
    public static final BrowserElement TipoIndirizzoArrow = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboTipo-arrow")});
    public static final BrowserElement ULTipoIndirizzo = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboTipo-popup-list-listUl")});
    public static final BrowserElement NazioneButton = new BrowserElement(new By[]{By.id("iOfficeNation-vhi")});
    public static final BrowserElement CreateOperationOficeSerachInputField = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-searchField-I']")});
    public static final BrowserElement CreateOperationOficeSerachLenteIngradimento = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPSupplierCreation-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-searchField-search']")});
    public static final BrowserElement ULNazione = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--nationDialog-list-listUl")});
    public static final BrowserElement Indirizzo = new BrowserElement(new By[]{By.id("SupplierCreateOfficeInputAddress-inner")});
    public static final BrowserElement CodicePostale = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboPostalCode-inner")});
    public static final BrowserElement Citta = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboCity-inner")});
    public static final BrowserElement ProvinciaButton = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierEditFormInputLocal-vhi']")});
    public static final BrowserElement ULProvincia = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPSupplierCreation-Display-component---SupplierCreationData--operationalofficesblock-Collapsed--selectDialog2-list-listUl']")});
    public static final BrowserElement SalvaUfficioOperativo = new BrowserElement(new By[]{By.xpath("_IDGenButton1x")});
    public static final BrowserElement OK = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'OK')]")});
    public static final BrowserElement SubmitProposal = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Submit Proposal')]")});
    public static final BrowserElement Salva = new BrowserElement(new By[]{By.xpath("//bdi[text()='Save']")});

    // Allego file

    public static final BrowserElement AddDocumentButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add document']")});
    public static final BrowserElement AttachmentName = new BrowserElement(new By[]{By.xpath("//input[@id='id_SupplierCreateAttachmentInputName-inner']")});
    public static final BrowserElement AttachmentDescription = new BrowserElement(new By[]{By.xpath("//textarea[@id='id_SupplierCreateAttachmentInputDescription-inner']")});
    public static final BrowserElement AttachmentFileName = new BrowserElement(new By[]{By.xpath("//input[@id='fuSupplierCreate-fu_input-inner']")});
    public static final BrowserElement AddButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add']")});
    public static final BrowserElement Matita = new BrowserElement(new By[]{By.xpath("//span[@data-sap-ui-icon-content='\uE038']")});

}

