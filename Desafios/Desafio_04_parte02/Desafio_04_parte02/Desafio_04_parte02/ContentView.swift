//
//  ContentView.swift
//  Desafio_04_parte02
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink(destination: Tela_1()){
                        Text("Modo 1")
                        .dynamicTypeSize(.xxxLarge)
                }
                NavigationLink(destination: Tela_2()){
                        Text("Modo 2")
                        .dynamicTypeSize(.xxxLarge)
                }
                NavigationLink(destination: Tela_3()){
                        Text("Modo 3")
                        .dynamicTypeSize(.xxxLarge)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
