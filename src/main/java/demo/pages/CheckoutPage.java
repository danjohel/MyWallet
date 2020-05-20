package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class CheckoutPage {

    public String getCheckoutLabel(){
        WebElement checkoutLabel = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'Checkout')]"));
        String checkout = checkoutLabel.getText();
        return checkout;
    }

    public void clickBayarButton(){
        WebElement bayarButton = androidDriver.findElement(By.id("button_pay"));
        bayarButton.click();
    }

    public void tapMap() {
        WebElement tapBayar = AndroidDriverInstance.androidDriver.findElement(By.id("button_map"));
        tapBayar.click();
    }

    public boolean checkMap() {
        waitAbit(3000);
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 15);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//android.view.View[@content-desc='Google Map']"))).isDisplayed();
    }

    public void waitAbit(int millis){
        try {
            Thread.sleep(millis);
        } catch (InterruptedException e)
        {
            e.printStackTrace();
        }
    }

    public void clickBackButton(){
        WebElement buttonBack = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.ImageButton[@content-desc='Navigate up']"));
        buttonBack.click();
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
