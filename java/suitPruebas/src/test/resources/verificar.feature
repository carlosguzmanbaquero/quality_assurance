Feature: verificar en blog golang

    #Background:
    #Given Navegar en la pagina del blog

    @focus
    Scenario: Buscar un articulo espesifico
        Given Navegar en la pagina del blog
        When Busco un articulo
        Then Voy al articulo
            When Busco una palabra