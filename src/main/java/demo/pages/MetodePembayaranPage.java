package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class MetodePembayaranPage {

    public String getPembayaranLabel(){
        WebElement pembayaranLabel = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'Pembayaran')]"));
        String pembayaran = pembayaranLabel.getText();
        return pembayaran;
    }

    public void clickOnEWalletMenu(){
        WebElement textEWallet = androidDriver.findElement(By.id("textview_ewallet"));
        textEWallet.click();
    }

    public void tapBankTransfer(String bankName){
        String xpath = String.format("//android.widget.TextView[contains(@text,'"+bankName+"')]", bankName);
        AndroidDriverInstance.androidDriver.findElement(By.xpath(xpath)).click();
    }
}
