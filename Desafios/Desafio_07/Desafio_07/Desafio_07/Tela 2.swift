//
//  Tela 2.swift
//  Desafio_07
//
//  Created by Turma01-4 on 26/01/24.
//

import SwiftUI




struct Tela_2: View {
    var emoji: Figuras
    
    
    var body: some View {
        
        
        ScrollView{
            VStack{
                
                HStack{
                    Spacer()
                    Text("Categoria:")
                        .bold()
                        .dynamicTypeSize(.xxxLarge)
                    Text(emoji.category!)
                        .dynamicTypeSize(.xxxLarge)
                    Spacer()
                }
                HStack{
                    Text("Grupo:")
                        .bold()
                        .dynamicTypeSize(.xxxLarge)
                    Text(emoji.group!)
                        .dynamicTypeSize(.xxxLarge)
    //                ForEach(emoji.unicode, id:\.self){ e in
                        
    ////                    var data = e!.encodeEmoji
    //                    Text(data)
                }
            }
        }.padding().background(LinearGradient(gradient:Gradient(colors: [.yellow, .purple]),startPoint: .top, endPoint: .bottom))
    
        }
        
    }


extension String {
    var decodeEmoji: String{
        let data = self.data(using: String.Encoding.utf8);
        let decodedStr = NSString(data: data!, encoding: String.Encoding.nonLossyASCII.rawValue)
        if let str = decodedStr{
            return str as String
        }
        return self
    }
    
    var encodeEmoji: String{
            if let encodeStr = NSString(cString: self.cString(using: .nonLossyASCII)!, encoding: String.Encoding.utf8.rawValue){
                return encodeStr as String
            }
            return self
        }
}
