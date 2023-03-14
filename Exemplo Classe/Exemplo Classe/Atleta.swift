//
//  Atleta.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 07/03/23.
//

import Cocoa

class Atleta: NSObject {
    var nome:String
    var idade:Int
    
    override init(){
        self.nome = ""
        self.idade = 0
    }
    
    init(nome:String, idade:Int){
        self.nome = nome
        self.idade = idade
    }
    
    deinit{
        print("\(nome) está sendo desinicializado")
    }
    //Método com parâmetros sem retorno
    func calcularIMC(peso:Float,altura:Float){
        let imc = peso / (altura * altura)
        let formatado = String(format: "%0.2f", imc)
        print("O imc de\(nome) é de \(formatado)")
    }
    
    func calcularIMC_2(peso:Float,altura:Float)->Float{
        //return peso/ (altura * altura)
        //ou
        return peso / pow(altura, 2)
    }
    //Criando um método instância como os outros acima
    func exibirAtleta()->String{
        return "O atleta é" + nome
    }
    //Criando um método de classe também chamado em java de método estático
    class func alerta()->String{
        return "A competição irá iniciar em breve"
    }
    //criando um m;etodo de classe para demonstrar
    //overloads (sobrecarga), claro qie podia ser
    // com método de instância, a vantagem é ter
    //um mesmo nome para métodos similares que possuem
    //parâmetros diferentes e ou saídas diferentes
    class func alerta(tempoEmMinutos:Int)->String{
        return "A competição irá iniciar em \(tempoEmMinutos) minutos"
    }
}
