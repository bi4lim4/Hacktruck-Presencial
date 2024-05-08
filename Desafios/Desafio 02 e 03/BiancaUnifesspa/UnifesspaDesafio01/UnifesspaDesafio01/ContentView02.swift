//
//  ContentView02.swift
//  UnifesspaDesafio01
//
//  Created by Turma01-4 on 17/01/24.
//

import SwiftUI

struct ContentView02: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .scaledToFit()
            
            Spacer()
            ZStack{
                Image("caminhao")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    
                Text("HackTruck")
                    .bold()
                    .foregroundColor(.blue)
                    .padding(.bottom, 120.0)
                    .dynamicTypeSize(.accessibility2)
            }
            Spacer()
            ZStack{
                Image("fundo")
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                            .frame(width: 250, height: 70, alignment: .center)
                HStack{
                    Text("Maker")
                        .foregroundColor(.yellow)
                        .padding(.bottom, 50.0)
                        .dynamicTypeSize(.accessibility2)
                    
                    Text("Space")
                        .foregroundColor(.red)
                        .padding(.bottom, 50.0)
                        .dynamicTypeSize(.accessibility2)
                    
                }
               
            }
            
                
                
            
            
        }
//        .padding(.bottom, 500)
    }
}

struct ContentView02_Previews: PreviewProvider {
    static var previews: some View {
        ContentView02()
    }
}
