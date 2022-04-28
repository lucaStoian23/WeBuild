package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class HookPage {
    public static final BrowserElement Title = new BrowserElement(new By[]{By.xpath("//*[@id=\"post-68765\"]/header/div/h1")});
    public static final BrowserElement ThreeDots = new BrowserElement(new By[]{By.xpath("//*[@id=\"menu-main-menu\"]/li[1]/a")});
    public static final BrowserElement AgreePrivacy = new BrowserElement(new By[]{By.xpath("//*[@id=\"qc-cmp2-ui\"]/div[2]/div/button[2]")});

    public static final BrowserElement AgreePrivacy2 = new BrowserElement(new By[]{By.xpath("//*[contains(text(),'AGREE')]")});

    public static final BrowserElement SpringRestTutorial = new BrowserElement(new By[]{By.xpath(("//*[@id=\"big-nav\"]/div[2]/div/div[2]/div[1]/section[1]/ul/li[1]/a"))});
}
