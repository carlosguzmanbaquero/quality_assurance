import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class Inicio {

    public static void main(String[] args) {
        try {
            //cargar driver
            System.setProperty("webdriver.chrome.driver","./chromedriver");
            WebDriver driver = new ChromeDriver();
            //abrir una pagina en el navegador
            driver.get("http://google.com");
            driver.get("http://yahoo.com");
            System.out.println("titulo de la pagina: "+driver.getTitle());
            System.out.println("url visitada: "+driver.getCurrentUrl());
            //mostrar el codigo fuente de la pagina
            System.out.println(driver.getPageSource());
            //volver a la pagina anterior visitada
            driver.navigate().back();
            driver.close(); // Cierra el navegador actual abierto por el Script
            driver.quit();  // Cierra todas las sesiones abiertas por el Script
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
