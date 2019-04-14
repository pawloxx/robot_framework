*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  register_test_resources.robot

TEST SETUP  Start
#TEST TEARDOWN  Stop

*** Test Cases ***
Go to Register Page
  Click Element  //*[@id="top-links"]/ul/li[2]/a/span[2]
  Click Link  Register
  Page should contain  If you already have an account with us, please login at the login page
  [Teardown]  Close browser
Registration
  Click Element  //*[@id="top-links"]/ul/li[2]/a/span[2]
  Click Link  Register
  Input text  name=firstname  Tomek
  Input text  name=lastname  p2k
  Input text  name=email  p@k.pl
  Input text  name=telephone  111111111
  Input text  name=password  1234
  Input text  name=confirm  1234
  select checkbox  name=agree
  Click button  Continue
  Page should contain  Congratulations! Your new account has been successfully created!