package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class WeBuildLogInPage {

    public static final BrowserElement DefaultIdentityProvider = new BrowserElement(new By[]{By.linkText("Default Identity Provider")});
    public static final BrowserElement LogInField = new BrowserElement(new By[]{By.xpath("//*[@id=\"j_username\"]")});
    public static final BrowserElement Continuare = new BrowserElement(new By[]{By.id("logOnFormSubmit")});
    public static final BrowserElement PasswordField = new BrowserElement(new By[]{By.id("password")});
    public static final BrowserElement SignIn = new BrowserElement(new By[]{By.className("test-button")});
}
