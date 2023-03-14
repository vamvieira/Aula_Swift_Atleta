//
//  Paratleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 14/03/23.
//

import Cocoa

class Paratleta: Atleta {
    var deficiencia:String
    //criando o construtor padrão e chamamos
    //com super init de Atleta
    override init(){
        deficiencia = ""
        super.init()
    }
    //exibirAtleta tbm existe na classe Atleta
    //Vamos chamar com super o que já foi programado lá
    //e juntar com deficiência relatado pelo atleta
    override func exibirAtleta() -> String {
        return super.exibirAtleta() + " deficiencia relatada: \(deficiencia) "
    }
}
