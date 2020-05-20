package demo.steps_definition;

import demo.pages.BayarPBBPage;
import demo.pages.DashboardPage;
import demo.pages.LoginPage;
import demo.pages.ProfilePage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class LoginStepDefinition {

    private LoginPage loginPage = new LoginPage();
    private DashboardPage dashboardPage = new DashboardPage();
    private ProfilePage profilePage = new ProfilePage();

    @Given("user is on MyWallet start page")
    public void userIsOnMyWalletStartPage() {
        loginPage.isOnLoginPage();
    }

    @When("user input {string} in email field")
    public void userInputInEmailField(String email) {

        loginPage.inputEmail(email);
    }

    @And("user input {string} in password field")
    public void userInputInPasswordField(String password) {

        loginPage.inputPassword(password);
    }

    @And("user click Masuk button")
    public void userClickMasukButton() {

        loginPage.clickMasukButton();
    }

    @Then("user directed to dashboard")
    public void userDirectedToDashboard() {
        boolean status = dashboardPage.checkGreetings();
        Assert.assertTrue(status);
    }

    @Then("user see warning text on Login Page")
    public void userSeeWarningTextOnLoginPage() {
        boolean status = loginPage.checkWarningText();
        Assert.assertTrue(status);
    }

    @Then("user see toast on Login Page")
    public void userSeeToastOnLoginPage() {
        loginPage.checkToast();
    }

    @When("user click profile image")
    public void userClickProfileImage() {

        dashboardPage.clickProfileImage();
    }

    @When("user click logout button")
    public void userClickLogoutButton() {
        profilePage.clickLogoutButton();
    }

    @Then("user directed to dashboard and see BayarPBB button")
    public void userDirectedToDashboardAndSeeBayarPBBButton() {
        boolean status = dashboardPage.checkBayarPBBButton();
        Assert.assertTrue(status);
    }
}
