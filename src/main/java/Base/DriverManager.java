package main.java.Base;

import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.MobileCapabilityType;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.apache.log4j.BasicConfigurator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.DesiredCapabilities;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public class DriverManager {

    public static WebDriver driver;




    public static WebDriver CreateDriver() throws IOException {
        //BasicConfigurator.configure();
        //String command = "curl http://127.0.0.1:4723/wd/hub/status";
        //Process process = Runtime.getRuntime().exec(command);
        //System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$" + process.getInputStream().readAllBytes().length);

        //if(false){
            //non ho il server appium aperto

            WebDriverManager.chromedriver().setup();


            ChromeOptions options = new ChromeOptions();
            options.addArguments("--incognito");
            WebDriver driverr = new ChromeDriver(options);

            driverr.manage().window().maximize();
            driverr.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
            driver =  driverr;
            return driverr;

    }
        public static AndroidDriver GetAndroidDriver() throws MalformedURLException {
        //BasicConfigurator.configure();
        DesiredCapabilities cap = new DesiredCapabilities();
        //apro il telefono con quel nome
        cap.setCapability(MobileCapabilityType.DEVICE_NAME,"Samsungs8");
        cap.setCapability(MobileCapabilityType.BROWSER_NAME, "Chrome");
        cap.setCapability(MobileCapabilityType.AUTOMATION_NAME, "UiAutomator2");
        driver = new AndroidDriver(new URL("http://127.0.0.1:4723/wd/hub"),cap);
        return (AndroidDriver) driver;
    }

    public static void afterSuite() {
        driver.close();
        driver.quit();
    }

}