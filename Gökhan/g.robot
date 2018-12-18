*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${SELENIUM_SPEED}           4  
${SELENIUM_IMPLICIT_WAIT}   4

*** Test Cases ***
TC4 - Login
    Set Selenium Speed           ${SELENIUM_SPEED}
    Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT}
    Open Browser        https://taraftarkulubu.tff.org/FanClub/Login.aspx    ${BROWSER}
    Click Link	        //a[@href="/FanClub/Login.aspx"]
    Input Text          //input[@name="ctl00$ContentPlaceHolder1$txtKullaniciAdi"]    sg.gurbuz50@hotmail.com
    Click Element        xpath=(//div[@class="formLabelShorter"])[2]
    Input Text            //input[@name="ctl00$ContentPlaceHolder1$txtSifre"]    Kozakli_50
    Click Element        //input[@name="ctl00$ContentPlaceHolder1$btnLogin"]
    Click Link        //a[@id="aMatches"]
    Click Link        //a[@id="aContact"]
    Click Link        //a[@id="aNews"]
    Click Element    //div[@id="dlHaberler_divImage_0"]
    Click Link        //a[@href="/FanClub/Logout.aspx"]
    Close Browser





# ${SELENIUM_SPEED}           15 
# ${SELENIUM_IMPLICIT_WAIT}   15

# --  Bij speed en wait heb ik het gevoel dat de run niet langzaam speelt maar snel.

# --  Wil je mij even helpen?
