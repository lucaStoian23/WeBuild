package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class Request {
    public static final BrowserElement tabRequest = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--ObjectPageLayout-anchBar-application-NPPFornitori-Display-component---SupplierData--request-anchor-content")});
    public static final BrowserElement addRequest = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierData--requestblock-Collapsed--_IDGenButton1-inner")});
    public static final BrowserElement arrowChose = new BrowserElement(new By[]{By.id("id_SupplierCreateRequestComboTipo-arrow")});
    public static final BrowserElement DDLChoseStatus = new BrowserElement(new By[]{By.id("id_SupplierCreateRequestComboTipo-popup-list-listUl")});
    public static final BrowserElement addNotes = new BrowserElement(new By[]{By.id("id_SupplierCreateRequestInputNote-inner")});
    public static final BrowserElement inputFilename = new BrowserElement(new By[]{By.id("fuSupplierCreateCF-fu_input-inner")});
    public static final BrowserElement attachmentDescription = new BrowserElement(new By[]{By.id("id_SupplierCreateRequestAttachDesc-inner")});
    public static final BrowserElement addCommodity = new BrowserElement(new By[]{By.id("_IDSupplierCreateRequestCTAButtonSave")});
    public static final BrowserElement DDLCommodity = new BrowserElement(new By[]{By.id("id_SupplierCreateRequestInsertProjectAFC-popup-list-listUl")});
    public static final BrowserElement add = new BrowserElement(new By[]{By.id("_IDSupplierCreateRequestCTAButtonSave")});

}
