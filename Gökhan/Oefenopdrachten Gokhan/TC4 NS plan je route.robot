*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                        https://www.ns.nl/
${BROWSER}                    chrome
${SELENIUM_SPEED}             1
${SELENIUM_IMPLICIT_WAIT}     0
${REIS_VAN}                   Arnhem Centraal
${REIS_NAAR}                  Utrecht Centraal
${TITLE_BASE}                 Welkom op de website van NS | NS
${TITLE_REISPLANNER}          Reisplanner | Reisinformatie | NS
${TITLE_KAARTJE_KOPEN}        Kaartje kopen | NS

*** Test Cases ***
TC4 - Plan je route     
    Given Initaliseer Selenium 
    Given Start Browser Sesie
    Given Cookies Accepteren
    When De reis van is "${REIS_VAN}"
    When De reis naar is "${REIS_NAAR}"
    When De reis plannen
    And Het kaartkoop scherm is zichtbaar
    When We een reismogelijkheid kiezen
    When We het kaartje kopen
    And Het volgende tabblad is zichtbaar "${TITLE_KAARTJE_KOPEN}"
    And We de type reis bepalen
    Close Browser

*** Keywords ***
Initaliseer Selenium
    Set Selenium Speed                ${SELENIUM_SPEED}
    Set Selenium Implicit Wait        ${SELENIUM_IMPLICIT_WAIT}

Start Browser Sesie
    Open Browser                      ${URL}    ${BROWSER}
    Maximize Browser Window
    
Cookies Accepteren
    Wait Until Element Is Visible     r42CookieBar  
    Select Frame                      r42CookieBar   
    Click Link                        //a[@href="javascript:send('popup_accept')"]
    Unselect Frame              

De reis van is "${expression}"
    Set Focus To Element              xpath=(//input[@name="FROM"])[2]
    Input Text                        xpath=(//input[@name="FROM"])[2]    ${expression}
    Click Link                        //a[@id="location-input-suggestions-FROM-POSITIONED-0"]

De reis naar is "${expression}"
    Set Focus To Element              xpath=(//input[@name="TO"])[2]
    Input Text                        xpath=(//input[@name="TO"])[2]    ${expression}
    Click Link                        //a[@id="location-input-suggestions-TO-POSITIONED-0"]

De reis plannen
    Click Button                      //button[@class="button button--arrowRight rppb-plan-button"]  

Het kaartkoop scherm is zichtbaar
    Wait Until Page Contains          Koop kaartje

We een reismogelijkheid kiezen   
    Click Element                     xpath=(//span[@class="rp-mogelijkheid__tijden"])[4]
    
We het kaartje kopen
    Scroll Element Into View          xpath=(//a[@class="button button--buy"])[2]
    Click Link                        xpath=(//a[@class="button button--buy"])[2]
   
Het volgende tabblad is zichtbaar "${expression}"    
   Select Window                      ${expression}
   Title Should Be                    ${expression}
   
We de type reis bepalen
   Click Element                      xpath=(//label[@for="return-ticket"])  



