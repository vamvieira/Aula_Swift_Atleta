//
//  main.swift
//  Exemplo Classe
//
//  Created by Usuário Convidado on 07/03/23.
//

import Foundation

//criando o objeto
var a = Atleta()
// fazendo o set
a.nome = "Ana"
a.idade=20
//fazendo o get
print(a.nome)
print(a.idade)
print("O atleta \(a.nome) tem \(a.idade) anos")

//criando o segundo objeto com o construtor de 2 parâmtros
var a2 = Atleta(nome: "José", idade: 40)
//fazendo o get
print(a2.nome)
print(a2.idade)
print("O atleta \(a2.nome) tem \(a2.idade) anos")

var a3: Atleta?
a3 = Atleta(nome: "Caio", idade: 45)
print("O atleta \(a3!.nome) tem \(a3!.idade) anos")
a3 = nil

//chamado o método de instância com os outros acima, ou seja, precisa de uma instância
print(a2.exibirAtleta())
// Chamando o método de classe, que não precisa de instância, basta apontar a classe
print(Atleta.alerta())


//criando um paratleta
let p = Paratleta()
//fazendo os sets
p.nome = "Jonas"
p.idade = 25
p.deficiencia = "Braço direito amputado"
print(p.exibirAtleta())

//exemplo de sobrecarga (overloads)
print(Atleta.alerta())
print(Atleta.alerta(tempoEmMinutos: 22))
