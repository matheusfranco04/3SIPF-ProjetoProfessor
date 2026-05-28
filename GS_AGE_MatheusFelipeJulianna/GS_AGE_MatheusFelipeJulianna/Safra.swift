//
//  Safra.swift
//  GS_AGE_MatheusFelipeJulianna
//
//  Created by Usuário Convidado on 28/05/26.
//

import Foundation

var listaSafras: [Safra] = []

class Safra {
    var nomePropriedade: String
    var tamanhoHectares: Int
    var riscoClimatico: Float
    var receberNotificacao: Bool
    
 
    init(nomePropriedade: String, tamanhoHectares: Int, riscoClimatico: Float, receberNotificacao: Bool) {
        self.nomePropriedade = nomePropriedade
        self.tamanhoHectares = tamanhoHectares
        self.riscoClimatico = riscoClimatico
        self.receberNotificacao = receberNotificacao
    }
}
