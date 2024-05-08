//
//  Home.swift
//  Desafio_04
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Home: View {
   
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(1..<51) {
                    Text("Item \($0)")}
            }.navigationTitle("Home")
        }
       
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
