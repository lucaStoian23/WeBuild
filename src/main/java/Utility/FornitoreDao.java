package main.java.Utility;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;

import static main.java.Base.DriverManager.driver;

public class FornitoreDao {
    private static final String url = "jdbc:sap://17e277f3-d490-4cad-a11b-e099a7c35c34.hana.prod-eu20.hanacloud.ondemand.com:30015/?autocommit=false";
    private static final String user = "CMOTTA";
    private static final String password = "SUpercapo01!";


    private static Connection openConnection() throws SQLException {
        return DriverManager.getConnection(url, user, password);
    }





    public static void main(String[] argv) {
        System.out.println("Java version: " + com.sap.db.jdbc.Driver.getJavaVersion());
        System.out.println("Minimum supported Java version and SAP driver version number: " + com.sap.db.jdbc.Driver.getVersionInfo());
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(
                    "jdbc:sap://17e277f3-d490-4cad-a11b-e099a7c35c34.hana.prod-eu20.hanacloud.ondemand.com:30040/?encrypt=true&databaseName=NPPTSTDB", "CMOTTA",
                    "SUpercapo01!");
        } catch (SQLException e) {
            System.err.println("Connection Failed:");
            System.err.println(e);
            return;
        }
        if (connection != null) {
            System.out.println("Connection to HANA successful!");

        }
    }
}
