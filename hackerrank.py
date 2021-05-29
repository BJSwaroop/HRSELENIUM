import selenium
from selenium import webdriver
import time
from webdriver_manager.chrome import ChromeDriverManager
from selenium.common.exceptions import ElementClickInterceptedException


driver = webdriver.Chrome(ChromeDriverManager().install())

class user_login:
    def __init__(self):
            driver.get('https://www.hackerrank.com/login')
            m = driver.find_element_by_name("username")
            m.send_keys("********")
            m = driver.find_element_by_name("password")
            m.send_keys("**********")
            driver.find_element_by_css_selector(".ui-btn.ui-btn-primary").click()

    def student_submissions(self,name):
            u ="https://www.hackerrank.com/contests/test-contest00/judge/submissions/team/{}"
            driver.get(u.format(name))
hr = user_login()
hr.student_submissions("20PA1A0412")
            
            
            



