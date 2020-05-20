package demo.hooks;

import demo.webdriver.AndroidDriverInstance;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class AndroidDriverHooks {

    @Before
    public void initializeWebdriver() {
        AndroidDriverInstance.initialize();
    }

    @After
    public void quitWebdriver() {
        AndroidDriverInstance.quit();
    }

}
