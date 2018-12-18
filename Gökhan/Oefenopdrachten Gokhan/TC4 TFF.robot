*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://taraftarkulubu.tff.org/FanClub/Login.aspx
${BROWSER}    chrome
${SELENIUM_SPEED}           1
${SELENIUM_IMPLICIT_WAIT}   1

*** Test Cases ***
TC4 - TFF_Login
    Set Selenium Speed           ${SELENIUM_SPEED}
    Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT}
    Open Browser        ${URL}    ${BROWSER}
    Click Link             //a[@href="/FanClub/Login.aspx"]
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
