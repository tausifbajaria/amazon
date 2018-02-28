*** Settings ***
Documentation  This is some basic info about the suit
Resource  Z:/Automation/robot-scripts/amazon/Resources/Amazon.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/Common.robot
Suite Setup  Inserting Test Data
Suite Teardown  Cleanup Test Data
Test Setup  Open the browser
Test Teardown  Close the browser


*** Variables ***


*** Test Cases ***
User should be able to search and select the product
    [Documentation]  This test case is to check wheather the user is able to select the product searched for.
    [Tags]  Smoke
    Amazon.Search product
    Amazon.Select product

User must signin to checkout
    [Documentation]  This test case is to verify that the user who has not signed in should navigate to sign in page when checking out.
    [Tags]  Smoke
    Amazon.Search product
    Amazon.Select product
    Amazon.Add product to cart
    Amazon.Proceed to checkout
    Amazon.Verify user navigated to Signin