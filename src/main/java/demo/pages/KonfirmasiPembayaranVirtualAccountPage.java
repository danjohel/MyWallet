package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class KonfirmasiPembayaranVirtualAccountPage {
    public boolean isOnRegisterPage(){
        WebDriverWait wait = new WebDriverWait(androidDriver, 30);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//android.widget.TextView[contains(@text, 'Konfirmasi Pembayaran')]"))).isDisplayed();
    }

    public String getLabelKonfirmasiPembayaran(){
        WebElement konPembayaran = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'Konfirmasi Pembayaran')]"));
        return konPembayaran.getText();
    }

    public boolean checkSayaSudahBayarButton(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 20);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("button_confirm_payment"))).isDisplayed();
    }

    public void clickBackButton(){
        WebElement buttonBack = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.ImageButton[@content-desc='Navigate up']"));
        buttonBack.click();
    }
}
