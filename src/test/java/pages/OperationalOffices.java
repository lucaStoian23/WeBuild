package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class OperationalOffices {
    public static final BrowserElement ChooseOperationalOffices = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Operational Offices')]")});
    public static final BrowserElement AddOperationalOffice = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--operationalofficesblock-Collapsed--idNewUsrBtn-inner")});
    //Elementi Create Operations Office
    public static final BrowserElement OperationOfficeName = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeInputName-inner")});
    public static final BrowserElement AddressTypeArrow = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeComboTipo-arrow")});
    public static final BrowserElement AddressTypeUL = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeComboTipo-popup-list-listUl")});
    public static final BrowserElement CountryButton = new BrowserElement(new By[]{By.id("SupplierCreateOfficeComboNation-vhi")});
    public static final BrowserElement CountrySearchBar = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-searchField-I")});
    public static final BrowserElement CountryLents = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-searchField-search")});
    public static final BrowserElement CountryUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog-list-listUl']")});
    public static final BrowserElement Address = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeInputAddress-inner")});
    public static final BrowserElement PostalCode = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeComboPostalCode-inner")});
    public static final BrowserElement City = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeComboCity-inner")});
    public static final BrowserElement ProvinceButton = new BrowserElement(new By[]{By.id("id_SupplierCreateOfficeLocal-vhi")});
    public static final BrowserElement ProvinceSearch = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-searchField-I")});
    public static final BrowserElement ProvinceLents = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-searchField-search")});
    public static final BrowserElement ProvinceUL = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPFornitori-Display-component---SupplierData--operationalofficesblock-Collapsed--selectDialog2-list-listUl']")});
    public static final BrowserElement Save = new BrowserElement(new By[]{By.id("_IDSupplierCreateOfficeCTAButtonSave-inner")});
    //Compilazione Nuovo contatto
    public static final BrowserElement ChooseContact = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Contact')]")});
    public static final BrowserElement NewContact = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--contactblock-Collapsed--idNewUsrBtn-inner")});
    public static final BrowserElement ContactName = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputName-inner")});
    public static final BrowserElement ContactSurname = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputSurname-inner")});
    public static final BrowserElement ContactPhone = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputPhone-inner")});
    public static final BrowserElement ContactEmail = new BrowserElement(new By[]{By.id("id_SupplierCreateFormInputEmail-inner")});
    public static final BrowserElement ContactRoleArrow = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboRole-arrow")});
    public static final BrowserElement ContactRoleUL = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboRole-popup-list-listUl")});
    public static final BrowserElement ContactTimezoneArrow = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboTimezone-arrow")});
    public static final BrowserElement ContactTimezoneUL = new BrowserElement(new By[]{By.id("id_SupplierCreateFormComboTimezone-popup-list-listUl")}); //14 europa
    public static final BrowserElement ContactSave = new BrowserElement(new By[]{By.id("_IDSupplierCreateFormCTAButtonSave-inner")});
    //Aggiunta Comodidities and Projects
    public static final BrowserElement ChooseCommoditiesAndProjects = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Commodities and Projects')]")});
    public static final BrowserElement AddCommoditiesButton = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--commodityprojectblock-Collapsed--id_suppliercommodityblocktab_Table_HeaderToolbar_ButtonAddNew-inner")});
    public static final BrowserElement AddCommoditiesArrow = new BrowserElement(new By[]{By.xpath("//span[@id='id_SupplierAddCommodityFormSelectCommodity-arrow']")});
    public static final BrowserElement CommoditiesUL = new BrowserElement(new By[]{By.xpath("//ul[@id='id_SupplierAddCommodityFormSelectCommodity-popup-list-listUl']")});
    public static final BrowserElement CommoditiesRegister = new BrowserElement(new By[]{By.xpath("//button//span[@id='id_SupplierAddCommodityFormCTAButtonSave-inner']")});
    public static final BrowserElement AddProjectButton = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierData--commodityprojectblock-Collapsed--id_supplierprojectblocktab_Table_HeaderToolbar_ButtonAddNew-inner")});
    public static final BrowserElement AddProjectArrow = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormSelectProject-arrow")});
    public static final BrowserElement ProjectUL = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormSelectProject-popup-list-listUl")});
    public static final BrowserElement ProjectRegister = new BrowserElement(new By[]{By.id("id_SupplierAddProjectFormCTAButtonSave-inner")});

}
