*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    			  https://www.kras.nl/
${BROWSER}    		  chrome
${SELENIUM_SPEED}           1
${SELENIUM_IMPLICIT_WAIT}   1
${CODE_EU}                  EU:355
${CODE_P}                   P_2019_05
${CODE_PICKUP}              1h39635_0_AA_6800
${TITLE_BASE}               Welkom bij Kras!
${TITLE_BUSREIS}            Busreis In het spoor van de Ottomanen

*** Test Cases ***
TC6 – Boek vakantie
    Given Initaliseer Selenium 
    Given Start Browser Sesie
    Given Cookies Accepteren
    Given Rondreizen
    Given Busreis In het spoor van de Ottomanen
    Given Bekijk Prijzen
    # Given Boek nu
    Given Plaats van vertrek
    Given Kamer toevoegen 
    Close Browser

*** Keywords ***
Initaliseer Selenium
    Set Selenium Speed                ${SELENIUM_SPEED}
    Set Selenium Implicit Wait        ${SELENIUM_IMPLICIT_WAIT}

Start Browser Sesie
    Open Browser                      ${URL}    ${BROWSER}
    Maximize Browser Window

Cookies Accepteren
    Wait Until Element Is Visible    alertsWrap
    Click Element    xpath=(//*[@id="cookieWrap0"]/div/button)

Rondreizen
    Click Link    //a[@href="https://www.kras.nl/rondreis"]
    Select From List By Value    //select[@name="areaid"]    ${CODE_EU}  
    Select From List By Value    //select[@name="period"]    ${CODE_P}    
    Click Element    xpath=(//*[@id="qsBtn"])
    
 Busreis In het spoor van de Ottomanen   
    Click Element    //img[@title="Busreis In het spoor van de Ottomanen"]
    Click Element    //li[@id="tab_PRIJS"]
    Click Element   //li[@id="tab_INB"]   
    Scroll Element Into View        xpath=(//*[@id="INB"])
    
Bekijk Prijzen
    Click Element    //button[@id="bookknop"]
    Click Element    xpath=(//*[@id="priceSelect"]/div/div[3]/div/div/div[3])
    
# Boek nu
    # Click Element    xpath=(//*[@id="bookknop"])
 
Plaats van vertrek  
    Select From List By Value    //select[@name="trans_pickup"]    1h39635_0_AA_6800
    Click Element    //button[@id="bookknop"]
    
Kamer toevoegen 
    Click Element    //div[@class="cta"]
    Click Element    //div[@class="cta booknext flR mT10 mB20"]
