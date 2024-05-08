//
//  Hello.swift
//  Desafio_04
//
//  Created by Turma01-4 on 22/01/24.
//

import SwiftUI

struct Hello: View {
    var body: some View {
        
        Text("Hello, HackaTruck")
            .foregroundStyle(.white)
            .dynamicTypeSize(.xxLarge)
            .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
            .background(Color("blue"))
            
    }
}

struct Hello_Previews: PreviewProvider {
    static var previews: some View {
        Hello()
    }
}
