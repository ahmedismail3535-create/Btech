*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot


*** Variables ***
# ===== Locators =====
${badge_locator}      //*[@alt='cart']/following-sibling::span
${CART}               //img[@alt='cart']
${CART_ITEM}          (//div[@class='flex flex-col px-small'])[1]

*** Keywords ***
Go To Cart
    Wait Until Element Is Visible    ${badge_locator}
    Click Element    ${CART}

Validate Cart Has Items
    Wait Until Element Is Visible    ${CART_ITEM}
    
