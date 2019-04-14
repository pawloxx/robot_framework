*** Variables ***
${URL}=  https://rekrutacjaqa2.xsolve.software/index.php?route=common/home
${BROWSER}=  chrome

*** Keywords ***
Start
  Open Browser  ${URL}  browser=${BROWSER}
Stop
  Close All Browsers