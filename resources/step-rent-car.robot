*** Settings ***
Library    SeleniumLibrary
Variables    locator/rentalCar_locator.py

*** Keywords ***
FILTER FROM HOMEPAGE
    Click Element    ${btn_car_rental}
    Wait Until Element Is Visible    ${btn_withoutDriver}
    Click Element    ${btn_withoutDriver}
    Click Element    ${input_location}
    Input Text    ${input_location}    Jakarta
    Wait Until Element Is Visible    ${dropdown_location}
    Click Element    ${dropdown_location}
    Click Element    ${rental_start_date}
    Wait Until Element Is Visible    ${select_start_date}
    Click Element    ${select_start_date}
    Click Element    ${start_time}
    Click Element    ${select_hour_start}
    Click Element    ${select_minutes_start}
    Click Element    ${rental_end_date}
    Wait Until Element Is Visible    ${select_end_date}
    Click Element    ${select_end_date}
    Click Element    ${end_time}
    Click Element    ${select_hour_end}
    Click Element    ${select_minutes_end}
    Click Element    ${btn_search_car}
    Element Text Should Be    ${expect_result}    Car Rental Without Driver

*** Keywords ***
PICKUP SECTION
    Wait Until Element Is Visible    ${radioBtn_rentalOffice_pickup_loc}
    Click Element    ${radioBtn_rentalOffice_pickup_loc}
    Click Element    ${dropdown_rentalOffice_pickup_loc}
    Scroll Element Into View    ${list_dropdown_rentalOffice}
    Click Element    ${list_dropdown_rentalOffice}