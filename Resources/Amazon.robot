*** Settings ***
Library  Selenium2Library
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/LandingPage.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/TopNav.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/SearchResults.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/Product.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/Cart.robot
Resource  Z:/Automation/robot-scripts/amazon/Resources/PO/SignIn.robot
*** Keywords ***
#push
Search product
    LandingPage.Load URL
    LandingPage.Verify page loaded
    TopNav.Search for Products
    SearchResults.Verify search completed
Select product
    SearchResults.Click Product Link
    Product.Verify Page Loaded
    Product.Add to Cart
Add product to cart
    Cart.Verify Product Added
Proceed to checkout
    Cart.Proceed to Checkout
Verify user navigated to Signin
    SignIn.Verify Page Loaded