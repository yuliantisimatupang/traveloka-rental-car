*** Settings ***
Documentation    Rental car
Library    SeleniumLibrary

*** Test Cases ***
Puzzle Number
    Open Browser    https://zzzscore.com/1to50/en/    chrome
    Maximize Browser Window
    Scroll Element Into View    xpath://div[@data-layout="button"]
    Execute Javascript    document.body.style.zoom="80%"
    FOR    ${number}    IN RANGE    1    51
        Wait Until Element Is Visible    xpath://*[@id="grid"]/div[normalize-space() = '${number}']/span
        Click Element    xpath://*[@id="grid"]/div[normalize-space() = '${number}']/span
    END
    Sleep    2s
    Close Browser