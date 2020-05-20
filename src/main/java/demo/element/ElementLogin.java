package demo.element;

import io.appium.java_client.MobileBy;
import org.openqa.selenium.By;

public interface ElementLogin {
    By IMAGE_MYWALLET = MobileBy.id("text_view_app_name");
    By INPUT_EMAIL = MobileBy.id("edit_text_email_login");
    By INPUT_PASSWORD = MobileBy.id("edit_text_password_login");
    By BUTTON_MASUK = MobileBy.id("button_login_register");

    String imageMyWallet = "text_view_app_name";

    String editTextEmail = "edit_text_email_login";
    String editTextPassword = "edit_text_password_login";
    String buttonMasukRegister = "button_login_register";

    String editTextName_register = "edit_text_name_register";
    String editTextEmail_register = "edit_text_email_register";
    String editTextPhone_register = "edit_text_phone_register";
    String getEditTextPassword_register = "edit_text_email_register";
    String editTextPasswordConfirmation_register = "edit_text_password_confirmation_register";


}
