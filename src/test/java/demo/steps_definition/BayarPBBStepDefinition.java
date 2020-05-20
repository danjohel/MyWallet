package demo.steps_definition;

import demo.pages.*;
import demo.webdriver.AndroidDriverInstance;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

public class BayarPBBStepDefinition {

    private CheckoutPage checkoutPage = new CheckoutPage();
    private BayarPBBPage bayarPBBPage = new BayarPBBPage();
    private DashboardPage dashboardPage = new DashboardPage();
    private MetodePembayaranPage metodePembayaranPage = new MetodePembayaranPage();
    private KonfirmasiPembayaranEWalletPage konfirmasiPembayaranEWalletPage = new KonfirmasiPembayaranEWalletPage();
    private PembayaranBerhasilPage pembayaranBerhasilPage = new PembayaranBerhasilPage();
    private KonfirmasiPembayaranVirtualAccountPage konfirmasiPembayaranVirtualAccountPage = new KonfirmasiPembayaranVirtualAccountPage();
    private ProfilePage profilePage = new ProfilePage();
    private HistoriPage historiPage = new HistoriPage();

    @Given("user tap on Bayar PBB button")
    public void userTapOnBayarPBBButton() {
        dashboardPage.clickBayarPBBButton();
    }

    @When("user choose {string} as province")
    public void userChooseAsProvince(String province) {
        bayarPBBPage.selectProvinsi(province);
    }

    @And("user choose {string} as city")
    public void userChooseAsCity(String city) {
        bayarPBBPage.selectCity(city);
    }

    @And("user input {string} as tax number")
    public void userInputAsTaxNumber(String taxNumber) {
        bayarPBBPage.inputNomorPajak(taxNumber);
    }

    @And("user input {string} as year")
    public void userInputAsGear(String year) {
        bayarPBBPage.selectYear(year);
    }

    @And("user tap Cek Tagihan")
    public void userTapLanjut() {
        bayarPBBPage.clickLanjut();
    }

    @Then("user directed to checkout page and user see {string} label")
    public void userDirectedToCheckoutPageAndUserSeeLabel(String label) {
        String checkoutLabel = checkoutPage.getCheckoutLabel();
        Assert.assertEquals(label, checkoutLabel);
    }

    @When("user tap Bayar")
    public void userTapBayar() {
        checkoutPage.clickBayarButton();
    }

    @Then("user directed to metode pembayaran page and see {string} label")
    public void userDirectedToMetodePembayaranPageAndSeeLabel(String pembayaranLabel) {
        String pembayaran = metodePembayaranPage.getPembayaranLabel();
        Assert.assertEquals(pembayaranLabel, pembayaran);
    }

    @When("user tap e-wallet method")
    public void userTapEWalletMethod() {
        metodePembayaranPage.clickOnEWalletMenu();
    }

    @Then("user directed to konfirmasi pembayaran e-wallet page and see {string} label")
    public void userDirectedToKonfirmasiPembayaranEWalletPageAndSeeLabel(String labelKonfirmasi) {
       String labelKonfirmasiPembayaran = konfirmasiPembayaranEWalletPage.getKonfirmasiPembayaranLabel();
       Assert.assertEquals(labelKonfirmasi, labelKonfirmasiPembayaran);
    }

    @When("user tap konfirmasi button")
    public void userTapKonfirmasiButton() {
        konfirmasiPembayaranEWalletPage.clickOnKonfirmasiButton();
    }

    @Then("user directed to pembayaran berhasil page and see selesai button")
    public void userDirectedToPembayaranBerhasilPageAndSeeSelesaiButton() {
        boolean status = pembayaranBerhasilPage.isOnPembayaranBerhasilPage();
        Assert.assertTrue(status);
    }

    @When("user tap selesai button")
    public void userTapSelesaiButton() {
        pembayaranBerhasilPage.clickSelesaiButton();
    }

    @Then("user directed to konfirmasi pembayaran virtual account page and see {string} label")
    public void userDirectedToKonfirmasiPembayaranVirtualAccountPageAndSeeLabel(String labelKonfirmasi) {
        Assert.assertTrue(konfirmasiPembayaranVirtualAccountPage.isOnRegisterPage());
        Assert.assertEquals(labelKonfirmasi, konfirmasiPembayaranVirtualAccountPage.getLabelKonfirmasiPembayaran());
    }

    @When("user input {string} in input pin page")
    public void userInputInInputPinPage(String pin) {
        WebElement inputPIN = AndroidDriverInstance.androidDriver.findElement(By.id("edit_text_pin"));
        inputPIN.sendKeys(pin);
    }

    @Then("user directed to input pin page")
    public void userDirectedToInputPinPage() {
    }

    @Then("user tap profile button")
    public void userTapProfileButton() {
        dashboardPage.clickProfileButton();
    }

    @Then("user tap logout button")
    public void userTapLogoutButton() {
        profilePage.clickLogoutButton();
    }

    @Then("user tap histori button")
    public void userTapHistoriButton() {
        profilePage.clickHistoriButton();
    }

    @Then("user tap back button in histori page")
    public void userTapBackButtonInHistoriPage() {
        historiPage.clickBackButton();
    }

    @Then("user see {string} histori of bayar pbb")
    public void userSeeHistoriOfBayarPbb(String suksesStatus) {
        String actualSukses = historiPage.getTextSukses();
        Assert.assertEquals(suksesStatus, actualSukses);
    }

    @When("user tap BanK Transfer VA {string} method")
    public void userTapBanKTransferVAMethod(String bankName) {
        metodePembayaranPage.tapBankTransfer(bankName);
    }

    @Then("user see saya sudah bayar button")
    public void userSeeSayaSudahBayarButton() {
        boolean status = konfirmasiPembayaranVirtualAccountPage.checkSayaSudahBayarButton();
        Assert.assertTrue(status);
    }

    @When("user tap back button in konfirmasi pembayaran page")
    public void userTapBackButtonInKonfirmasiPembayaranPage() {
        konfirmasiPembayaranVirtualAccountPage.clickBackButton();
    }

    @When("user tap back button in bayar pbb page")
    public void userTapBackButtonInBayarPbbPage() {
        bayarPBBPage.clickBackButton();
    }
}
