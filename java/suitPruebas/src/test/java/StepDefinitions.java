import io.cucumber.java.After;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefinitions {

    BuscarArticuloPage buscarArticuloPage = new BuscarArticuloPage();
    @Given("Navegar en la pagina del blog")
    public void navegar_en_la_pagina_del_blog() {
        System.out.println("ingreso, navegar_en_la_pagina_del_blog()");
        buscarArticuloPage.navegar();
        //throw new io.cucumber.java.PendingException();
    }

    @When("Busco un articulo")
    public void busco_un_articulo() {
        System.out.println("ingreso, busco_un_articulo()");
        buscarArticuloPage.buscarTitulo("Variables en GO");
        //throw new io.cucumber.java.PendingException();
    }

    @Then("Voy al articulo")
    public void voy_al_articulo() {
        System.out.println("ingreso, voy_al_articulo()");
        buscarArticuloPage.irAlArticulo("Variables en GO");
        //throw new io.cucumber.java.PendingException();
    }

    @Then("Busco una palabra")
    public void busco_una_palabra() {
        System.out.println("ingreso, busco_una_palabra()");
        buscarArticuloPage.buscarTexto(" var nombre tipo = expresión");
        //throw new io.cucumber.java.PendingException();
    }

    @After
    public void closeDriver() {
        buscarArticuloPage.cerrar();;
    }
}
