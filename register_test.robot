*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  resources.robot
Resource  product_variables.robot

TEST SETUP  StartHOME
TEST TEARDOWN  Stop

*** Test Cases ***
Go to Register Page
  Click Element  //*[@id="top-links"]/ul/li[2]/a/span[2]
  Click Link  Register
  Page should contain  ${HAVEACCOUNT}
Registration
  Click Element  //*[@id="top-links"]/ul/li[2]/a/span[2]
  Click Link  Register
  Input text  name=firstname  Tomek
  Input text  name=lastname  p2k
  Input text  name=email  pdd4522@k.pl
  Input text  name=telephone  111111111
  Input text  name=password  1234
  Input text  name=confirm  1234
  select checkbox  name=agree
  Click button  Continue
  Page should contain  ${GRATS}
  Click link  Continue
  Page should contain  Logout