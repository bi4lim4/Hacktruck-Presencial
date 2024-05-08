//
//  ContentView.swift
//  Desafio_08
//
//  Created by Turma01-4 on 30/01/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView{
//                Text("API de Emoji")
                HStack{
                    Spacer()
                }
                VStack{
                    HStack{
                        
                        Text("OBS:")
                            .bold()
                            .foregroundColor(.red)
                        Spacer()
                        Text("Escolha uma marca e veja suas especificações")
                        Spacer()
                    }.padding()
                   
                    ForEach(vm.arrayCarros,id: \._id){
                        carros in
                        NavigationLink(destination: Tela_2(carros: carros)){
                         
                            
                            Text(carros.marca!)
                                .foregroundColor(.black)
                                .bold()
                                .dynamicTypeSize(.accessibility1)
                        }.padding()
                            
                    }
                    }
                .onAppear(){
                        vm.BaixarDados()
                        
                }
            }  .background(LinearGradient(gradient:Gradient(colors: [.white, .green
                                                            ]),startPoint: .top, endPoint: .bottom))
                .navigationTitle("API de Carros")
          
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
