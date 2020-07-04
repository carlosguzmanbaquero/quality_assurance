***Settings***
Library  SeleniumLibrary

***Variables***
${browser}    chrome
${url}       http://newtours.demoaut.com/

***Test Cases***
LoginTest
  open browser    ${url}  ${browser}
  loginToApplication
  close browser
  

***Keywords***
loginToApplication
  input text      name:userName        qualityadmin
  input text      name:password        pass1
  click Button    name:login
  Close all browsers