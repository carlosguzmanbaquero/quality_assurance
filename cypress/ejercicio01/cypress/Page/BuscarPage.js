var url = 'https://medium.com/@golang_es';
var claseTituloArticulo = 'h1.gf.de.gg.au.ct.gh.gi.gj.gk.gl.gm.gn.go.gp.gq.gr.gs.gt.gu.gv.fz.gw.fy'
var claseEtiquetaA = 'a.dm.bq'
var claseEtiquetaSpan = 'span.fy.hs.ht.gg.hu.b.dh.hv.hw.y.hx'
var etiquetaH = 'h3'

export class BuscarPage {

  navegar() {
    cy.visit(url)
  }

  buscarTitulo(titulo1) {
    cy.get(claseTituloArticulo, { timeout: 2000 })
      .should('contain', titulo1);
  }

  irAlArticulo(titulo1) {
    cy.get(claseEtiquetaA).contains(titulo1).click()
  }

  buscarTexto(texto) {
    cy.get(claseEtiquetaSpan, { timeout: 2000 })
      .should('contain', texto)
    cy.get(etiquetaH)
      .should('not.exist')
  }

}