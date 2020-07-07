***Settings***
Library  SeleniumLibrary
Resource    ../pages/pagina_registro.robot
Library    ./registro.py

***Variables***

***Keywords***
ingresar datos del formulario
    #ingreso el nombre
    ${element1} =               Get WebElement   ${selector_nombre_xpath}
    editar input text por elemento  ${nombre}   ${element1}
    ingreso el apellido
    selecciono un genero
    #ingreso Numero de documento
    #editar input text por id  ${documento}  ${selector_documento}
    ${element} =               Get WebElement   ${selector_documento}   
    editar input text por elemento  ${documento}  ${element}
    #selecciono una Fecha de nacimiento
    ${element2} =               Get WebElement   ${selector_fecha}
    editar input text por elemento2  ${fecha}   ${element2}
    relleno el campo Celular
    relleno el campo Correo electronico
    relleno el campo Confirmar correo electronico
    relleno el campo Contraseña
    relleno el campo Confirmar contraseña
    selecciono una Ciudad
    selecciono un teatro
    marco el check de Aceptar los terminos y condiciones junto con las politicas de proteccion de datos
    marco el check de Te gustaria recibir informacion de promociones en tu correo electronico
    presiono el boton Crear cuenta

puedo ingresar con mi usuario y contraseña al portal
    presiono boton iniciar sesion
    ingreso mail login
    ingreso password login
    presiono boton login
    