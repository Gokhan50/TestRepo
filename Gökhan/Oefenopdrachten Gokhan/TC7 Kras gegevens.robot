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
${FIRSTNAME_1}              Gokhan
${LASTNAME_1}               Gurbuz
${SELECT_BOX_DATE_1}        30
${SELECT_BOX_MONTH_1}       07
${SELECT_BOX_YEAR_1}        1985
${FIRSTNAME_2}              Sevim
${LASTNAME_2}               Gurbuz-Karadas
${SELECT_BOX_DATE_2}        09
${SELECT_BOX_MONTH_2}       04
${SELECT_BOX_YEAR_2}        1989
${POSTALCODE}               6826HC
${NUMBER}                   78
${ADDITION}                 3
${EMAIL}                    sg.gurbuz50@hotmail.com
${PHONE}                    0634623434
${PHONE_HOME}               0634623434


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
    Given Vul uw gegevens in
    # Close Browser

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
    
Vul uw gegevens in         
    Click Element    //label[@for="pax_title_11"]
    Input Text    //input[@name="pax_firstname_1"]    ${FIRSTNAME_1}
    Input Text    //input[@name="pax_lastname_1"]    ${LASTNAME_1}
    Select From List By Value    xpath=(//select)[5]    ${SELECT_BOX_DATE_1} 
    Select From List By Value    xpath=(//select)[6]   ${SELECT_BOX_MONTH_1} 
    Select From List By Value    xpath=(//select)[7]    ${SELECT_BOX_YEAR_1} 
    Click Element    //label[@for="pax_title_22"]
    Input Text    //input[@name="pax_firstname_2"]    ${FIRSTNAME_2}
    Input Text    //input[@name="pax_lastname_2"]    ${LASTNAME_2}
    Select From List By Value    xpath=(//select)[8]    ${SELECT_BOX_DATE_2} 
    Select From List By Value    xpath=(//select)[9]    ${SELECT_BOX_MONTH_2} 
    Select From List By Value    xpath=(//select)[10]    ${SELECT_BOX_YEAR_2}
    Click Element    xpath=(//li[@class="radio"])[5]
    Input Text    //input[@name="deb_postalcode"]    ${POSTALCODE} 
    Input Text    //input[@name="deb_number"]    ${NUMBER}
    Input Text    //input[@name="deb_addition"]    ${ADDITION}
    Input Text    //input[@name="deb_email"]    ${EMAIL}
    Input Text    //input[@name="deb_phone"]   ${PHONE} 
    Click Element    xpath=(//fieldset)[4]
    Input Text    //input[@name="bd_phonehome"]    ${PHONE_HOME}
    Click Element    xpath=(//div[@class="formRow"])[10]
    
