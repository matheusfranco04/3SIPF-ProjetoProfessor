//
//  ListaSafrasTableTableViewController.swift
//  GS_AGE_MatheusFelipeJulianna
//
//  Created by Usuário Convidado on 28/05/26.
//

import UIKit

class ListaSafrasTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.tableView.reloadData()
    }

    // Retorna número de seções
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaSafras.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulaSafra", for: indexPath)
        let safra = listaSafras[indexPath.row]
        cell.textLabel?.text = "\(safra.nomePropriedade) - Risco: \(Int(safra.riscoClimatico))%"
        return cell
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let safra = listaSafras[indexPath.row]
        GerenciadorAlertas.exibirActionSheet(controller: self, titulo: "Imagens do Satélite", mensagem: "Baixar análise do setor: \(safra.nomePropriedade)?")
        tableView.deselectRow(at: indexPath, animated: true)
    }


    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            listaSafras.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adicione isso apenas para testar se a tabela está "desenhando" as células
        if listaSafras.isEmpty {
            let teste1 = Safra(nomePropriedade: "Fazenda Alpha", tamanhoHectares: 100, riscoClimatico: 20, receberNotificacao: true)
            let teste2 = Safra(nomePropriedade: "Setor Lunar Beta", tamanhoHectares: 350, riscoClimatico: 75, receberNotificacao: false)
            
            listaSafras.append(teste1)
            listaSafras.append(teste2)
        }
    }
}

    // MARK: - Table view data source

   

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


