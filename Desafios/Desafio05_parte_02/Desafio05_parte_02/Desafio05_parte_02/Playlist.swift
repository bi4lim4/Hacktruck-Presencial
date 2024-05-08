//
//  Playlist.swift
//  Desafio05_parte_02
//
//  Created by Turma01-4 on 24/01/24.
//

import SwiftUI

struct Playlist: View {
    let MusicArrays = [
        Song(id: 1, name: "Feeling Good", artist: "Nina Simone", capa: "feeling"),
        Song(id: 2, name: "Sunny day", artist: "beabadoobee", capa: "sunny"),
        Song(id: 3, name: "Lovely day", artist: "Bill Withers", capa: "day"),
        Song(id: 4, name: "love you twice", artist: "HUH YUJIN", capa: "twice"),
        Song(id: 5, name: "Give Me One Reasonh", artist: "Tracy Chapman", capa: "give"),
        Song(id: 6, name: "Feeling Good", artist: "Nina Simone", capa: "feeling"),
        Song(id: 7, name: "Sunny day", artist: "beabadoobee", capa: "sunny"),
        Song(id: 8, name: "Lovely day", artist: "Bill Withers", capa: "day"),
        Song(id: 9, name: "love you twice", artist: "HUH YUJIN", capa: "twice"),
        Song(id: 10, name: "Give Me One Reasonh", artist: "Tracy Chapman", capa: "give")
    ]
    
    let ImageScroll = [
        Scroll(id: 1, capa: "50"),
        Scroll(id: 2, capa: "brasil"),
        Scroll(id: 3, capa: "golpel"),
        Scroll(id: 4, capa: "50")
    ]

    
    var body: some View {
        NavigationStack{
            ZStack{
                ScrollView{
                    Image("meme").resizable().scaledToFit()
                        .frame(width: 250)
                    HStack{
                        Text("Playlist FM")
                            .bold()
                            .foregroundColor(.white)
                            .dynamicTypeSize(.accessibility2)
                        Spacer()
                    }.padding()
                    
                    HStack{
                        Image("caminhao")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 50)
                        Text("Usuario Secreto")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                   
                    
                    ForEach(MusicArrays, id: \.id) { array in
                        NavigationLink(destination: Tela_2(id: array.id, name: array.name, artist: array.artist, capa: array.capa)){
                            
                                
                            
                            HStack{
                                    
                                    Image(array.capa)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80)
                                    VStack{
                                        Text(array.name)
                                            .bold().foregroundColor(.white)
                                        Text(array.artist).foregroundColor(.white)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                    .foregroundColor(.white)
                                }.padding(4)
                            
                        }
                    }
                    
                    HStack{
                        Text("Sugeridos")
                            .bold()
                            .foregroundColor(.white)
                            .dynamicTypeSize(.accessibility2)
                        Spacer()
                    }.padding(2)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(ImageScroll, id: \.id) { array in
                                Image(array.capa)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 220)
                            }
                        }.padding(4)
                    }
                }.background(LinearGradient(gradient:Gradient(colors: [.green, .black]),startPoint: .top, endPoint: .bottom))
                
            
            }
        }
    }
}

struct Song: Identifiable{
    var id: Int
    var name: String
    var artist: String
    var capa: String
}
struct Scroll: Identifiable{
    var id: Int
    var capa: String
}

struct Playlist_Previews: PreviewProvider {
    static var previews: some View {
        Playlist()
    }
}
