package demo.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class KonfirmasiPembayaranEWalletPage {

    public String getKonfirmasiPembayaranLabel(){
        WebElement konfirmasiPembayaranLabel = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'Konfirmasi Pembayaran')]"));
        String konPembayaran = konfirmasiPembayaranLabel.getText();
        return konPembayaran;
    }

    public void clickOnKonfirmasiButton(){
        WebElement konfirmasiButton = androidDriver.findElement(By.id("button_confirm"));
        konfirmasiButton.click();
    }
}
