***Settings***
Library  Selenium2Library

***Test Cases***
Buscar nombre de google
   Open Browser     https://www.google.com      chrome
   Input Text       name:q          cucumber
   Execute Javascript  document.querySelector('.gNO89b').click()
   #Click Button     css:.gNO89b
   Wait Until Page Contains       cucumber
   Close all browsers