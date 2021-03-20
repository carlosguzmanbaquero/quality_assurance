import { Given, When, Then} from "cypress-cucumber-preprocessor/steps";
import { BuscarPage }  from '../../Page/BuscarPage';

Given('Navegar en la pagina del blog', () =>{
    BuscarPage.prototype.navegar();
})

When ('Busco un articulo', () =>{
    BuscarPage.prototype.buscarTitulo('Variables en GO');
})

Then ('Voy al articulo', () =>{
    BuscarPage.prototype.irAlArticulo('Variables en GO');
})

When ('Busco una palabra', () =>{
    BuscarPage.prototype.buscarTexto('var nombre tipo = expresión');
})