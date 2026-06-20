function authenticate(helper, paramsValues, credentials) {

    var By = org.openqa.selenium.By;

    helper.openUrl(paramsValues.get("LoginURL"));

    var wd = helper.getWebDriver();

    java.lang.Thread.sleep(5000);

    wd.findElement(
        By.id("user-name-input")
    ).sendKeys(
        credentials.getParam("username")
    );

    wd.findElement(
        By.id("password-input")
    ).sendKeys(
        credentials.getParam("password")
    );

    wd.findElement(
        By.id("login-button")
    ).click();

    java.lang.Thread.sleep(15000);

    return true;
}
