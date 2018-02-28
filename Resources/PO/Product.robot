*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    wait until page contains  Back to search results for "Ferrari 458"
    sleep  3s
Add to Cart
    click button  name=submit.add-to-cart