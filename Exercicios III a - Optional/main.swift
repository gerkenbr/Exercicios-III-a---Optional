//
//  main.swift
//  Exercicios III a - Optional
//
//  Created by Alexandre Gerken Brasil on 2019-08-07.
//  Copyright © 2019 Alexandre Gerken Brasil. All rights reserved.
//

import Foundation

// Exercicios Optional

// Exercicio 1 - definir 3 variaveis nome, segundo nome e sobrenome, e imprimir o nome completo, assumindo que nem todos tem segundo nome

func devolveNomeCompleto(nome: String, segundoNome: String?, sobrenome: String) -> String {
    var nomeCompleto: String = ""
    nomeCompleto = nome + " "
    nomeCompleto = nomeCompleto + (segundoNome ?? "")
    if segundoNome != nil {
        nomeCompleto = nomeCompleto + " " + sobrenome
    } else {
        nomeCompleto = nomeCompleto + sobrenome
    }
    return nomeCompleto
}
print("=========imprimir nome completo baseado em 3 variaveis, 1 optional=========")
print(devolveNomeCompleto(nome: "Alexandre", segundoNome: "Gerken", sobrenome: "Brasil"))
print(devolveNomeCompleto(nome: "Alexandre", segundoNome: nil, sobrenome: "Brasil"))

//Exercício 2 - dada uma string optional documento, teste sem usaar IF ternario, e caso nil, imprimir o padrão XXXXXXXXX-X

func verificaDocumento(documento: String?) -> String {
var documentoVerificado: String = ""
if let documentoVerificado = documento {
    return documentoVerificado
} else {
    documentoVerificado = "XXXXXXXXX-X"
    return documentoVerificado
}
}
print("==========verifica documento=========")
print(verificaDocumento(documento: "12123123-3"))
print(verificaDocumento(documento: nil))

// Exercício 3 - preparar funcao, que recebea parametros para um carro, modelo, qtdeRodas, cor, retornar dicionario com o carro. Adicionar o carro em uma array, depois fazer uma funcao que receba essa array e retorna um carro sorteado

var arrayCarros = [[String:String]]()
func retornaDicCarro(modelo: String, qtdeRodas: String, cor: String) -> [String:String] {
    var dicCarro = [String:String]()
    dicCarro["modelo"] = modelo
    dicCarro["qtdeRodas"] = qtdeRodas
    dicCarro["cor"] = cor
    print(dicCarro)
    arrayCarros.append(dicCarro)
    print(arrayCarros)
    return dicCarro
}

print(retornaDicCarro(modelo: "Astra", qtdeRodas: "4", cor: "prata"))
print(retornaDicCarro(modelo: "Monza", qtdeRodas: "4", cor: "preto"))
print(retornaDicCarro(modelo: "Fit", qtdeRodas: "4", cor: "verde"))

func sorteiaCarro(array:[[String:String]]) -> [String:String] {
    let numeroDeCarros = array.count
    let carroSorteado = Int.random(in: 0...numeroDeCarros-1)
    let dicCarroSorteado = array[carroSorteado]
    return dicCarroSorteado
}

print("========carro sorteado========")
print(sorteiaCarro(array: arrayCarros))

// Exercicio 4 - Função para achar a posição de uma string dentro de uma array de strings, sem usar inex of, depois outra função usando index of para a mesma coisa.

var listaCinema :[String] = ["Alexandre","Bettina","Lobão","Henrique","Maike","Adriana","Julia"]
func pesquisaCinema(nomeProcurado: String) -> Int {
    var contador :Int = 0
    for posicao in listaCinema {
        contador += 1
        if posicao == nomeProcurado {
            return contador
        }
    }
    return 0
}
print("=========pesquisa cinema=========")
print(pesquisaCinema(nomeProcurado: "Lobão"))
print(pesquisaCinema(nomeProcurado: "Henrique"))
print(pesquisaCinema(nomeProcurado: "Osvaldo"))

func pesquisaCinema2(nomeProcurado: String) -> Int {
    let posicao2 = (listaCinema.firstIndex(of: nomeProcurado)) ?? 0
    if posicao2 != 0 {
        return (posicao2 + 1)
    } else  {return 0}
}
print("=========pesquisa cinema2=========")
print(pesquisaCinema2(nomeProcurado: "Lobão"))
print(pesquisaCinema2(nomeProcurado: "Henrique"))
print(pesquisaCinema2(nomeProcurado: "Osvaldo"))
