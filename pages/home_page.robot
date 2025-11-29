*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot


*** Variables ***
# ===== Locators =====
${BTECH_URL}          https://btech.com/en
${SEARCH_INPUT}       (//input[@placeholder='What are you looking for?'])[1]


*** Keywords ***
Open BTech Home Page
    Open Browser    ${BTECH_URL}    chrome 
    # Open Browser    ${BTECH_URL}    chrome  options=add_argument("--headless")
    Maximize Browser Window

Search For Product
    [Arguments]    ${PRODUCT}
    Wait Until Element Is Visible    ${SEARCH_INPUT}
    Input Text    ${SEARCH_INPUT}    ${PRODUCT}
    Press Keys    ${SEARCH_INPUT}    ENTER
    # Sleep   5S
