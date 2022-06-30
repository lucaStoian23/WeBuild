package test.java.steps;

import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.touch.offset.PointOption;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import main.java.Base.Functions_Settings;
import main.java.Elements.BrowserElement;
import main.java.Utility.FornitoreDao;
import main.java.Utility.Util;
import org.apache.log4j.Logger; import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import test.java.pages.WeBuildLogInPage;


import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;


import static main.java.Base.DriverManager.driver;
import static main.java.Utility.Util.click;
import static main.java.Utility.Util.findEl;

public class WebStep {


   static final Logger logger = Logger.getLogger(WebStep.class);

    @And("I check that {}.{} is displayed")
    public void isElementVisible(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }


    @And("I check that {}.{} is displayed and enabled")
    public void isElementVisibleAndEnabled(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        findEl(el).isEnabled();
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }

    @And("I check that {}.{} is enabled")
    public void isElementEnabled(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isEnabled();
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }


    @And("I check that {}.{} is not displayed")
    public void isElementPresent(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        boolean elem;
        try {
            findEl(el).isDisplayed();
            elem = true;
        } catch (org.openqa.selenium.NoSuchElementException e) {
            elem = false;
        }
        //Assert.assertFalse(elem);
    }

    @And("I input in {}.{} the text {string}")
    public void insertText(String className, String fieldName, String text) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        findEl(el).clear();
        findEl(el).sendKeys(text);
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }
    @And("I input in {}.{} the text {string} without clear")
    public void insertText1(String className, String fieldName, String text) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        findEl(el).sendKeys(text);
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }

    @And("I check that the element {}.{} contains the text {string}")
    public void checkText(String className, String fieldName, String text) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        String elText = findEl(el).getText();
        //Assert.assertTrue(elText.contains(text));
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();

    }


    @And("I clear the field {}.{}")
    public void insertText(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        findEl(el).clear();
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }

    @And("I click {}.{}")
    public static void ClickEl(String className, String fieldName) throws Exception {
        try {
            BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);

            findEl(el).click();
            String step = new Throwable().getStackTrace()[0].getMethodName();
            Util.takeScreenShot();
        }catch (org.openqa.selenium.ElementNotInteractableException e){
            System.out.println("Element not intercectable");
        }
    }

    @And("I wait {int} seconds")
    public static void waitSec(int millis) {

        try {
            Thread.sleep(millis*1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Given("I navigate to FPT page")
    public void navigateToFpt() throws IOException {
        Util.getURL("https://www.fptindustrial.com/global/en");
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }

    @Given("I navigate to WeBuild page")
    public void navigateToWeBuild() throws IOException {
        Util.getURL("https://dev-mrhgsddb.launchpad.cfapps.eu20.hana.ondemand.com/it-webuild-npp.itwebuildnpp-0.0.1/index.html");
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();
    }

    @And("I avoid the banner {}.{}")
    public void iAvoidTheBanner(String className, String fieldName) {
        try{
            BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
            findEl(el).click();
        }catch (Exception e){

        }
    }

    @And("I log_in with username {} and password {}")
    public void iLog_in(String username, String password) throws Exception {
        Util.getURL("https://dev-mrhgsddb.launchpad.cfapps.eu20.hana.ondemand.com/it-webuild-npp.itwebuildnpp-0.0.1/index.html");
        findEl(WeBuildLogInPage.DefaultIdentityProvider).click();
        findEl(WeBuildLogInPage.LogInField).sendKeys(username);
        findEl(WeBuildLogInPage.Continuare).click();
        findEl(WeBuildLogInPage.PasswordField).sendKeys(password);
        findEl(WeBuildLogInPage.SignIn).click();
        Util.createCodFiscale();
        waitSec(4);

    }

    @And("I log_in NEW with username {} and password {}")
    public void iLog_inSupplier(String username, String password) throws Exception {
        Util.getURL("https://tst-tdrwhi6n.launchpad.cfapps.eu20.hana.ondemand.com/site/npp");
        findEl(WeBuildLogInPage.LogInField).clear();
        findEl(WeBuildLogInPage.LogInField).sendKeys(username);
        findEl(WeBuildLogInPage.Continuare).click();
        findEl(WeBuildLogInPage.PasswordFieldSupplier).clear();
        findEl(WeBuildLogInPage.PasswordFieldSupplier).sendKeys(password);
        findEl(WeBuildLogInPage.SignInSupplier).click();
        Util.createCodFiscale();
        waitSec(4);

    }

    @And("I click on the button")
    public void clickOnIt(){
        WebElement wb = Util.driver.findElement(By.xpath("//span[@role='button']"));
        wb.click();
    }

    @And("I chose the {} forma giuridica")
    public void choseFormaGiuridica(String s){
      //  WebElement wb = Util.driver.findElement(By.xpath("//ul[@role='listbox']"));
       // List<WebElement> lst = wb.findElements(By.tagName("li"));


        WebElement wb = Util.driver.findElement(By.id("application-NPPSupplierCreation-Display-component---SupplierCreation--iNation-vhi"));
        wb.click();


       // WebDriverWait wait = new WebDriverWait(Util.driver, Duration.ofSeconds(60));// 1 minute
        //wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//*[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iGiurForm-arrow']")));
       //driver.findElement(By.xpath("//*[@id='application-NPPSupplierCreation-Display-component---SupplierCreation--iGiurForm-arrow']")).click();
      //  int n = lst.size();

    }

    @And("I change the iFrame {}")
    public void iChangeTheIFrame(String name) {
        driver.switchTo().frame(name);
    }


    @And("I select the {} element from the DDL {}.{}")
    public void selectFromUl(Integer n, String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        WebElement wbl = findEl(el);
        List<WebElement> elements = wbl.findElements(By.tagName("li"));
        elements.size();
        elements.get(n).click();
    }

    @And("I scroll down")
    public void iScrollDown() {
        JavascriptExecutor js = (JavascriptExecutor) Util.driver;
        js.executeScript("window.scrollBy(0,1000)","");
    }

    @And("I scroll up")
    public void iScrollUp() {
        JavascriptExecutor js = (JavascriptExecutor) Util.driver;
        js.executeScript("window.scrollBy(1000,0)","");
    }


    @And("I switch to defaultContentFrame")
    public void iSwitchToDefaultContentFrame() {
        Util.driver.switchTo().defaultContent();
    }

    @And("I search the supplier {} in the tbody {}.{}")
    public void searchTheSupplier(String nomeFornitore, String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        WebElement wbl = findEl(el);
        WebElement element = wbl.findElement(By.xpath("//a[text() =" + nomeFornitore + "]"));
        element.click();
    }


    @And("I go to the next frame")
    public void iGoToTheNextFrame() {
        Util.driver.switchTo().frame(Util.driver.findElement(By.tagName("iframe")));
    }

    @And("I input the codFiscale in {}.{}")
    public void iInputTheCodFiscaleInNuovoFornitorePartitaIva(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        findEl(el).clear();
        findEl(el).sendKeys(System.getProperty("codiceFiscale"));
        String step =  new Throwable().getStackTrace()[0].getMethodName();
        Util.takeScreenShot();

    }

    @And("I save the codFiscale from {}.{}")
    public void iSaveTheCodFiscaleFromInfoFornitoreCodiceFiscale(String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);
        findEl(el).isDisplayed();
        String val = findEl(el).getAttribute("value");
        System.setProperty("codiceFiscale", val);

    }

    @And("I open the {} row insire table {}.{}")
    public void iOpenTheFirstRowInsireTable(Integer n, String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);

        WebElement wbl = findEl(el);
        List<WebElement> elements = wbl.findElements(By.tagName("tr"));
        System.out.println(elements);
        elements.get(n).click();
    }


    @And("I use the {} button of {}.{}")
    public void iUseTheButtonOfRFXTechnicalEvaluationTable(Integer n, String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);

        WebElement wbl = findEl(el);
        List<WebElement> elements = wbl.findElements(By.tagName("button"));
        elements.get(n).click();
    }

    @And("I put the attachment {} inside {}.{}")
    public void iPutTheAttachmentCucumberPropertiesInsideRfxAttachmentField(String s, String className, String fieldName) throws Exception {
        BrowserElement el = Functions_Settings.getPageElementByString(className, fieldName);

        WebElement wbl = findEl(el);
        URL res = getClass().getClassLoader().getResource(s);
        File file = Paths.get(res.toURI()).toFile();
        String absolutePath = file.getAbsolutePath();
        wbl.sendKeys(absolutePath);
    }

    @And("I delete the supplier with {}")
    public void iDeleteTheSupplierWithPartitaIva(String PARIVA) throws SQLException {
        System.out.println("iva: " + PARIVA);
        FornitoreDao.deleteFornitoreWithPariva(PARIVA);
        System.out.println("Fornitore eliminato con successo");
    }
}
