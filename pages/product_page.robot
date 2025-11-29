*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot

*** Variables ***
# ===== Locators =====
${ADD_TO_CART_BTN}    //div[@class='sticky w-full top-36']//button[normalize-space()='Add to cart']

*** Keywords ***
Add Product To Cart
    Wait Until Element Is Visible    ${ADD_TO_CART_BTN}
    Click Element    ${ADD_TO_CART_BTN}
