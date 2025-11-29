*** Settings ***
Resource      ../../pages/home_page.robot
Resource      ../../pages/search_results_page.robot
Resource      ../../pages/product_page.robot
Resource      ../../pages/cart_page.robot

Test Setup    Open BTech Home Page
Test Teardown    Close Browser
*** Test Cases ***
Add Product To Cart
    Search For Product    iphone16
    Select First Product
    Verify First Product Has Image
    Add Product To Cart
    Go To Cart
    Validate Cart Has Items
