*** Settings ***
Library  SeleniumLibrary
Resource  login_test_resources.robot

TEST SETUP  Start
TEST TEARDOWN  Stop

*** Test Cases ***
Valid Login test
  Input Text  name=email  ${EMAIL}
  Input Text  name=password  ${PASS}
  Click Button  Login
  Page Should Contain Link  Logout
  Page Should Not Contain  Warning: No match for E-Mail Address and/or Password

Invalid Login test
  Input Text  name=email  #wpisz niezarejestrowawny email
  Input Text  name=password  #podaj fakowe hasło
  Click Button  Login
  Page Should Contain  Warning: No match for E-Mail Address and/or Password
  Page Should Contain  Warning: Your account has exceeded allowed number of login attempts. Please try again in 1 hour.

Warning after 5 login tries without credentials
  Click button  Login
  Click button  Login
  Click button  Login
  Click button  Login
  Click button  Login
  Page Should Contain  Warning: Your account has exceeded allowed number of login attempts. Please try again in 1 hour.




