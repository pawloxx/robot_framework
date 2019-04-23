*** Settings ***
Resource  product_variables.robot

*** Keywords ***
StartHOME
  Open Browser  ${URLHOME}  browser=${BROWSER}
StartLOGIN
  Open Browser  ${URLLOGIN}  browser=${BROWSER}
Stop
  Close All Browsers
