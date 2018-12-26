*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.ns.nl/
${BROWSER}    chrome
${SELENIUM_SPEED}           1
${SELENIUM_IMPLICIT_WAIT}   1

*** Test Cases ***
TC7 - Plan je route     
    Set Selenium Speed           ${SELENIUM_SPEED}
    Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT} 
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    r42CookieBar  
    Select Frame    r42CookieBar
    Click Link       //a[@href="javascript:send('popup_accept')"]
    Unselect Frame       
    Input Text    xpath=(//*[@id="location-input-FROM-POSITIONED"])    Arnhem Centraal
    Click Element    xpath=(//strong)[2]
    Input Text    xpath=(//input[@name="TO"])[2]    Schiphol Airport
    Click Element    xpath=(//span[@class="autosuggestItem"])[11]      
    Click Element    xpath=( //*[@id="mainContent"]/div/div[2]/div/div/div/div[2]/rio-pbm-planbar/form/div[1]/div[3]/button[3])
    Close Browser