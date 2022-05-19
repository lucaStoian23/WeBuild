package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class General {
    public static final BrowserElement OKMessage = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'OK')]")});
    public static final BrowserElement BackToHome = new BrowserElement(new By[]{By.xpath("//*[@title='Naviga alla pagina iniziale']")});
    public static final BrowserElement SALVA = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Salva')]")});
    public static final BrowserElement ANNULLA = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Annulla')]")});
}
