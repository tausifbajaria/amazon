*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "Ferrari 458"
    sleep  3s

Click Product Link
    [Documentation]  Clicks on the product in the search results list
    click link  xpath=//*[@id="result_2"]/div/div/div/div[2]/div[1]/div[1]/a
    sleep  3s