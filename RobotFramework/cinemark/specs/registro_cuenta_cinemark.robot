***Settings***
Resource    ../pages/pagina_registro.robot

***Test Cases***
registro cuenta cinemark
    crear un nuevo registro
    cuenta registrada

***Keywords***
crear un nuevo registro
    Given estoy en la pagina de registro de cinemark
    When ingresar datos del formulario

cuenta registrada
    Then puedo ingresar con mi usuario y contraseña al portal
    close browser