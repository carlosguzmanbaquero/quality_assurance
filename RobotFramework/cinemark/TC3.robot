***Settings***
Library  SeleniumLibrary

***Variables***
${browser}    chrome
${url}       https://es-la.facebook.com/

***Test Cases***
LoginTest
  open browser    ${url}  ${browser}
  loginToApplication
  close browser
  

***Keywords***
loginToApplication
  input text      id:email        carlosgb.cali@hotmail.com
  input text      id:pass        xxxxxx
  click Button    id:u_0_b
  sleep  10s
  Close all browsers