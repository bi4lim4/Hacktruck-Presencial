//
//  ContentView.swift
//  UnifesspaDesafio01
//
//  Created by Turma01-4 on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("caminhao")
                .resizable()
                .scaledToFit()
            
            
                
            Text("HackaTruck")
                .bold()
                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.accessibility1/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
            HStack{
                Text("Maker")
                    .bold()
                    .dynamicTypeSize(.xxLarge)
                    .foregroundColor(.yellow)
                Text("Space")
                    .bold()
                    .dynamicTypeSize(.xxLarge)
                    .foregroundColor(.red)
            }
        }
        .padding()
//        .padding(.bottom, 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
