package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class HistoriPage {
    public String getTextSukses(){
        WebElement elementTextSukses = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'Sukses')]"));
        String textSukses = elementTextSukses.getText();
        return textSukses;
    }

    public void clickBackButton(){
        WebElement buttonBack = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.ImageButton[@content-desc='Navigate up']"));
        buttonBack.click();
    }
}
