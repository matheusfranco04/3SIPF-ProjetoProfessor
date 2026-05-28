//
//  GerenciadorAlertas.swift
//  GS_AGE_MatheusFelipeJulianna
//  
//  Created by Usuário Convidado on 28/05/26.
//

import UIKit

class GerenciadorAlertas: NSObject {
    
    static func exibirAlerta(controller: UIViewController, titulo: String, mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        controller.present(alerta, animated: true)
    }
    
    static func exibirActionSheet(controller: UIViewController, titulo: String, mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem, preferredStyle: .actionSheet)
        alerta.addAction(UIAlertAction(title: "Confirmar", style: .default, handler: nil))
        alerta.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        controller.present(alerta, animated: true)
    }
}
