*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SELENIUM_IMPLICIT_WAIT}   10

*** Test Cases ***
TC3 - Login
    Open Browser    https://www.expedia.nl/    ${BROWSER}
    Click Element    //button[@id="header-account-menu"]
    Click Link    //a[@id="account-signin"]    
    Input Text    //input[@name="signin-loginid"]    sg.gurbuz50@hotmail.com
    Input Text    //input[@name="signin-password"]    Kozakli_50
    Click Element    //button[@id="submitButton"]
    Close Browser