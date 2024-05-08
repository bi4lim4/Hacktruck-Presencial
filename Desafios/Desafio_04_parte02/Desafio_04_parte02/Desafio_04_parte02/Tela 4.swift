//
//  Tela 4.swift
//  Desafio_04_parte02
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Tela_4: View {
    @State  var nomee: String = "
    
    var body: some View {
        
            Text("Volte, \(nomee)")
            .dynamicTypeSize(.xxLarge)
        
    }
}

struct Tela_4_Previews: PreviewProvider {
    static var previews: some View {
        Tela_4()
    }
}
