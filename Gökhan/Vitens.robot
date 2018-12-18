*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                      https://www.vitens.nl/
${BROWSER}                  chrome
${SELENIUM_SPEED}           3  
${SELENIUM_IMPLICIT_WAIT}   3

*** Test Cases ***
TC4 - Login
    # Set Selenium Speed          ${SELENIUM_SPEED}
    # Set Selenium Implicit Wait  ${SELENIUM_IMPLICIT_WAIT}
 
    
    
    
    
  
  #  Add Cookie     foo bar expiry=2027-09-28 16:21:35 # Expiry as timestamp. 
  #  Add Cookie     foo bar expiry=1822137695 # Expiry as epoch seconds 


    Open Browser    ${URL}    ${BROWSER}
    
    Add Cookie      cookiesaccepted    true    domain=www.vitens.nl         
    Go to           ${URL}    
    Click Element    xpath=(/html/body/div[1]/header/div[1]/div/div/div[2]/div/div[1]/ul[1]/li[5]/a/span/span[2])    
    #Cookie weghalen dmv klikken
   
   # Click Element    xpath=(/html/body/div[1]/div[2]/div/div/div/div/div[2]/div/div[1]/div/button)
    
  #  Set Cookie
    
    
    # Click Link	        //a[@href="/FanClub/Login.aspx"]
    # Input Text          //input[@name="ctl00$ContentPlaceHolder1$txtKullaniciAdi"]    sg.gurbuz50@hotmail.com
    # Click Element        xpath=(//div[@class="formLabelShorter"])[2]
    # Input Text            //input[@name="ctl00$ContentPlaceHolder1$txtSifre"]    Kozakli_50
    # Click Element        //input[@name="ctl00$ContentPlaceHolder1$btnLogin"]
    # Click Link        //a[@id="aMatches"]
    # Click Link        //a[@id="aContact"]
    # Click Link        //a[@id="aNews"]
    # Click Element    //div[@id="dlHaberler_divImage_0"]
    # Click Link        //a[@href="/FanClub/Logout.aspx"]
    # Close Browser





# ${SELENIUM_SPEED}           15 
# ${SELENIUM_IMPLICIT_WAIT}   15

# --  Bij speed en wait heb ik het gevoel dat de run niet langzaam speelt maar snel.

# --  Wil je mij even helpen?
