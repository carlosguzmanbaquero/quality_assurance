***Settings***
Library  SeleniumLibrary
Resource    ../steps_definitions/registro_step.robot

***Variables***
${browser}                      chrome
${url}                          https://www.cinemark.com.co/registrarse
${nombre}                       carlos
${apellido}                     guzman
${documento}                    123456789
${fecha}                        '1989-04-08'
${telefono}                     987654321
${email}                        carlosgb.cali@hotmail.com
${contrasena}                   clave123456789https://meet.google.com/auh-ygcy-vvm?authuser=0]/div/div/div/ul/li[1]
${selector_documento}           id:register_NationalID
${selector_fecha}               .ant-calendar-picker-input.ant-input
${selector_telefono}            id:register_MobilePhone
${selector_email}               id:register_Email
${selector_email_confirm}       id:register_confirmEmail
${selector_contrasena}          id:register_Password
${selector_contrasena_confirm}  id:register_confirmPassword
${selector_ciudad}              xpath=//*[@id="register_PreferredComplexCity"]/div/div
${selector_seleccion_ciudad}    xpath=/html/body/div[3]/div/div/div/ul/li[5]
${selector_teatro}              xpath=/html/body/div[1]/div[2]/div[1]/form/div[6]/div[2]/div/div[2]/div/span/div/div/div
${selector_seleccion_teatro}    xpath=/html/body/div[4]/div/div/div/ul/li[2]
${selector_terminos}            id:register_termines
${selector_promociones}         id:register_SendNewsletter
${selector_registrar}           xpath=//*[@id="__next"]/div[2]/div[1]/form/div[8]/button
${selector_iniciar_sesion}      xpath=/html/body/div[1]/header/div[1]/div[2]/div[1]/span[2]/div/button
${selector_email_login}         id:loginForm_MemberLogin
${selector_password_login}      id:loginForm_MemberPassword
${selector_boton_login}         xpath=/html/body/div[5]/div/div/div/div[2]/div/div[2]/div/form/div[4]/div/div/span/div/button

***Keywords***
estoy en la pagina de registro de cinemark
    open browser    ${url}  ${browser}

ingreso el nombre
    input text  ${selector_nombre}   ${nombre}

ingreso el apellido
    input text  ${selector_apellido}    ${apellido}

selecciono un genero
    click element   ${selector_genero}
    sleep  1s
    click element   ${selector_seleccion_genero}

ingreso Numero de documento
    input text  ${selector_documento}    ${documento}

selecciono una Fecha de nacimiento
    Execute JavaScript  document.querySelector(".ant-calendar-picker-input.ant-input").value=${fecha}
    sleep  3s
    
relleno el campo Celular
    Click element   ${selector_telefono}
    input text  ${selector_telefono}    ${telefono}

relleno el campo Correo electronico
    input text  ${selector_email}    ${email}

relleno el campo Confirmar correo electronico
    input text  ${selector_email_confirm}    ${email}

relleno el campo Contraseña
    input text  ${selector_contrasena}    ${contrasena}

relleno el campo Confirmar contraseña
    input text  ${selector_contrasena_confirm}    ${contrasena}

selecciono una Ciudad
    click element   ${selector_ciudad}
    sleep  1s
    click element   ${selector_seleccion_ciudad}

selecciono un teatro
    click element   ${selector_teatro}
    sleep  1s
    click element   ${selector_seleccion_teatro}

marco el check de Aceptar los terminos y condiciones junto con las politicas de proteccion de datos
    click element   ${selector_terminos}

marco el check de Te gustaria recibir informacion de promociones en tu correo electronico
    click element   ${selector_promociones}

presiono el boton Crear cuenta
    #click Button    ${selector_registrar}
    sleep  3s

####login
presiono boton iniciar sesion
    click Button    ${selector_iniciar_sesion}
    sleep  1s
ingreso mail login
    input text      ${selector_email_login}    ${email}
ingreso password login
    input text      ${selector_password_login}    ${contrasena}
presiono boton login
    click Button    ${selector_boton_login}
    sleep  3s