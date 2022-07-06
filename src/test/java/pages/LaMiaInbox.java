package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class LaMiaInbox {
    public static final BrowserElement DDLProposte = new BrowserElement(new By[]{By.id("__xmlview3--list-listUl")});
    public static final BrowserElement iFrame = new BrowserElement(new By[]{By.id("application-WorkflowTaskReply-DisplayMyInboxReply")});
    public static final BrowserElement Approve = new BrowserElement(new By[]{By.xpath("//bdi[text()='Approve']")});
    public static final BrowserElement Reject = new BrowserElement(new By[]{By.xpath("//bdi[text()='Reject']")});
    public static final BrowserElement SendToCompliance = new BrowserElement(new By[]{By.xpath("//bdi[text()='Send to Compliance']")});
    public static final BrowserElement MailboxSearch = new BrowserElement(new By[]{By.xpath("//input[@id='__xmlview9--myInbox_SEARCH-I']")});
}

