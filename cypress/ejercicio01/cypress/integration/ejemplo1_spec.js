//primer test
    describe('My First Test', () => {
     it('Does not do much!', () => {
        cy.visit('www.google.com')
      expect(true).to.equal(true)
        })
    })

    describe('Accedo al blog de golang', function() {
     it('Busco un titulo de interes', function() {
        cy.visit('https://medium.com/@golang_es');
        cy.get('h1.gf.de.gg.au.ct.gh.gi.gj.gk.gl.gm.gn.go.gp.gq.gr.gs.gt.gu.gv.fz.gw.fy',{ timeout: 2000 })
        .should('contain', 'Variables en GO');
        cy.get('a.dm.bq').contains('Variables en GO').click()
        cy.get('span.fy.hs.ht.gg.hu.b.dh.hv.hw.y.hx')
        .should('contain', 'var nombre tipo = expresión');       
        })
    })
 