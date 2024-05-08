//
//  Tela 2.swift
//  Desafio05_parte_02
//
//  Created by Turma01-4 on 24/01/24.
//

import SwiftUI

struct Tela_2: View {
    var id: Int = 0
    var name: String = ""
    var artist: String = ""
    var capa: String = ""
    
    var body: some View {
        
                    
        GeometryReader{ geo in
            
            VStack{
                Spacer()
                Image(capa).resizable().scaledToFit()
                    .frame(width: 250, height: 250)
                Text(name).bold()
                    .foregroundColor(.white)
                    .dynamicTypeSize(.xxLarge)
                Text(artist)
                    .foregroundColor(.white)
                    .dynamicTypeSize(.xxLarge)
                Spacer()
                HStack{
                   Spacer()
                    Image(systemName: "shuffle").resizable().frame(width: 50, height: 50).foregroundColor(.white)
                    Spacer()
                    Image(systemName: "backward.end.fill").resizable().frame(width: 30, height: 30).foregroundColor(.white)
                    Spacer()
                    Image(systemName: "play.fill").resizable().frame(width: 70, height: 70).foregroundColor(.white)
                    Spacer()
                    Image(systemName: "forward.end.fill").resizable().frame(width: 30, height: 30).foregroundColor(.white)
                    Spacer()
                    Image(systemName: "repeat").resizable().frame(width: 50, height: 50).foregroundColor(.white)
                    
                }.padding()
                Spacer()
                
            }.background(LinearGradient(gradient:Gradient(colors: [.green, .black]),startPoint: .top, endPoint: .bottom))
            
        }
       
    }
}

struct Tela_2_Previews: PreviewProvider {
    static var previews: some View {
        Tela_2()
    }
}
