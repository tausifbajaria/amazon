*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    wait until page contains  Sign in
    sleep  3s
    capture page screenshot