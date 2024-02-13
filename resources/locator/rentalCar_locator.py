btn_car_rental='xpath=//div[contains(text(),"Car Rental")]'
btn_withoutDriver='xpath=//h4[contains(text(),"Without Driver")]'
input_location='xpath=//input[@placeholder="Enter city or region"]'
dropdown_location='xpath=//div[@aria-label="Jakarta"]'
rental_start_date='xpath=//label/div[contains(text(),"Rental Start Date")]/../following-sibling::div[1]'
select_start_date='xpath=(//div[@data-testid="date-cell-15-2-2024"][1])[1]'
start_time='xpath=//input[@data-testid="rental-search-form-time-input-start"]'
select_hour_start='xpath=//div[contains(text(), "Hour")]/following-sibling::div/div/div/div/div[normalize-space() = "9"]'
select_minutes_start='//div[contains(text(), "Minute")]/following-sibling::div/div/div/div/div[normalize-space() = "0"]'
rental_end_date='xpath=//label/div[contains(text(),"Rental End Date")]/../following-sibling::div[1]'
select_end_date='xpath=(//div[@data-testid="date-cell-17-2-2024"][1])[2]'
end_time='xpath=//input[@data-testid="rental-search-form-time-input-end"]'
select_hour_end='xpath=//div[contains(text(), "Hour")]/following-sibling::div/div/div/div/div[normalize-space() = "9"]'
select_minutes_end='//div[contains(text(), "Minute")]/following-sibling::div/div/div/div/div[normalize-space() = "0"]'
btn_search_car='xpath=//div[@data-testid="rental-search-form-cta"]'
expect_result='xpath=//div[@aria-label="Breadcrumb"]/../../div[3]//h2'


# PICKUP 
select_car='xpath=(//div[contains(text(), "Continue")])[1]/..'
select_car_provider='xpath=(//div[contains(text(), "Continue")])[2]'
radioBtn_rentalOffice_pickup_loc='xpath=(//*[@id="RENTAL_PICKUP_LOCATION"]//div[contains(text(), "Rental Office")])[1]'
dropdown_rentalOffice_pickup_loc='xpath=(//*[@id="RENTAL_PICKUP_LOCATION"]//div[contains(text(), "Rental Office")])[2]'
list_dropdown_rentalOffice='xpath=(//*[@id="RENTAL_PICKUP_LOCATION"]//h4[contains(text(), "Pick-up Location")]/following-sibling::div/div[2]/div/div[not(@aria-disabled)])[1]'

# DROP OFF
radioBtn_otherLocation_dropoff='xpath=//*[@id="RENTAL_DROPOFF_LOCATION"]//div[contains(text(), "Other Locations")]'
dropdown_otherLocation_dropoff='xpath=//*[@id="RENTAL_DROPOFF_LOCATION"]//input[@placeholder="Search location or address"]'
list_dropdown_otherLocation_dropoff='xpath=(//*[@id="RENTAL_DROPOFF_LOCATION"]//h4[contains(text(), "Search location or address")]/..//following-sibling::div/div/div[2]//h3/../..)[1]'
add_notes='xpath=//textarea[@placeholder="Additional notes (optional)"]'
btn_continue_productDetail='xpath=(//div[contains(text(), "Continue")])[1]/..'

# Contact Detail
label_contact_detail='xpath=//h1[normalize-space()="Your Booking"]'
input_fullname_user='xpath=(//input[@aria-labelledby="name.full"])[1]'
input_phone_user='xpath=//input[@aria-label="Phone Number"]'
input_email_user='xpath=//input[@aria-labelledby="emailAddress"]'
dropdown_title_driver='xpath=//select[not(@aria-label)]'
input_fullname_driver='xpath=(//input[@aria-labelledby="name.full"])[2]'
input_phone_driver='xpath=//input[@aria-label="Phone Number"]'
btn_continue_contact_detail='xpath=//div[contains(text(), "Continue")]/../../div[@role="button"]'

# Last Confirmation Step
input_special_req='xpath=//textarea'
btn_check_require='xpath=//div[contains(text(), "Tap to check")]/../../../../div[@tabindex="0"]'
btn_check_all_require='xpath=//div[contains(text(), "Check All")]'
btn_save_require='xpath=//div[contains(text(), "Save")]/../../div[@role="button"]'
btn_continue_to_payment='xpath=//div[contains(text(), "Continue to Payment")]/../../div[@role="button"]'

btn_continue_payment_send='xpath=(//div[normalize-space()="Continue"]/../../div[@role="button"])[2]'