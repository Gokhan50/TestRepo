*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.ns.nl/producten/s/enkele-reis
${BROWSER}    chrome
${SELENIUM_SPEED}           1
${SELENIUM_IMPLICIT_WAIT}   1

*** Test Cases ***
TC6 - Koop kaartje      
    Set Selenium Speed           ${SELENIUM_SPEED}
    Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT} 
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    r42CookieBar  
    Select Frame    r42CookieBar
    Click Link       //a[@href="javascript:send('popup_accept')"]
    Unselect Frame
    Click Element    xpath=(//*[@id="ecmm"]/div/form/div[1]/div/div[1]/div[1]/div/div/div/fieldset/ul/li[1]/div/label)
    Input Text     //*[@id="displayStationFrom"]    Arnhem Centraal
    Input Text    //*[@id="displayStationTo"]    Utrecht Centraal
    Input Text    //*[@id="TO_1_Initials"]    Gokhan
    Input Text    //*[@id="TO_1_LastName"]    Gurbuz
    Click Button    //*[@id="ecmm"]/div/form/div[2]/div/div[2]/button
    Click Button    xpath=(//*[@id="ecmm"]/div[1]/div/div/form/div[3]/div[1]/div/div[2]/button)
    Input Text    //*[@id="CartDetailForm_Email"]    sg.gurbuz50@hotmail.com
    Click Element    xpath=(//*[@id="ecmm"]/div[1]/div/div/form/div[2]/div[1]/div[3]/div[1]/div/div[1]/label)
    Click Element    xpath=(//*[@id="ecmm"]/div[1]/div/div/form/div[2]/div[2]/div/div/ul/li[1]/div[1]/label)   
    Select From List By Value    //select[@name="Ideal.IssuerID"]    ABNANL2A
    Click Button    xpath=( //*[@id="ecmm"]/div[1]/div/div/form/div[3]/div[2]/div/div[2]/button)   
    Add Cookie    anonymousUserId    tr344b2462-6b18-4d5a-b5b2-9a528f60f9f7ue    domain=www.abnamro.nl
    Close Browser
    
    
   