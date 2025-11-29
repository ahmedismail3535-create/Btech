*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Variables ***
# ===== Locators =====
${PRODUCT_IMAGE}      (//img[@alt='product image'])[3]
${FIRST_PRODUCT}      (//article[contains(@class,'bg-absoluteLight')])[1]//a[@href]

*** Keywords ***
Select First Product
    Wait Until Keyword Succeeds    20s    500ms    Location Should Contain    iphone16
    Click Element    ${FIRST_PRODUCT}

Verify First Product Has Image
    Wait Until Element Is Visible    ${PRODUCT_IMAGE}
    Element Should Be Visible        ${PRODUCT_IMAGE}


