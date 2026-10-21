from selenium import webdriver
from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()

driver.get("http://localhost:3000")

time.sleep(2)

driver.find_element(By.XPATH, "//input[@ng-model='name']").send_keys("Arun")

driver.find_element(By.XPATH, "//input[@ng-model='dept']").send_keys("IT")

driver.find_element(By.XPATH, "//input[@ng-model='mark']").send_keys("85")

driver.find_element(By.XPATH, "//button[@ng-click='add()']").click()

time.sleep(2)

print("Student added successfully")

driver.quit()


