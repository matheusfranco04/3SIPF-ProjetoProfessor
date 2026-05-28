//
//  SobreViewController.swift
//  GS_AGE_MatheusFelipeJulianna
//
//  Created by Usuário Convidado on 28/05/26.
//

import UIKit

class SobreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    @IBAction func btnPontoClicado(_ sender: Any) {
        GerenciadorAlertas.exibirAlerta(controller: self,
                                        titulo: "Nota Esperada",
                                        mensagem: "Acredito que merecemos 10, pois utilizamos MVC, TableViewController, exclusão de arrays, validação e classes exclusivas alinhadas com o tema Espacial!")
    }
}
