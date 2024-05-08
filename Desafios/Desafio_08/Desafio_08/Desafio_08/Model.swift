//
//  Model.swift
//  Desafio_08
//
//  Created by Turma01-4 on 30/01/24.
//

import Foundation

struct Carros: Decodable, Hashable{
    var _id: String?
    var _rev: String?
    var modelo: String?
    var cor: String?
    var ano: String?
    var marca: String?
    var preco: Float?
    var imagem: String?
}
