package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class RFX {
    //(new By[]{By.xpath("")});
    // controlli di pagina
    public static final BrowserElement RFXCreationPageCheck = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPNewRFX-Display-component---NewRFX--IDPageNewRFX-title-inner']")});
    public static final BrowserElement RFCCreationDeatailCheck = new BrowserElement(new By[]{By.xpath("//span[@id='__title0-inner']")});
    public static final BrowserElement RFCCreationDetailCheckFromRFXTable = new BrowserElement(new By[]{By.xpath("//span[@id='__title6-inner']")});
    public static final BrowserElement MyRFXCheckPage = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPMyRFX-Display-component---MyRFX--IDMyRFXST-header-inner']")});
    public static final BrowserElement AddVendorsPageCheck = new BrowserElement(new By[]{By.xpath("//h2[@id='IDVendorDialog--IDRFXVendorDialog-title']")});

    public static final BrowserElement EventTitle = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFX--IDNewRFXDescription-inner']")});
    public static final BrowserElement TenderCommodityArrow = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPNewRFX-Display-component---NewRFX--IDNewRFXCommodity-arrow']")});
    public static final BrowserElement TenderCommodityUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPNewRFX-Display-component---NewRFX--IDNewRFXCommodity-popup-list-listUl']")});
    public static final BrowserElement Notes = new BrowserElement(new By[]{By.xpath("//textarea[@id='__area0-inner']")});
    public static final BrowserElement Create = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPNewRFX-Display-component---NewRFX--IDNewRFXCreateBtn-BDI-content']")});
    public static final BrowserElement AggiungiRDA = new BrowserElement(new By[]{By.id("application-NPPNewRFX-Display-component---NewRFX--IDNewRFXAddBtn-inner")});
    public static final BrowserElement RFXHeader = new BrowserElement(new By[]{By.id("application-NPPNewRFX-Display-component---NewRFX--IDPageNewRFX-intHeader-BarPH")});
    public static final BrowserElement RFI = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'RFI')]")});
    public static final BrowserElement ProjectButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXProject-vhi']")});
    public static final BrowserElement ProjectSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectProject-searchField-I']")});
    public static final BrowserElement ProjectLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectProject-searchField-search']")});
    public static final BrowserElement ProjectUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectProject-list-listUl']")});
   // public static final BrowserElement CapexPL = new BrowserElement(new By[]{By.id("application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXCapex-inner")});

    public static final BrowserElement PRReleaseDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXRelease-inner']")});
    public static final BrowserElement AcceptanceOfPR = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXRDADate-inner']")});
    public static final BrowserElement PRDeliveryDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXPRDelivery-inner']")});
    public static final BrowserElement PlannedRFQPublishingDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXRFQPlan-inner']")});
    public static final BrowserElement PlannedReccomentation = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXRecoDate-inner']")});
    public static final BrowserElement ForecastReccomentation = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXRecoFore-inner']")});
    public static final BrowserElement ContractStartDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXContractStart-inner']")});
    public static final BrowserElement ContractEndDate = new BrowserElement (new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXContractEnd-inner']")});
    public static final BrowserElement PlannedDateOfSignature = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXContractSignedEnd-inner']")});
    public static final BrowserElement CurrencyButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXCurrency-vhi']")});
    public static final BrowserElement CurrencySearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectCurrency-searchField-I']")});
    public static final BrowserElement CurrencyLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectCurrency-searchField-search']")});
    public static final BrowserElement CurrencyUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPNewRFX-Display-component---NewRFXDetail--selectCurrency-list-listUl']")});
    public static final BrowserElement Budget = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXBudget-inner']")});
    public static final BrowserElement Forecast = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXForecast-inner']")});
    public static final BrowserElement InviaVendorListPerApprovazione = new BrowserElement(new By[]{By.xpath("//bdi[text()='Invia vendor list per approvazione']")});
    public static final BrowserElement WorkflowPreRFX = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDNewRFXDetailWorkflowTestBtn-BDI-content']")});
    public static final BrowserElement SaveAsDraft = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPNewRFX-Display-component---NewRFXDetail--IDSaveGenDataDraftBtn-BDI-content']")});

    public static final BrowserElement DataDiCreazione = new BrowserElement(new By[]{By.id("__text3")});
    public static final BrowserElement SortDescending = new BrowserElement(new By[]{By.id("__popover0-tb-btn_1-inner")});
    public static final BrowserElement RFXFirstChoice = new BrowserElement(new By[]{By.id("__item0-__clone85_cell1")});

    public static final BrowserElement VendorTickAll = new BrowserElement(new By[]{By.id("IDVendorDialog--tSuppliers-sa-CbBg")});

    public static final BrowserElement PreRFX = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXDetailObjectPage-anchBar-application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXVendorTab-anchor-inner']")});
    public static final BrowserElement PreRFXButton = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Add Vendors')]")});
    public static final BrowserElement AddVendorsSearch = new BrowserElement(new By[]{By.id("IDVendorDialog--searchSupplierField-I")});
    public static final BrowserElement AddVendorLents = new BrowserElement(new By[]{By.id("IDVendorDialog--searchSupplierField-search")});
    public static final BrowserElement AddVendorRegionFilter = new BrowserElement(new By[]{By.id("IDVendorDialog--panSl2-header")});
    public static final BrowserElement AddVendorSupplierStatusArrow = new BrowserElement(new By[]{By.xpath("//span[@id='IDVendorDialog--qualificationStatus-arrow']")});
    public static final BrowserElement AddVendorSupplierStatusUL = new BrowserElement(new By[]{By.id("IDVendorDialog--qualificationStatus-popup-list-listUl")});
    public static final BrowserElement AddVendorSearchButton = new BrowserElement(new By[]{By.id("__button48-inner")});

    public static final BrowserElement Vendor1 = new BrowserElement(new By[]{By.xpath("//span[text()='ABJ SISTEMI S.R.L.']/../..//input/..")});
    public static final BrowserElement Vendor2 = new BrowserElement(new By[]{By.xpath("//span[text()='Marco Coroniti SPA']/../..//input/..")});
    public static final BrowserElement Vendor3 = new BrowserElement(new By[]{By.xpath("//span[contains(text(),'PIO CESARE')]/../..//input/..")});
    public static final BrowserElement AddVendorButton = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add Vendors']")});
    public static final BrowserElement InviaVendorApprovazione = new BrowserElement(new By[]{By.id("application-NPPMyRFX-Display-component---NewRFXDetail--IDNewRFXDetailApprovalBtn-inner")});



    public static final BrowserElement TechnicalEvaluations = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXDetailObjectPage-anchBar-application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXTechnicalEvaluationTab-anchor-inner']")});
    public static final BrowserElement AddTechnicalEvaluation = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add Technical Evaluation']")});
    public static final BrowserElement TechnicalEvaluationTable = new BrowserElement(new By[]{By.id("application-NPPMyRFX-Display-component---NewRFXDetail--RFXtechEvalTable-listUl")});
    public static final BrowserElement EvaluationButton = new BrowserElement(new By[]{By.id("application-NPPMyRFX-Display-component---NewRFXDetail--_IDGenTEButtonEvaluation-application-NPPMyRFX-Display-component---NewRFXDetail--RFXtechEvalTable-0-inner")});
    public static final BrowserElement EvaluationButton2 = new BrowserElement(new By[]{By.id("application-NPPMyRFX-Display-component---NewRFXDetail--_IDGenTEButtonEvaluation-application-NPPMyRFX-Display-component---NewRFXDetail--RFXtechEvalTable-1-inner")});
    public static final BrowserElement EvaluationButton3 = new BrowserElement(new By[]{By.id("application-NPPMyRFX-Display-component---NewRFXDetail--_IDGenTEButtonEvaluation-application-NPPMyRFX-Display-component---NewRFXDetail--RFXtechEvalTable-2-inner")});
    public static final BrowserElement EvaluationArrow = new BrowserElement(new By[]{By.id("IDTechEvalDialog--IDTechEvalSelect-arrow")});
    public static final BrowserElement EvaluationUL = new BrowserElement(new By[]{By.xpath("//ul[@id='__list6']")});
    public static final BrowserElement EvaluationUL2 = new BrowserElement(new By[]{By.xpath("//ul[@id='__list7']")});
    public static final BrowserElement EvaluationUL3 = new BrowserElement(new By[]{By.xpath("//ul[@id='__list8']")});
    public static final BrowserElement EvaluationNote = new BrowserElement(new By[]{By.id("IDTechEvalDialog--IDTechEvalAttachmentNota-inner")});
    public static final BrowserElement EvaluationAdd = new BrowserElement(new By[]{By.id("__button23")});
    public static final BrowserElement Add = new BrowserElement(new By[]{By.xpath("//*[text()='Add']/ancestor::button")});
    public static final BrowserElement AttachmentField = new BrowserElement(new By[]{By.xpath("//div[@title='Upload the attached file to the server']/input")});
    public static final BrowserElement EvaluationTextArea = new BrowserElement(new By[]{By.xpath("//div[@id='IDTechEvalDialog--IDTechEvalAttachmentNota-content']/textarea")});
    public static final BrowserElement EvaluationAttach = new BrowserElement(new By[]{By.id("IDTechEvalDialog--fuTechEvalAttachment-fu_button-inner")});
    public static final BrowserElement CompletaValutazioneTecnica = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDNewRFXDetailApprovalBtn-inner']")});



    public static final BrowserElement TargetPrice = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXDetailObjectPage-anchBar-application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXTargetPriceTab-anchor-content']")});
    public static final BrowserElement AddTargetPrice = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add target price']")});
    public static final BrowserElement TheEventEnds = new BrowserElement(new By[]{By.xpath("//input[@id='__picker4-inner']")}); //15 June 2022 - 02:24 PM GMT+02:00
    public static final BrowserElement EventNotes = new BrowserElement(new By[]{By.xpath("//textarea[@id='application-NPPMyRFX-Display-component---NewRFXDetail--RFXTPnote2-inner']")});
    public static final BrowserElement AddEventItem = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add an item']")});
    public static final BrowserElement EventDescription = new BrowserElement(new By[]{By.xpath("//input[@id='id_tpdescription-inner']")});
    public static final BrowserElement EventTargetPrice = new BrowserElement(new By[]{By.xpath("//input[@id='id_tpvalue-inner']")});
    public static final BrowserElement EventTargetAddButton = new BrowserElement(new By[]{By.xpath("//bdi[@id='_IDTargetPriceCTAButtonSave-BDI-content']")});
    public static final BrowserElement PublishButton = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDNewRFXDetailPublishBtn-BDI-content']")});

    public static final BrowserElement Reccomendations = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXDetailObjectPage-anchBar-application-NPPMyRFX-Display-component---NewRFXDetail--IDRFXRecommendationTab-anchor-BDI-content']")});
    public static final BrowserElement AddRecommendation = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add Recommendation']")});

    public static final BrowserElement EvaluationAttachment = new BrowserElement(new By[]{By.xpath("//form[@id='IDTechEvalDialog--fuTechEvalAttachment-fu_form']")});


    //public static final BrowserElement ProjectButton = new BrowserElement(new By[]{By.id("")})


}
