package demo.steps_definition;

import demo.pages.RegistrasiPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class RegistrasiStepDefinition {

    private RegistrasiPage registrasiPage = new RegistrasiPage();

    @Given("user is on Registrasi page")
    public void userIsOnRegistrasiPage() {
        registrasiPage.goToRegisterPage();
        registrasiPage.isOnRegisterPage();
    }

    @When("user input nama {string}")
    public void userInputNama(String nama) {
        registrasiPage.inputNama(nama);
    }

    @And("user input email {string}")
    public void userInputEmail(String email) {
        registrasiPage.inputEmail(email);
    }

    @And("user input nomor telepon {string}")
    public void userInputNomorTelepon(String nomorTelp) {
        registrasiPage.inputNomorTelepon(nomorTelp);
    }

    @And("user input password {string}")
    public void userInputPassword(String password) {
        registrasiPage.inputPassword(password);
    }

    @And("user input konfirmasi {string}")
    public void userInputKonfirmasi(String konpass) {
        registrasiPage.inputKonfirmasiPassword(konpass);
    }

    @And("user tap on Daftar")
    public void userTapOnDaftar() {
        registrasiPage.clickRegisterButton();
    }

    @Then("user directed to OTP page and user see label {string}")
    public void userDirectedToOTPPageAndUserSeeLabel(String arg0) {

    }

    @Then("user see warning text")
    public void userSeeWarningText() {
        boolean status = registrasiPage.checkWarningText();
        Assert.assertTrue(status);
    }

    @When("user doesn't input nama")
    public void userDoesnTInputNama() {
    }

    @When("user doesn't input email")
    public void userDoesnTEmailNama() {
    }

    @When("user doesnt input nomor telepon")
    public void userDoesntInputNomorTelepon() {
    }

    @When("user doesnt input password")
    public void userDoesntInputPassword() {
    }

    @And("user doesnt input konfirmasi password")
    public void userDoesntInputKonfirmasiPassword() {
    }

    @Then("user see warning text {string}")
    public void userSeeWarningText(String errorKonpass) {
        Assert.assertEquals(errorKonpass, registrasiPage.getErrorPass());
    }
}
