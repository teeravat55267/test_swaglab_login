*** Settings ***
Library     SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
user login to swaglab platform with ${username} and ${password} 
    CommonKeywords.Wait until element is ready then input text        id=user-name    ${username}
    CommonKeywords.Wait until element is ready then input text        id=password     ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=//input[@id="login-button"]    

swaglab should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}