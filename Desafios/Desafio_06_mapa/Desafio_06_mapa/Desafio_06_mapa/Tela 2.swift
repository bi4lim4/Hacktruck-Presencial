//
//  Tela 2.swift
//  Desafio_06_mapa
//
//  Created by Turma01-4 on 01/02/24.
//

import SwiftUI

struct Tela_2: View {
    let name: String = ""
    let flag: String = ""
    let description: String = ""
    var body: some View {
        GeometryReader{ geo in
            VStack{
                Text(name)
                Spacer()
                Image(flag)
                    .resizable().scaledToFit()
                        .frame(width: 50, height: 50)
                Text(description).multilineTextAlignment(.trailing)
            }
            
        }
    }
}

struct Tela_2_Previews: PreviewProvider {
    static var previews: some View {
        Tela_2()
    }
}
