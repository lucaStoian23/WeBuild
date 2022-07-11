package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class General {
    public static final BrowserElement OKMessage = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'OK')]")});
    public static final BrowserElement OK = new BrowserElement(new By[]{By.xpath("//*[text()= 'OK']//ancestor::button")});
    public static final BrowserElement ErrorMessage = new BrowserElement(new By[]{By.xpath("//span[text()='NPP message'] | //span[text()='Messaggio NPP'] | //span[text()='Error in accessing or reading data. ']")});
    public static final BrowserElement BackToHome = new BrowserElement(new By[]{By.xpath("//*[@title='Navigate to Home Page']")});
    public static final BrowserElement SALVA = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Salva')]")});
    public static final BrowserElement CREATE = new BrowserElement(new By[]{By.xpath("//*[text(),'Create']")});
    public static final BrowserElement Logo = new BrowserElement(new By[]{By.xpath("//img[@id='shell-header-icon']")});
    public static final BrowserElement ANNULLA = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'Annulla')]")});
    public static final BrowserElement BackButton = new BrowserElement(new By[]{By.xpath("//*[@id=\"backBtn\"]")});
    public static final BrowserElement MenuUtente = new BrowserElement(new By[]{By.xpath("//span[@id='meAreaHeaderButton']")});
    public static final BrowserElement Logout = new BrowserElement(new By[]{By.xpath("//span[@data-sap-ui-icon-content='\uE022']")});
    public static final BrowserElement LogInAgain = new BrowserElement(new By[]{By.xpath("//span[@id='__button0-content']")});
}
