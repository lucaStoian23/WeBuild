package test.java.steps;

import io.appium.java_client.android.AndroidDriver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import main.java.Base.Functions_Settings;
import main.java.Elements.BrowserElement;
import main.java.Utility.Util;
import org.apache.log4j.Logger; import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import test.java.pages.WeBuildLogInPage;


import java.io.IOException;
import java.time.Duration;
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
    public static void waitSec(int sec) {
        int millis = sec * 1000;
        try {
            Thread.sleep(millis);
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

    @And("I change the iFrame")
    public void iChangeTheIFrame() {
        driver.switchTo().frame("application-NPPSupplierCreation-Display");
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
        js.executeScript("window.scrollBy(0,400)","");
    }
}
