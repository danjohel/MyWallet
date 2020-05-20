package demo.pages;

import com.google.gson.internal.bind.util.ISO8601Utils;
import demo.element.ElementLogin;
import demo.webdriver.AndroidDriverInstance;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.sql.SQLOutput;

public class LoginPage implements ElementLogin {

    public boolean isOnLoginPage(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 15);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id(imageMyWallet))).isDisplayed();
    }

    public void inputEmail(String email){
        WebElement inputEmail = AndroidDriverInstance.androidDriver.findElement(By.id(editTextEmail));
        inputEmail.sendKeys(email);
    }

    public void inputPassword(String password){
        WebElement inputPassword = AndroidDriverInstance.androidDriver.findElement(By.id(editTextPassword));
        inputPassword.sendKeys(password);
    }

    public void clickMasukButton(){
        WebElement masukButton = AndroidDriverInstance.androidDriver.findElement(By.id(buttonMasukRegister));
        masukButton.click();
    }
    public boolean checkWarningText(){
        WebDriverWait wait = new WebDriverWait(AndroidDriverInstance.androidDriver, 10);
        return wait.until(ExpectedConditions.presenceOfElementLocated(By.id("textinput_error"))).isDisplayed();
    }
    public void checkToast() {
        WebElement toastView = AndroidDriverInstance.androidDriver.findElement(By.xpath("//android.widget.Toast[1]"));
        String text = toastView.getAttribute("text");
    }

}
