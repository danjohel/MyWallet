package demo.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class PembayaranBerhasilPage {
    public boolean isOnPembayaranBerhasilPage(){
        WebDriverWait wait = new WebDriverWait(androidDriver, 30);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("btn_finish"))).isDisplayed();
    }

    public void clickSelesaiButton(){
        WebElement selesaiButton = androidDriver.findElement(By.id("btn_finish"));
        selesaiButton.click();
    }
}
