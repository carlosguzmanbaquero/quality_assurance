from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger
from selenium import webdriver

#prinera funcion
def editar_input_text_por_id(valor, selector):
    logger.console('prueba documento '+valor)
    logger.console('selector '+selector)
    driver = BuiltIn().get_library_instance('SeleniumLibrary')
    idInput= selector.split(':')[1]
    driver.execute_javascript("document.getElementById('"+idInput+"').value="+valor)
    logger.console('editar_input_text_por_id sin error')

#prinera funcion
def editar_input_text_por_elemento(valor, element):
    element.send_keys(valor)
    logger.console('editar_input_text_por_id2 sin error')