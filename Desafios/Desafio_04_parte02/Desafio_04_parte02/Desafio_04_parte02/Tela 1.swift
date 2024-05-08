//
//  Tela 1.swift
//  Desafio_04_parte02
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Tela_1: View {
    var body: some View {
        VStack{
            Text("Bianca Lima")
                .dynamicTypeSize(.xxxLarge)
            Text("biancalima@unifesspa.edu.br")
                .dynamicTypeSize(.xxxLarge)
            
        }
    }
}

struct Tela_1_Previews: PreviewProvider {
    static var previews: some View {
        Tela_1()
    }
}
