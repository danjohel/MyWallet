package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class DashboardPage {
    public void clickBayarPBBButton(){
        WebElement bayarPBBButton = androidDriver.findElement(By.id("image_view_icon_bayar_pbb"));
        bayarPBBButton.click();
    }

    public void clickProfileButton(){
        WebElement bayarPBBButton = androidDriver.findElement(By.id("image_view_avatar"));
        bayarPBBButton.click();
    }

    public void clickProfileImage(){
        WebElement profileImage = AndroidDriverInstance.androidDriver.findElement(By.id("image_view_avatar"));
        profileImage.click();
    }

    public boolean checkGreetings(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 10);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("text_view_greetings"))).isDisplayed();
    }
    public boolean checkBayarPBBButton(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 10);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("card_view_menu_bayar_pbb"))).isDisplayed();
    }
}
