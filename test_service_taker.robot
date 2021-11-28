*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${URL}    https://vaccine-haven.herokuapp.com/
${BROWSER}        Firefox
${CITIZEN_ID}   9621054604817
${SITE_NAME}  OGYHSite
${VACCINE_NAME}    Pfizer

*** Keywords ***
Open the Browser 
    Set Selenium Speed    0.5 seconds
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be  Vaccine Haven
    Maximize Browser Window

Verify the Registration
    Wait Until Page Contains    Citizen Registration
    Page Should Contain Button  Register

Verify the Reservation
    wait Until Page Contains    Vaccine Reservation
    Page Should Contain Button  Reserve Vaccine

Visit The Reservation Page
    Click Element   id:reserve__link

Fill the Reservation
    Input Text                  id:citizen_id    ${CITIZEN_ID}
    Select From List By Value   id:site_name     ${SITE_NAME}
    Select From List By Value   id:vaccine_name  ${VACCINE_NAME}
    Click Element               id:reserve__btn
    Wait Until Page Contains Element  id:splash-img

Visit My info Page
    Click Element   id:nav__info__link

Fill the CITIZEN_ID
    Input Text      id:citizen_id  ${CITIZEN_ID}
    Click Element   id:info__btn

Visit The Reservation Page Info
    Wait Until Page Contains Element   id:cancel__btn
    Page Should Contain  ${SITE_NAME}
    Page Should Contain  ${VACCINE_NAME}

Cancel 
    Wait Until Page Contains Element   id:cancel__btn
    Click Element                      id:cancel__btn

*** Test Cases ***
Valid Browser
    Open the Browser
    Verify the Registration
    Verify the Reservation
    
Create a new Reservation
    Visit The Reservation Page
    Fill the Reservation

Verify The Created Reservation
    Visit My info Page
    Fill the CITIZEN_ID
    Visit The Reservation Page Info

Cancel the Reservation
    Cancel

Verify the Cancel
    Visit My info Page
    Fill the CITIZEN_ID
    Page Should Not Contain            ${SITE_NAME}
    [Teardown]                         Close Browser