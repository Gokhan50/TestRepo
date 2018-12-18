*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.ns.nl/producten/s/enkele-reis
${BROWSER}    chrome


*** Test Cases ***
TC6 - Koop kaartje      
    Open Browser    ${URL}    ${BROWSER}
       
    #Wisselen tussen iFrames
    #Wisselen naar popup
        
    #wachten tot de popup zichtbaar is
    Wait Until Element Is Visible    r42CookieBar
    #wisselen naar de popup     
    Select Frame    r42CookieBar
    #klikken op de knop
    Click Link       //a[@href="javascript:send('popup_accept')"]
    #Terug gaan naar de main frame
    Unselect Frame

    #Hier je test
    
    Close Browser
