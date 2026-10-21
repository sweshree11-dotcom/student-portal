from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()

driver.get("http://localhost:3000")

driver.find_element(By.ID, "login").click()

error = driver.find_element(By.ID, "error").text

print(error)

driver.quit()

pip install selenium
node server.js
python test.py
