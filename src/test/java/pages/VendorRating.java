package test.java.pages;


import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;


public class VendorRating {
    //Filtri Ricerca
    public static final BrowserElement SupplierNameButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--supplierSearch-vhi']")});
    public static final BrowserElement SupplierSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogS-searchField-I']")});
    public static final BrowserElement SupplierLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogS-searchField-search']")});
    public static final BrowserElement SupplierUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogS-list-listUl']")});
    public static final BrowserElement SupplierSelect = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogS-ok-inner']")});

    public static final BrowserElement RegionButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--regionSearch-vhi']")});
    public static final BrowserElement RegionSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogR-searchField-I']")});
    public static final BrowserElement RegionLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogR-searchField-search']")});
    public static final BrowserElement RegionUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogR-list-listUl']")});
    public static final BrowserElement RegionSelect = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogR-ok-inner']")});

    public static final BrowserElement StatusArrow = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--statusList-arrow']")});
    public static final BrowserElement StatusUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPVendorRating-Display-component---VendorRating--statusList-popup-list-listUl']")});

    public static final BrowserElement ProjectNameButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--projectSearch-vhi']")});
    public static final BrowserElement ProjectSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogP-searchField-I']")});
    public static final BrowserElement ProjectLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogP-searchField-search']")});
    public static final BrowserElement ProjectUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogP-list-listUl']")});
    public static final BrowserElement ProjectSelect = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogP-ok-BDI-content']")});

    public static final BrowserElement CampaignButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--campaignSearch-vhi']")});
    public static final BrowserElement CampaignSearch = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogC-searchField-I']")});
    public static final BrowserElement CampaignLents = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogC-searchField-search']")});
    public static final BrowserElement CampaignUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogC-list-listUl']")});
    public static final BrowserElement CampaignSelect = new BrowserElement(new By[]{By.xpath("//bdi[@id='application-NPPVendorRating-Display-component---VendorRating--valueHelpDialogC-ok-BDI-content']")});

    public static final BrowserElement SearchButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPVendorRating-Display-component---VendorRating--_IDGenButton2-inner']")});


    public static final BrowserElement CampaignName = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorCreationCampaign--campaignName-inner']")});
    public static final BrowserElement CampaignStartDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorCreationCampaign--startDate-inner']")});
    public static final BrowserElement CampaignEndDate = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPVendorRating-Display-component---VendorCreationCampaign--endDate-inner']")});

    public static final BrowserElement CampaignAddUser = new BrowserElement(new By[]{By.xpath("//bdi[text()='Add User']")});
    public static final BrowserElement CampaignUserArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_CampaignAdduserFormSelect-arrow']")});
    public static final BrowserElement CampaignUserUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_CampaignAdduserFormSelect-popup-list-listUl']")});
    public static final BrowserElement CampaignSurveyArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_CampaignAddSurveyFormSelect-arrow']")});
   // public static final BrowserElement CampaignSurveyUL = new BrowserElement(new By[]{By.xpath("//span[@id='']")});
    public static final BrowserElement NewUserRegister = new BrowserElement(new By[]{By.xpath("//bdi[text()='Register']")});

    public static final BrowserElement StartCampaign = new BrowserElement(new By[]{By.xpath("//bdi[text()='Start Campaign']")});
    public static final BrowserElement SaveDraft = new BrowserElement(new By[]{By.xpath("//bdi[text()='Save Draft']")});
}
   // public static final BrowserElement SupplierNameButton = new BrowserElement(new By[]{By.xpath("//span[@id='']")});

