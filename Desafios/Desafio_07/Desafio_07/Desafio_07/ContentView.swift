//
//  ContentView.swift
//  Desafio_07
//
//  Created by Turma01-4 on 26/01/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
//                Text("API de Emoji")
                VStack{
                    ForEach(vm.arrayFiguras,id: \.name){
                        figuras in
                        NavigationLink(destination: Tela_2(emoji: figuras)){
                            
                            Text(figuras.name!)
                                .foregroundColor(.black)
                                .bold()
                                .dynamicTypeSize(.xxxLarge)
                            
                            
                        }.padding()
                        
                    }
                    }
                
                .onAppear(){
                        vm.BaixarDados()
                        
                }
            }//.background(.yellow)
            .background(LinearGradient(gradient:Gradient(colors: [.yellow, .purple]),startPoint: .top, endPoint: .bottom))
            .navigationTitle("API de Emoji")
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
