import pandas as pd
from bs4 import BeautifulSoup
from selenium import webdriver


driver = webdriver.Chrome(executable_path='C:/Users/ironm/Downloads/chromedriver_win32/chromedriver.exe')
driver.get('http://livescore.tennis-data.co.uk')

results = []
content = driver.page_source # TO get the souce of the page
soup = BeautifulSoup(content) # This will parse the source code
driver.quit()
for element in soup.find_all(attrs='wff_event_participant_home_name'):
    name = element.find('span')
    if name not in element:
        results.append(name.text) # The .text functions takes the text out from the h2 class
print(results)
df = pd.DataFrame({"Names": results})
df.to_csv("names.csv", index= False, encoding='utf-8')