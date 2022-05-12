package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class General {
    public static final BrowserElement OKMessage = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'OK')]")});
    public static final BrowserElement SALVA = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Salva')]")});
}
