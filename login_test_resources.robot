*** Variables ***
${URL}=  https://rekrutacjaqa2.xsolve.software/index.php?route=account/login
${BROWSER}=  chrome
${EMAIL}=  murinus.dot@gmail.com
${PASS}=  123qwe
${WRONG_EMAIL}=  asd@asd.pl
${WRONG_PASS}=  111
*** Keywords ***
Start
  Open Browser  ${URL}  browser=${BROWSER}
Stop
  Close All Browsers