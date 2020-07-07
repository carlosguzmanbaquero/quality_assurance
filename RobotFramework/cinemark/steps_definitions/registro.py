from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger
from selenium import webdriver
from selenium.webdriver.common.by import By

#prinera funcion
def editar_input_text_por_id(valor, selector):
    logger.console('prueba documento '+valor)
    logger.console('selector '+selector)
    driver = BuiltIn().get_library_instance('SeleniumLibrary')
    idInput= selector.split(':')[1]
    driver.execute_javascript("document.getElementById('"+idInput+"').value="+valor)
    logger.console('editar_input_text_por_id sin error')

def editar_input_text_por_elemento(valor, element):
    element.send_keys(valor)
    logger.console('editar_input_text_por_elemento sin error')

def editar_input_text_por_elemento2(valor, element):
    logger.console('inicio elemto2 '+valor)
    element.send_keys(valor)
    #driver = BuiltIn().get_library_instance('SeleniumLibrary')
    #driver.find_elements(By.XPATH, "//*[@id='register_birthDay']/div/input")
    #driver.find_element_by_xpath("//*[@id='register_birthDay']/div/input")
    #fecha.value=valor
    #driver.find_elements(By.XPATH, "//*[@id='register_FirstName']")
    #nombre = driver.find_element_by_xpath("//*[@id='register_FirstName']")
    #logger.console('editar_input_text_por_elemento2 sin error'+nombre.value)
    
    #driver = webdriver.Chrome()
    #driver.get("https://www.cinemark.com.co/registrarse")
    #driver.findElements(By.xpath("//*[@id='register_FirstName'"));
    