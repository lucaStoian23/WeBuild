package main.java.Hooks;



import io.cucumber.java.*;
import main.java.Base.DriverManager;
import main.java.Utility.Util;
import org.openqa.selenium.By;
import test.java.pages.General;
import test.java.steps.WebStep;

import java.io.IOException;
import java.net.MalformedURLException;
import java.time.Duration;

public class Hook extends DriverManager {

    @BeforeStep
    public void beforeStep() throws Exception {

        try {
            if (WebStep.isVisible("General", "ErrorMessage")) {

               int size = driver.findElements(By.xpath("//span[text()='NPP message'] | //span[text()='Messaggio NPP'] | //span[text()='Error in accessing or reading data. ']")).size();
               for(int i = 0; i<size; i++){
                   WebStep.ClickEl("General", "OK");
               }

            }
        } catch(Exception e){

        }
        WebStep.waitIfItIsLoading();
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(30));
    }


    @AfterStep
    public void
    afterStep(Scenario scenario) throws IOException {
        try {
            scenario.attach(Util.screenshot, "image/png", scenario.getName());
           // WebStep.waitSec();
           // WebStep.ClickEl("General", "OKMessage");
            if (WebStep.isVisible("General", "ErrorMessage")) {

                int size = driver.findElements(By.xpath("//span[text()='NPP message'] | //span[text()='Messaggio NPP'] | //span[text()='Error in accessing or reading data. ']")).size();
                for(int i = 0; i<size; i++){
                    WebStep.ClickEl("General", "OK");
                }

            }
        }catch (Exception e){

        }
        WebStep.waitIfItIsLoading();

    }

/**
    @Before

     * Se esiste un server in ascolto su localhost, porta 4723 allora viene usato il driver chrome di appium, altrimenti
     * viene usato il driver chrome per desktop
     *
     * Per far partire il server appium, bisogna fornirgli il path per il driver, scrivere:
     * appium --chromedriver-executable D:\webuild\src\test\java\drivers\chromedriver.exe
     */
@Before
    public void beforeScenario(Scenario scenario) throws IOException {

        String command = "curl http://127.0.0.1:4723/wd/hub/status";
        Process process = Runtime.getRuntime().exec(command);

            if (process.getInputStream().readAllBytes().length == 0) {
                Util.CreateDriver();
            } else {
                Util.GetAndroidDriver();
            }

        //Util.CreateDriver();
        //Util.GetAndroidDriver();
        Util.scenarioName = scenario.getName();

    }

    @After
    public void closeDriver() {

        //afterSuite();
    }
}
