import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.FluentWait;
import org.openqa.selenium.support.ui.Wait;

import java.time.Duration;
import java.util.function.Function;

public class BuscarArticuloPage {

    private String url = "https://medium.com/@golang_es";
    private String claseTituloArticulo = "//a[contains(text(),'Variables en GO')]";
    private String claseEtiquetaA = "a.dm.bq";
    private String claseEtiquetaSpan = "//span[@id='321e']";
    private String etiquetaH = "h3";

    private WebDriver driver;

    public BuscarArticuloPage(){
        //cargar driver
        System.setProperty("webdriver.chrome.driver","./chromedriver");
        driver = new ChromeDriver();
    }

    public void navegar() {
        System.out.println("url destino: "+url);
        driver.get(url);
        System.out.println("Titulo de la pagina: "+driver.getTitle());
    }

    public void buscarTitulo(String titulo1) {
        WebElement webTitulo1 = driver.findElement(By.xpath(claseTituloArticulo));
        System.out.println("titulo a verificar: "+webTitulo1.getText());

        //cy.get(claseTituloArticulo, { timeout: 2000 })
        //.should('contain', titulo1);
    }

    public void irAlArticulo(String titulo1) {
        driver.findElement(By.xpath(claseTituloArticulo)).click();
    }


    public void buscarTexto(String texto) {
        // Esperando 30 segundos a que un elemento este presente en la página, verificando
        // si está presente una vez cada 5 segundos
        Wait<WebDriver> wait = new FluentWait<WebDriver>(driver)
                .withTimeout(Duration.ofSeconds(30))
                .pollingEvery(Duration.ofSeconds(5))
                .ignoring(NoSuchElementException.class);

        WebElement foo = wait.until(new Function<WebDriver, WebElement>() {
            public WebElement apply(WebDriver driver) {
                return driver.findElement(By.xpath(claseEtiquetaSpan));
            }
        });

        System.out.println("subtitulo de la pagina: "+driver.getTitle());
        WebElement elementoTexto = driver.findElement(By.xpath(claseEtiquetaSpan));
        System.out.println("texto encontrado: "+elementoTexto.getText());
    }

    public void cerrar() {
        driver.close();
        driver.quit();
    }


}
