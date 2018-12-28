*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.ns.nl/
${BROWSER}    chrome
${SELENIUM_SPEED}           1
${SELENIUM_IMPLICIT_WAIT}   1

*** Test Cases ***
TC4 - Plan je route     
    Set Selenium Speed           ${SELENIUM_SPEED}
    Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT} 
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    r42CookieBar  
    Select Frame    r42CookieBar   
    Click Link       //a[@href="javascript:send('popup_accept')"]
    Unselect Frame          
    Input Text    xpath=(//input[@name="FROM"])[2]    Arnhem Centraal
    Click Link    //a[@id="location-input-suggestions-FROM-POSITIONED-0"]
    Input Text    xpath=(//input[@name="TO"])[2]    Utrecht Centraal
    Click Element    xpath=(//strong)[5]     
    Click Element    //button[@class="rppb-nav-button rppb-nav-button--later icon icon--chevronMedium icon--nsBlue icon--inline"]
    Click Element    //button[@class="button button--arrowRight rppb-plan-button"]
    Click Element    xpath=(//span[@class="rp-mogelijkheid__tijden"])[4]
    Click Element    xpath=(//span)[272]
    Click Element    xpath=(//*[@id="reisplanner-view"]/div/reisadvies/div/div/reisdetails/div/div/price/domestic-train-price/div/div[2]/div/a)
    # Click Element    xpath=(//span[@class="s-hidden m-visible l-visible"])[2]
    # Click Element    xpath=(//input[@name="travelType"])[2]
    Close Browser
    
    
    