//
//  Frame.swift
//  Desafio_04
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Frame: View {
    private let images = [
        "figure.kickboxing",
        "figure.mind.and.body",
        "figure.jumprope",
        "figure.volleyball",
        "figure.cooldown"
    ]
    
    var body: some View {
        ScrollView{
            VStack{
                ForEach(images, id: \.self){
                    Image(systemName: "\($0)") .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                }
            }
        }
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}
