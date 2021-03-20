import { Given, When, Then} from "cypress-cucumber-preprocessor/steps";
import { navegar, buscarTitulo, irAlArticulo, buscarTexto }  from '../../Page/BuscarPage';

Given('Navegar en la pagina del blog', () =>{
    navegar('');
})

When ('Busco un articulo', () =>{
    buscarTitulo('Variables en GO');
})

Then ('Voy al articulo', () =>{
    irAlArticulo('Variables en GO');
})

When ('Busco una palabra', () =>{
    buscarTexto('var nombre tipo = expresión');
})