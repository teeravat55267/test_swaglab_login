*** Settings ***
Library    SeleniumLibrary
Resource   ../CommonKeywords/CommonKeywords.robot
Resource   ../CommonKeywords/LoginKeywords.robot
Variables  ../Resources/config/config.yaml
Variables  ../Resources/testdata.yaml
Suite Setup   Open Browser    ${baseUrl}    chrome
Suite Teardown   Close Browser 
####asjhdgfkasbd

*** Test Cases ***
As a user, I want to login success with valid credential
    when user login to swaglab platform with ${username} and ${invalid_password}
    
   
As a user, I fail to login with invalid credential
    When user login to swaglab platform with ${username1} and ${valid_password}
    Then swaglab should display display validate login fail message as "Epic sadface: Username and password do not match any user in this service"
    
user want shopping to product
    
    CommonKeywords.Wait until element is ready then Click Button    xpath=//button[contains(@class, 'btn_inventory') and normalize-space(text())='ADD TO CART']
    CommonKeywords.Wait until element is ready then Click Button    xpath=//div[@class="pricebar"][.//div[text()="$15.99"]]//button[contains(@class, "btn_inventory") and normalize-space(text())="ADD TO CART"]
    CommonKeywords.Wait until element is ready then Click Button    xpath=//div[@class="pricebar"][.//div[text()="$9.99"]]//button[contains(@class, "btn_inventory") and normalize-space(text())="ADD TO CART"]

