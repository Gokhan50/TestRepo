*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://www.intertoys.nl/shop/nl/intertoys
${BROWSER}    chrome
# ${SELENIUM_SPEED}           2
# ${SELENIUM_IMPLICIT_WAIT}   2

*** Test Cases ***
TC5 - Babyfoon zoeken     
    # Set Selenium Speed           ${SELENIUM_SPEED}
    # Set Selenium Implicit Wait     ${SELENIUM_IMPLICIT_WAIT} 
    Open Browser    ${URL}    ${BROWSER}
    Click Link    //a[@id="Header_GlobalLogin_signInQuickLink"]



                    //*[@id="Header_GlobalLogin_WC_AccountDisplay_links_3"]