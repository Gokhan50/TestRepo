*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SELENIUM_IMPLICIT_WAIT}   50

*** Test Cases ***
TC1: Inloggen en uitloggen vakantieveilingen
    Open Browser    https://www.vakantieveilingen.nl/    ${BROWSER}
    Click Link    //a[@href="/login.html?backUrl=%2F"]
    Input Text    //input[@name="login"]    sg.gurbuz50@hotmail.com
    Input Text    //input[@name="password"]    Fanatik50
    Click Element    //input[@class="btn btn-fake btn-orange btn-login-submit"]
    Click Element    //span[@class="meta-link-item"]
    Go to    https://www.vakantieveilingen.nl/logout.html
    Close Browser