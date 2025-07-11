*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${slow}    2s

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    4x    5s    Click Element    ${locator}
    sleep    ${slow}
Wait until element is ready then Click Button
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    2x    2s    Click Element    ${locator}
    sleep    ${slow}
Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    2x    3s    Input text     ${locator}    ${text}
    Sleep    ${slow}
Wait until page contains element then verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    1x    5s    Page Should Contain         ${expected_text}
    Sleep    ${slow}