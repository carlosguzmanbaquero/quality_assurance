***Settings***
Library  SeleniumLibrary

***Variables***
${browser}    chrome
${url}       https://www.cinemark.com.co/registrarse
${nombre}     carlos
${apellido}     guzman
${documento}    123456789
${fecha}        '1989-04-08'
${telefono}     987654321
${email}      carlosgb.cali@hotmail.com
${contrasena}     clave123456789

***Test Cases***
RegisterTest
  Given que estoy en la página de registro de cinemark (page registro)
  When relleno el campo Nombre (step registro)
  And relleno el campo Apellidos (step registro)
  And elijo un item del campo Genero (step registro)
  And relleno el campo Numero de documento (step registro)
  And selecciono una Fecha de nacimiento (step registro)
  And relleno el campo Celular (step registro)
  And relleno el campo Correo electronico (step registro)
  And relleno el campo Confirmar correo electronico (step registro)
  And relleno el campo Contraseña (step registro)
  And relleno el campo Confirmar contraseña (step registro)
  And selecciono una Ciudad (step registro)
  And selecciono un teatro (step registro)
  And marco el check de Aceptar los terminos y condiciones (step registro) junto con las politicas de proteccion de datos
  And marco el check de Te gustaria recibir informacion de promociones en tu correo electronico (step registro)
  And presiono el boton Crear cuenta (step registro)

  #login
  Given que estoy en la página de iniciar sesion de cinemark (page inicio sesion)
  When relleno el campo Correo electronico (step inicio sesion)
  And relleno el campo Contraseña (step inicio sesion)
  And presiono el boton Ingresar (step inicio sesion)
  close browser
  
***Keywords***
  Given que quiero crear una cuenta en cinemark (spec)
Given que estoy en la página de registro de cinemark (page registro)
    open browser    ${url}  ${browser}
When relleno el campo Nombre (step registro)
    input text  id:register_FirstName   ${nombre}
And relleno el campo Apellidos (step registro)
    input text  id:register_LastName    ${apellido}
And elijo un item del campo Genero (step registro)
    click element   xpath=//*[@id="register_Gender"]/div/div
    sleep  1s
    click element   xpath=/html/body/div[2]/div/div/div/ul/li[1]
And relleno el campo Numero de documento (step registro)
    input text  id:register_NationalID    ${documento}
And selecciono una Fecha de nacimiento (step registro)
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").readOnly = false
    #Clear Element Text  css:.ant-calendar-picker-input.ant-input
    #click element   xpath=/html/body/div/div[2]/div[1]/form/div[3]/div[1]/div/div[2]/div/span/span/div/i[1]/svg/path
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").value=${fecha}
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").readOnly = true
    ##press key  css:.ant-calendar-picker-input.ant-input  \\13
    #Execute JavaScript  document.querySelector(".ant-calendar-input ").value=${fecha}
    Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").value=${fecha}
    sleep  3s
    #click element  css:.ant-calendar-picker-input.ant-input 
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").value=${fecha}
    #click element   xpath=/html/body/div[2]/div/div/div/div/div[2]/div[2]/table/tbody/tr[2]/td[6]/div
    #click element   xpath=/html/body/div[3]/div/div/div/div/div[2]/div[2]/table/tbody/tr[2]/td[6]/div
    #//*[@id="register_birthDay"]/div/input
    #input text  class=ant-calendar-input     value="1989-04-08"
    #input text  xpath=//input[@class="ant-calendar-input "]     "1989-04-08"
    #Input Text   //input[contains(text(), 'ant-calendar-input')]    ${fecha}
    #input text   xpath=/html/body/div[1]/div[2]/div[1]/form/div[3]/div[1]/div/div[2]/div/span/span/div/input      1989-04-08
    #input text  class=ant-calendar-picker-input.ant-input    value="1989-04-08"
    #
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").readOnly = false
    #Input Text  xpath=/html/body/div[3]/div/div/div/div/div[1]/div/input    ${fecha}
    #Execute Javascript  document.querySelector(".ant-calendar-picker-input.ant-input").removeAttribute("readonly")
    #Execute Javascript  document.querySelector(".ant-calendar-picker-input.ant-input").removeAttribute("onchange")
    #Execute Javascript  document.querySelector(".ant-calendar-picker-input.ant-input").setAttribute("value", "${fecha}")
    #Input Text  xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    ${fecha}
    
    #input text  xpath=/html/body/div[2]/div/div/div/div/div[1]/div/input    ${fecha}
    #input text  class=ant-calendar-input     "1989-04-08"   
    #############################
    #Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").readOnly = false
    #click element   xpath=/html/body/div[1]/div[2]/div[1]/form/div[3]/div[1]/div/div[2]/div/span/span/div/input
    #input text  css:.ant-calendar-picker-input.ant-input    ${fecha}
    #Execute JavaScript  document.querySelector(".ant-calendar-input").value=${fecha}
    #sleep  3s
    #click element   xpath=/html/body/div[1]/div[2]/div[1]/form/div[5]/div[2]
   # sleep  5s
    

    
And relleno el campo Celular (step registro)
    Click element   id:register_MobilePhone
    input text  id:register_MobilePhone    ${telefono}
And relleno el campo Correo electronico (step registro)
    input text  id:register_Email    ${email}
And relleno el campo Confirmar correo electronico (step registro)
    input text  id:register_confirmEmail    ${email}
And relleno el campo Contraseña (step registro)
    input text  id:register_Password    ${contrasena}
And relleno el campo Confirmar contraseña (step registro)
    input text  id:register_confirmPassword    ${contrasena}
And selecciono una Ciudad (step registro)
    click element   xpath=//*[@id="register_PreferredComplexCity"]/div/div
    sleep  1s
    click element   xpath=/html/body/div[3]/div/div/div/ul/li[5]
And selecciono un teatro (step registro)
    click element   xpath=/html/body/div[1]/div[2]/div[1]/form/div[6]/div[2]/div/div[2]/div/span/div/div/div
    sleep  1s
    click element   xpath=/html/body/div[4]/div/div/div/ul/li[2]
And marco el check de Aceptar los terminos y condiciones (step registro) junto con las politicas de proteccion de datos
    click element   id:register_termines
And marco el check de Te gustaria recibir informacion de promociones en tu correo electronico (step registro)
    click element   id:register_SendNewsletter
And presiono el boton Crear cuenta (step registro)
    #click Button    xpath=//*[@id="__next"]/div[2]/div[1]/form/div[8]/button
    sleep  3s

  #########
  #When el sistema valida mi informacion y confirma la creacion de la cuenta (spec)
  #  la pagina muestra un mensaje de confirmacion de la creacion de la cuenta y me envia un correo de bienvenida
  #Then puedo ingresar con mi usuario y contraseña al portal (spec)
  #########
Given que estoy en la página de iniciar sesion de cinemark (page inicio sesion)
    click Button    xpath=/html/body/div[1]/header/div[1]/div[2]/div[1]/span[2]/div/button
    sleep  1s
When relleno el campo Correo electronico (step inicio sesion)
    input text      id:loginForm_MemberLogin    ${email}
    #input text      xpath=//input[@id="loginForm_MemberLogin"]    ${email}
And relleno el campo Contraseña (step inicio sesion)
    input text      id:loginForm_MemberPassword    ${contrasena}
And presiono el boton Ingresar (step inicio sesion)
    click Button    xpath=/html/body/div[5]/div/div/div/div[2]/div/div[2]/div/form/div[4]/div/div/span/div/button
    sleep  3s
  #Then me lleva a la pagina de inicio de mi perfil si los datos son correctos (page perfil)
