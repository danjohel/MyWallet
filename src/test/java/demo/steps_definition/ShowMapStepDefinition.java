package demo.steps_definition;

import demo.pages.CheckoutPage;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class ShowMapStepDefinition {
    private CheckoutPage checkoutPage = new CheckoutPage();
    @When("user tap Map")
    public void userTapMap() {
        checkoutPage.tapMap();
    }

    @Then("user see Google Map")
    public void userSeeGoogleMap() {
            boolean status =  checkoutPage.checkMap();
            Assert.assertTrue(status);
    }

    @When("user tap back button in show map")
    public void userTapBackButtonInShowMap() {
        checkoutPage.clickBackButton();
    }
}

