*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SELENIUM_SPEED}           10
${SELENIUM_IMPLICIT_WAIT}   10

*** Test Cases ***
TC1: Menu
    Open Browser    https://www.vakantieveilingen.nl/    ${BROWSER}
    Click Link    //a[@href="/login.html?backUrl=%2F"]
    Input Text    //input[@name="login"]    sg.gurbuz50@hotmail.com
    Input Text    //input[@name="password"]    Fanatik50
    Click Element    //input[@class="btn btn-fake btn-orange btn-login-submit"]
    Click Element    xpath=(//div[@class="menu-top"])[2]    
    Click Element    xpath=(//div[@class="menu-bottom"])[3]
    Click Element    xpath=(//div[@class="menu-top"])[6]
    Click Link    xpath=(//a[@href="/producten/huisdier.html"])[2]
    Click Element    //span[@class="meta-link-item"]
    Go to    https://www.vakantieveilingen.nl/logout.html
    Close Browser
    
    
    