//
//  Mapa.swift
//  Desafio_06_mapa
//
//  Created by Turma01-4 on 01/02/24.
//

import SwiftUI
import MapKit
import Foundation

struct Mapa: View {
    let location = [
        Location(name: "Rio de Janeiro", coordinate: CLLocationCoordinate2D(latitude: -22.902777777777775, longitude: -43.20777777777778), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Bandeira_da_cidade_do_Rio_de_Janeiro.svg/1200px-Bandeira_da_cidade_do_Rio_de_Janeiro.svg.png", description: "Rio de Janeiro é um município brasileiro, capital do estado homônimo, situado no Sudeste do país. Um dos maiores destinos turísticos internacionais no Brasil, na América Latina e também do Hemisfério Sul."),
        Location(name: "Manaus", coordinate: CLLocationCoordinate2D(latitude: -3.0736111111111115, longitude: -60.00555555555555), flag: "https://st.depositphotos.com/1220104/4832/i/950/depositphotos_48324085-stock-illustration-manaus-flag-of-silk.jpg", description: "Manaus é um município brasileiro, capital do estado do Amazonas e principal centro financeiro, corporativo e mercantil da Região Norte do Brasil.É a cidade mais populosa do Amazonas, da Região Norte e de toda a Amazônia Brasileira, com mais de 2 milhões de habitantes em 2022."),
        Location(name: "Marabá", coordinate: CLLocationCoordinate2D(latitude: -5.368888888888889, longitude: -49.117777777777775), flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Bandeira_de_Marab%C3%A1_%28Par%C3%A1%29.svg/1200px-Bandeira_de_Marab%C3%A1_%28Par%C3%A1%29.svg.png", description: "Marabá é um município brasileiro localizado no sudeste do estado do Pará, Região Norte do país. Sua localização tem, por referência, o ponto de encontro entre dois grandes rios, Tocantins e Itacaiúnas, formando uma espécie de 'y' no seio da cidade vista de cima. A sede municipal é formada basicamente por seis núcleos urbanos interligados por rodovias.")
    
    ]
    
    @State  var name: String = ""
    
    @State var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -10, longitude: -55), span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))

//    @State private var locations: [Location] = []
    
    var body: some View {
        NavigationView{
            ZStack{
               
                Map(coordinateRegion: $mapRegion, annotationItems: location) { location in
                    MapAnnotation(coordinate: location.coordinate){
                        NavigationLink{
                            Spacer()
                            Text(location.name)
                                .dynamicTypeSize(.xxxLarge)
                                .bold()
                            AsyncImage(url: URL(string: location.flag), scale: 3)
                                .frame(width: 250, height: 250)
                            Spacer()
                            Text(location.description)
                                .dynamicTypeSize(.xxLarge)
                            Spacer()
                            
                        } label: {
                            Circle()
                                .stroke(.red, lineWidth: 3)
                                .frame(width: 25, height: 25)
                        }
                    }
                }.ignoresSafeArea()
                VStack{
                    Text("Mapa do Brasil")
                        .bold()
                        .dynamicTypeSize(.accessibility1)
                    Text("\(name)").dynamicTypeSize(.xxLarge)
                    Spacer()
                    HStack{

                        ForEach(location) { location in
                            Button(location.name){
                                mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2))
                                name = location.name
                            } .padding()
                                .background(Color .blue)
                                    .foregroundColor(Color .white)
                                    .cornerRadius(15)
                        }
                      }
                }
            }
            
        }
    }
}

struct Location: Identifiable{
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

struct Mapa_Previews: PreviewProvider {
    static var previews: some View {
        Mapa()
    }
}
