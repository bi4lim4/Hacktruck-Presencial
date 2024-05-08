//
//  Tela 2.swift
//  Desafio_04_parte02
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Tela_2: View {
    
    @State  var nome: String = ""
    var body: some View {
        NavigationStack{
            VStack{
                TextField("Digite o seu nome",text:  $nome)
                    .scaledToFit()
                    .multilineTextAlignment(.center)
                    .dynamicTypeSize(.xxLarge)
                Text("Estamos percorrendo um caminho, \(nome)")
                    .dynamicTypeSize(.xxLarge)
                
                NavigationLink(destination: Tela_4(nomee :  nome)){
                    Text("Acessar Tela")
                        .dynamicTypeSize(.xxLarge)
                }
            }
            
        }
        
        
    
    }
}

struct Tela_2_Previews: PreviewProvider {
    static var previews: some View {
        Tela_2()
    }
}
