package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class GestioneDeiFornitori {
    public static final BrowserElement NuovoFornitore = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile29\"]")});
    public static final BrowserElement Fornitori = new BrowserElement(new By[]{By.xpath("//*[@id=\"__tile30\"]")});
// Fornitori
    public static final BrowserElement BottoneSearch = new BrowserElement(new By[]{By.xpath("//*[@id=\"__button0-inner\"]")});
    public static final BrowserElement Fornitore = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Fornitore 1')]")});
    public static final BrowserElement PopUpErrore = new BrowserElement(new By[]{By.xpath("//*[@id=\"__mbox-btn-3-inner\"]")});


}
