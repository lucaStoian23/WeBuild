package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class HomePage {
    public static final BrowserElement Fornitori = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile28\"]")});
  //  public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.id("#__tile10")});

    public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.id("__tile27")});
  public static final BrowserElement LaMiaInbox = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'La mia inbox')]")});
    public static final BrowserElement Questionari = new BrowserElement(new By[]{By.id("__tile12")});
    public static final BrowserElement VendorRating = new BrowserElement(new By[]{By.id("__tile13")});
    public static final BrowserElement MySurvey = new BrowserElement(new By[]{By.id("__tile14")});
    public static final BrowserElement CreazioneRFX = new BrowserElement(new By[]{By.id("__tile16")});
}
