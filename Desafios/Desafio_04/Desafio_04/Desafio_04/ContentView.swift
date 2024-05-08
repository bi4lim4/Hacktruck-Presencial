//
//  ContentView.swift
//  Desafio_04
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
            Hello()
                .tabItem{
                    Label("Hello", systemImage: "magnifyingglass")
                }
            Frame()
                .tabItem(){
                    Label("Frame", systemImage: "photo.artframe")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
