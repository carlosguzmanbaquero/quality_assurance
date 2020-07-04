from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger

def editar_input_text_por_id(valor, selector):
    logger.console('prueba documento '+valor)
    logger.console('selector '+selector)
    driver = BuiltIn().get_library_instance('SeleniumLibrary')
    idInput= selector.split(':')[1]
    driver.execute_javascript("document.getElementById('"+idInput+"').value="+valor)
    logger.console('sin error')