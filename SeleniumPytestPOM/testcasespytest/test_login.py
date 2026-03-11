import time

import pytest

from Others.pages.Login_page import LoginPage
from Others.tests.utilities.logger import get_logger
from Others.tests.utilities.excel_utils import get_excel_data

logger=get_logger()
test_data=get_excel_data("/testdata/login_data.xlsx", sheet_name="login_data")

class TestLogin:

    def test_valid_login(self, driver):

        logger.info("Opening website")
        driver.get("https://opensource-demo.orangehrmlive.com/")
        time.sleep(3)

        # create the object of login_page
        lp = LoginPage(driver)
        logger.info("Entering credentials")
        lp.login(username="Admin", password="admin123")

        time.sleep(2)
        assert "OrangeHRM" in driver.title

    def test_invalid_login(self, driver):
        logger.info("Opening website")
        driver.get("https://opensource-demo.orangehrmlive.com/")
        time.sleep(3)

        # create the object of login_page
        lp = LoginPage(driver)
        logger.info("Entering credentials")
        lp.login(username="Admin", password="wrongpassword")

        time.sleep(2)
        assert "Invalid credentials" in lp.get_error_message()

    # test data stored in excel sheet
    @pytest.mark.parametrize("username, password", test_data)
    def test_login_excel(self, driver, username, password):
        logger.info("Opening application")
        driver.get("https://opensource-demo.orangehrmlive.com/")
        time.sleep(3)

        # create the object of login_page
        lp = LoginPage(driver)
        lp.login(username, password)

        if password == "admin123":
            assert "OrangeHRM" in driver.title
        else:
            assert "Invalid credentials" in lp.get_error_message()
