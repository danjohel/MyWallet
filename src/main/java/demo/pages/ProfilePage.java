package demo.pages;

import demo.webdriver.AndroidDriverInstance;
import io.appium.java_client.TouchAction;
import io.appium.java_client.touch.WaitOptions;
import io.appium.java_client.touch.offset.PointOption;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.Point;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.touch.TouchActions;

import java.time.Duration;

import static demo.webdriver.AndroidDriverInstance.androidDriver;

public class ProfilePage {
    public void clickLogoutButton(){

//        new TouchAction(androidDriver)
//                .press(PointOption.point(900,1340))
//                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(1)))
//                .moveTo(PointOption.point(900,500))
//                .release().perform();


//        Point center = androidDriver.findElement(By.id("content")).getCenter();
//        new TouchAction(androidDriver).press(PointOption.point(center))
//                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(1)))
//                .moveTo(PointOption.point(center.getX(), center.getY() - 500)).release().perform();
//        WebElement buttonLogout = AndroidDriverInstance.androidDriver.findElement(By.id("text_view_logout"));
//        buttonLogout.click();
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        new TouchAction(AndroidDriverInstance.androidDriver)
                .press(PointOption.point(740,1400))
                .waitAction(WaitOptions.waitOptions(Duration.ofSeconds(3)))
                .moveTo(PointOption.point(740,500))
                .release().perform();
        WebElement logout = AndroidDriverInstance.androidDriver.findElement(By.id("text_view_logout"));
        logout.click();

        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public void clickHistoriButton(){
        WebElement buttonHistori = androidDriver.findElement(By.id("text_view_history"));
        buttonHistori.click();
    }
}
