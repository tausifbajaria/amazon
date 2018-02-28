*** Settings ***
Library  Selenium2Library

*** Keywords ***
Open the browser
    Open Browser  about:blank  edge

Close the browser
    close browser

Inserting Test Data
    log  I am inserting test data...

Cleanup Test Data
    log  I am clearing test dat