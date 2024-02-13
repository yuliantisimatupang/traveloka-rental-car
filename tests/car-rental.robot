*** Settings ***
Documentation    Rental car
Library    SeleniumLibrary
Variables    ../resources/locator/rentalCar_locator.py
Resource    ../resources/step-rent-car.robot

*** Test Cases ***
Car Rental
    Open Browser    https://www.traveloka.com/    chrome
    Maximize Browser Window
    FILTER FROM HOMEPAGE

    # SELECT CAR AND PROVIDER
    Wait Until Element Is Visible    ${select_car}
    Click Element    ${select_car}
    Click Element    ${select_car_provider}

    PICKUP SECTION

    # DROP OFF SECTION
    Wait Until Element Is Not Visible    ${dropdown_rentalOffice_pickup_loc}
    Sleep    5s
    Wait Until Element Is Visible    ${radioBtn_otherLocation_dropoff}
    Click Element    ${radioBtn_otherLocation_dropoff}
    Click Element    ${dropdown_otherLocation_dropoff}
    Click Element    ${list_dropdown_otherLocation_dropoff}
    Wait Until Element Is Visible    ${add_notes}
    Click Element    ${add_notes}
    Input Text    ${add_notes}    "Gate 2E"
    Wait Until Element Is Visible    ${btn_continue_productDetail}
    Click Element    ${btn_continue_productDetail}

    # Manually select image recaptcha
    Sleep   20s
    
    # Continue Step
    Wait Until Element Is Visible    ${label_contact_detail}
    Input Text    ${input_fullname_user}    user1
    Input Text    ${input_phone_user}    89898857878
    Input Text    ${input_email_user}    user1@yopmail.com
    Select From List By Value    ${dropdown_title_driver}    MRS
    Input Text    ${input_fullname_driver}    driver1
    Input Text    ${input_phone_driver}    89898857871
    Scroll Element Into View    ${btn_continue_contact_detail}
    Click Element    ${btn_continue_contact_detail}

    # Payment Step
    Input Text    ${input_special_req}    testOne1
    Click Element    ${btn_check_require}
    Click Element    ${btn_check_all_require}
    Scroll Element Into View    ${btn_save_require}
    Click Element    ${btn_save_require}
    Click Element    ${btn_continue_to_payment}
    Wait Until Element Is Visible    ${btn_continue_payment_send}
    Click Element    ${btn_continue_payment_send}

    Close Browser