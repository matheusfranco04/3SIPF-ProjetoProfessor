//
//  CadastroViewController.swift
//  GS_AGE_MatheusFelipeJulianna
//
//  Created by Usuário Convidado on 28/05/26.
//

import UIKit

class CadastroViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var lblHectares: UILabel!
    @IBOutlet weak var stpHectares: UIStepper!
    @IBOutlet weak var sldRisco: UISlider!
    @IBOutlet weak var swtNotificacao: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stpHectares.minimumValue = 1
        stpHectares.maximumValue = 1000
    }

    @IBAction func stepperMudou(_ sender: UIStepper) {
        lblHectares.text = "\(Int(sender.value)) Hectares"
    }
    
    @IBAction func btnSalvarClicado(_ sender: Any) {
       
        guard let nome = txtNome.text, !nome.isEmpty else {
            GerenciadorAlertas.exibirAlerta(controller: self, titulo: "Atenção", mensagem: "O nome da propriedade não pode ficar vazio.")
            return
        }
        
        let novaSafra = Safra(nomePropriedade: nome,
                              tamanhoHectares: Int(stpHectares.value),
                              riscoClimatico: sldRisco.value,
                              receberNotificacao: swtNotificacao.isOn)
        
        listaSafras.append(novaSafra)
        
        GerenciadorAlertas.exibirAlerta(controller: self, titulo: "Sucesso", mensagem: "Fazenda adicionada ao monitoramento espacial!")
        
        txtNome.text = ""
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


