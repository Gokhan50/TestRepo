*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.vitens.nl
${BROWSER}    chrome
# ${SELENIUM_SPEED}           2
# ${SELENIUM_IMPLICIT_WAIT}   2

*** Test Cases ***
TC5 - Vitens_Login      
    # Set Selenium Speed           ${SELENIUM_SPEED}
    # Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT} 
    Open Browser    ${URL}    ${BROWSER}
    Add Cookie    cookiesaccepted    true    domain=www.vitens.nl
    Go to    ${URL}
    Click Element    xpath=(/html/body/div[1]/header/div[1]/div/div/div[2]/a[1])
    Input Text    xpath=(//input[@name="UserName"])[2]    gs.gurbuz50@gmail.com
    Input Text    xpath=(//input[@name="Password"])[2]    Gokhan_5066
    Click Element      xpath=(/html/body/div[1]/div[1]/section/div/div/div/div[2]/div/div/div[1]/div/form/fieldset/button)   
    Close Browser
