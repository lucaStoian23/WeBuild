package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class HomePage {
    public static final BrowserElement Fornitori = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile30\"]")});
  // public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.id("#__tile10")});
    public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.xpath("//a[@id='__tile29']")});
    public static final BrowserElement LaMiaInbox = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'La mia inbox')]")});
    public static final BrowserElement Questionari = new BrowserElement(new By[]{By.id("__tile12")});
    public static final BrowserElement VendorRating = new BrowserElement(new By[]{By.id("__tile13")});
    public static final BrowserElement MySurvey = new BrowserElement(new By[]{By.id("__tile14")});
    public static final BrowserElement CreazioneRFX = new BrowserElement(new By[]{By.id("__tile16")});
    public static final BrowserElement GestioneDeiFornitori = new BrowserElement(new By[]{By.id("__item0-anchorNavigationBar-2-inner")});
    public static final BrowserElement GeneralData = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile31\"]")});
  public static final BrowserElement PaginaInizialeMenu = new BrowserElement(new By[]{By.xpath("//*[@id=\"shellAppTitle-button\"]")});
  public static final BrowserElement PaginaInizialeGestioneDeiFornitori = new BrowserElement(new By[]{By.xpath("//*[@id=\"__item3-allMyAppsView--sapUshellAllMyAppsDataSourcesList-1\"]")});
  public static final BrowserElement PaginaInizialeNuovoFornitore = new BrowserElement(new By[]{By.xpath("//*[@id=\"__label0-allMyAppsView--oItemsContainerlist-3-bdi\"]")});
}
