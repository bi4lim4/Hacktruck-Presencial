//
//  Desafio02_02.swift
//  UnifesspaDesafio01
//
//  Created by Turma01-4 on 18/01/24.
//

import SwiftUI

struct Desafio02_02: View {
    @State private var name: String = " "
    @State private var showingAlert = false
    var body: some View {
        ZStack{
            
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: 600, height: 800)
                .blur(radius: 0.8)
                .opacity(0.3)
                .saturation(0.8)
            VStack{
                Spacer()
                Text("Bem vindo,\(name)!")
                    .dynamicTypeSize(.accessibility2)
                TextField("NOME",text:  $name).multilineTextAlignment(.center)
                
                
               
                Spacer()
                Spacer()
                
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                Image("truck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                Spacer()
                Spacer()
             
                Button("Entrar") {
                            showingAlert = true
                        }
                        .alert("ALERTA! \nVocê irá iniciar o desafio da aula agora", isPresented: $showingAlert) {
                            Button("Vamos lá!") { }
                        }
               
                
            }
        }
               
        
    }
}

struct Desafio02_02_Previews: PreviewProvider {
    static var previews: some View {
        Desafio02_02()
    }
}
