//
//  Tela 2.swift
//  Desafio_08
//
//  Created by Turma01-4 on 30/01/24.
//

import SwiftUI

struct Tela_2: View {
    var carros: Carros
    
    var body: some View {
        ScrollView{
            VStack{
                
                HStack{
                    Text("Modelo:")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    Text(carros.modelo!)
                        .dynamicTypeSize(.accessibility1)
                    Spacer()
   
                }
                HStack{
                    Text("Cor:")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    Text(carros.cor!)
                        .dynamicTypeSize(.accessibility1)
                    Spacer()
                }
                HStack{
                    Text("Ano:")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    Text(carros.ano!)
                        .dynamicTypeSize(.accessibility1)
                    Spacer()
   
                }
                HStack{
                    Text("Preço:")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    Text("\(carros.preco!,specifier: "%.2f")")
                        .dynamicTypeSize(.accessibility1)
                    Spacer()
   
                }
                HStack{
                    Text("Imagem:")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    AsyncImage(url: URL(string: carros.imagem!)) { image in
                        image.resizable()
                          .aspectRatio(contentMode: .fit) // or .fill
                      } placeholder: {
                        ProgressView()
                      }
                    Spacer()
                    
                }
            }
        }.padding().background(LinearGradient(gradient:Gradient(colors: [.white, .green]),startPoint: .top, endPoint: .bottom))
    }
}


