package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class HomePage {
    public static final BrowserElement Fornitori = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Sup\u00ADpli\u00ADers')]/ancestor::a")});
    public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'New sup\u00ADplier')]/ancestor::a")});
    public static final BrowserElement LaMiaInbox = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'My Inbox')]/ancestor::a")});
    public static final BrowserElement Questionari = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Sur\u00ADveys')]/ancestor::a")});
    public static final BrowserElement VendorRating = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Ven\u00ADdor Rat\u00ADing')]/ancestor::a")});
    public static final BrowserElement MySurvey = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'My Sur\u00ADvey')]/ancestor::a")});
    public static final BrowserElement CreazioneRFX = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'RFX cre\u00ADation')]/ancestor::a")});
    public static final BrowserElement RFXCreation = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'RFX cre\u00ADation')]/ancestor::a")});
    public static final BrowserElement MyRFX = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'My RFX')]/ancestor::a")});
    public static final BrowserElement RFX = new BrowserElement(new By[]{By.xpath("//*[text() = 'RFX']/ancestor::a")});
    public static final BrowserElement GestioneDeiFornitori = new BrowserElement(new By[]{By.id("__item0-anchorNavigationBar-2-inner")});
    public static final BrowserElement SourcingCockpit = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Sourc\u00ADing Cock\u00ADpit')]/ancestor::a")});
    public static final BrowserElement GeneralData = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile31\"]")});
    public static final BrowserElement PaginaInizialeMenu = new BrowserElement(new By[]{By.xpath("//*[@id=\"shellAppTitle-button\"]")});
    public static final BrowserElement PaginaInizialeGestioneDeiFornitori = new BrowserElement(new By[]{By.xpath("//*[@id=\"__item3-allMyAppsView--sapUshellAllMyAppsDataSourcesList-1\"]")});
    public static final BrowserElement PaginaInizialeNuovoFornitore = new BrowserElement(new By[]{By.xpath("//*[@id=\"__label0-allMyAppsView--oItemsContainerlist-3-bdi\"]")});
    public static final BrowserElement TornaAllaHome = new BrowserElement(new By[]{By.id("shell-header-icon")});
    public static final BrowserElement HeaderHome = new BrowserElement(new By[]{By.xpath("//h1[@id='shellAppTitle']")});
}

