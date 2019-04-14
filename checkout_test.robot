*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  checkout_test_resources.robot

TEST SETUP  Start
#TEST TEARDOWN  Stop
*** Test Cases ***
Adding Product 1 to Cart
  Click Link  Desktops
  Click button  //*[@id="content"]/div[3]/div[1]/div/div[2]/div[2]/button[1]
  Click link  Checkout


