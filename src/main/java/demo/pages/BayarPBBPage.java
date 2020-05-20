package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class BayarPBBPage {
    private SelectProvincePage selectProvincePage = new SelectProvincePage();
    private SelectCityPage selectCityPage = new SelectCityPage();
    private SelectYearPage selectYearPage = new SelectYearPage();

    public boolean isOnBayarPBBPage(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 15);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("image_view_icon_bayar_pbb"))).isDisplayed();
    }

    public void selectProvinsi(String provinsi){
        WebElement selectProvinsi = androidDriver.findElement(By.id("button_select_province"));
        selectProvinsi.click();

        selectProvincePage.isOnSelectProvincePage();
        WebElement province = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'"+provinsi+"')]"));
        province.click();

        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void selectCity(String city){
        new TouchAction(androidDriver)
                .press(PointOption.point(600,1050))
                .release().perform();

        AndroidElement selectCity = androidDriver.findElement(By.id("button_select_city"));
        selectCity.click();

        selectCityPage.isOnSelectCityPage();

        WebElement kota = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'"+city+"')]"));
        kota.click();
    }

    public void inputNomorPajak(String nomorPajak){
        WebElement inputNomorPajak = androidDriver.findElement(By.id("edit_text_input_object_number"));
        inputNomorPajak.sendKeys(nomorPajak);
    }

    public void selectYear(String year){
        new TouchAction(androidDriver)
                .press(PointOption.point(700,1550))
                .release().perform();

        AndroidElement selectYear = androidDriver.findElement(By.id("button_select_year"));
        selectYear.click();

        selectYearPage.isOnSelectYearPage();

        WebElement tahun = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text,'"+year+"')]"));
        tahun.click();
//        WebElement selectYear = androidDriver.findElement(By.id("button_select_year"));
//        selectYear.findElement(By.name(year)).click();
    }

    public void clickLanjut(){
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        WebElement lanjutButton = androidDriver.findElement(By.id("button_check_bill"));
        lanjutButton.click();
    }

    public void clickBackButton(){
        WebElement buttonBack = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.ImageButton[@content-desc='Navigate up']"));
        buttonBack.click();
    }
}
