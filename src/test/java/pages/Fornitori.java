package test.java.pages;

import main.java.Elements.BrowserElement;
import org.openqa.selenium.By;

public class Fornitori {
    public static final BrowserElement SearchBox = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierList--searchSupplierField-I")});
    public static final BrowserElement SearchIcon = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierList--searchSupplierField-search")});
    public static final BrowserElement SuppliersTableBody = new BrowserElement(new By[]{By.id("application-NPPFornitori-Display-component---SupplierList--tSuppliers-tblBody")});


}

