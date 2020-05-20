package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import io.appium.java_client.AppiumDriver;
import io.appium.java_client.TouchAction;
import io.appium.java_client.android.AndroidTouchAction;
import io.appium.java_client.touch.WaitOptions;
import io.appium.java_client.touch.offset.PointOption;
import org.apache.velocity.runtime.directive.Parse;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.touch.TouchActions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class RegistrasiPage {

//    public void tapNum(Integer num){
//        String stringNum = num.toString();
//        for (String n : stringNum.split("")){
//            clickOn(By.id("numpad" + n));
//        }
//
//    }

    public void goToRegisterPage(){
        WebElement tabRegister = androidDriver.findElement(By.xpath("//android.widget.TextView[contains(@text, 'Register')]"));
        tabRegister.click();
    }

    public boolean isOnRegisterPage(){
        WebDriverWait wait = new WebDriverWait(androidDriver, 30);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("edit_text_email_register"))).isDisplayed();
    }

    public void inputNama(String nama){
        WebElement inputNama = androidDriver.findElement(By.id("edit_text_name_register"));
        inputNama.sendKeys(nama);
    }

    public void inputEmail(String email){
        WebElement inputEmail = androidDriver.findElement(By.id("edit_text_email_register"));
        inputEmail.sendKeys(email);
    }

    public void inputNomorTelepon(String notelp){
//        new TouchAction(androidDriver)
//                .press(PointOption.point(762,1173))
//                .release().perform();

        int n = 10;
        WebElement inputNomorTelepon = androidDriver.findElement(By.id("edit_text_phone_register"));
//        inputNomorTelepon.click();

//        new TouchAction(androidDriver)
//                .press(PointOption.point(451,1260))
//                .release().perform();
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        inputNomorTelepon.sendKeys(notelp);

        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
//        new TouchAction(androidDriver)
//                .press(PointOption.point(541,2089))
//                .release().perform();
//
//        for(int i = 0; i < n; i++){
//            new TouchAction(androidDriver)
//                    .press(PointOption.point(184,1679))
//                    .release().perform();
//        }
    }

    public void inputPassword(String password){
        androidDriver.hideKeyboard();
        new TouchAction(androidDriver)
                .press(PointOption.point(1062,1045))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(1)))
                .moveTo(PointOption.point(1056,534))
                .release().perform();

        WebElement inputPassword = androidDriver.findElement(By.id("edit_text_password_register"));
        inputPassword.sendKeys(password);
    }

    public void inputKonfirmasiPassword(String konpass){
        androidDriver.hideKeyboard();
        new TouchAction(androidDriver)
                .press(PointOption.point(900,1340))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(1)))
                .moveTo(PointOption.point(1000,500))
                .release().perform();


        WebElement inputKonfirmasiPassword = androidDriver.findElement(By.id("edit_text_password_confirmation_register"));
        inputKonfirmasiPassword.sendKeys(konpass);
    }

    public void clickRegisterButton(){
        androidDriver.hideKeyboard();
        WebElement registerButton = androidDriver.findElement(By.id("button_login_register"));
        registerButton.click();
    }

    public String getErrorPass(){
        WebElement errorPass = androidDriver.findElement(By.id("textinput_error"));
        String textErrorKonpass = errorPass.getText();
        return textErrorKonpass;
    }

    public boolean checkWarningText(){
        new TouchAction(androidDriver)
                .press(PointOption.point(1062,534))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(1)))
                .moveTo(PointOption.point(1056,1045))
                .release().perform();

        WebDriverWait wait = new WebDriverWait(androidDriver,10);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("textinput_error"))).isDisplayed();

    }
}
