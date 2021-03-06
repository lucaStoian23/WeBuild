package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class NuovoFornitore {
    public static final BrowserElement NazioneButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iNation-vhi']")});
    public static final BrowserElement NazioneCerca = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--selectDialog-searchField-I']")});
    public static final BrowserElement Clessidra = new BrowserElement(new By[]{By.xpath("//div[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--selectDialog-searchField-search']")});
    public static final BrowserElement NazioneTrovata = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreation--_IDGenStandardListItem1-__clone20")});
    public static final BrowserElement NazioneLI = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreation--selectDialog-list-listUl")});
    public static final BrowserElement FormaGiuridicaButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iGiurForm-arrow']")});
    public static final BrowserElement ULFormeGiuridiche = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iGiurForm-popup-list-listUl']")});
    public static final BrowserElement TipologiaFornitoreButton = new BrowserElement(new By[]{By.xpath("//span[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iTipologia-arrow']")});
    public static final BrowserElement ULTipologieFornitore = new BrowserElement(new By[]{By.xpath("//ul[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iTipologia-popup-list-listUl']")});
    public static final BrowserElement RagioneSociale = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iRagioneSociale-inner']")});
    public static final BrowserElement Nome = new BrowserElement(new By[]{By.xpath("//input[@placeholder='Name...']")});
    public static final BrowserElement Surname = new BrowserElement(new By[]{By.xpath("//input[@placeholder='Surname...']")});

    public static final BrowserElement PartitaIva = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iPIva-inner']")});
    public static final BrowserElement CodiceFiscale = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iCodFisc-inner']")});
    public static final BrowserElement PartitaIvaCEE = new BrowserElement(new By[]{By.xpath("//input[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iPIvaCom-inner']")});
    public static final BrowserElement SearchInfoProviderButton = new BrowserElement(new By[]{By.xpath("//button[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--_IDGenButton1']")});
    public static final BrowserElement ULFornitoriTrovati = new BrowserElement(new By[]{By.id("_IDGenList1XX-listUl")});
    public static final BrowserElement Crea = new BrowserElement(new By[]{By.xpath("//button[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--_IDGenButton3']")});
    public static final BrowserElement Annulla = new BrowserElement(new By[]{By.id("_IDGenButton1XX-inner")});
    public static final BrowserElement FormaGiuridicaPrimaScelta = new BrowserElement(new By[]{By.id("__item0")});
    public static final BrowserElement SupplierSoloProcurement = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Solo Procurement')]")});
    public static final BrowserElement LenteNazione = new BrowserElement(new By[]{By.id("application-NPPSupplierCreation-Display-component---SupplierCreation--selectDialog-searchField-search")});
    public static final BrowserElement SelezionaGermania = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'DE')]")});
    public static final BrowserElement SelezionaAustralia = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'AU')]")});

}



