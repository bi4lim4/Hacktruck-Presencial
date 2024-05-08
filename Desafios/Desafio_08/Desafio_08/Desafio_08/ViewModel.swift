//
//  ViewModel.swift
//  Desafio_08
//
//  Created by Turma01-4 on 30/01/24.
//

import Foundation
class ViewModel: ObservableObject {
    
    @Published var arrayCarros: [Carros] = []
    
    func BaixarDados(){
        guard let url = URL(string: "http://127.0.0.1:1880/lercarro") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            do {
                let jsonDecodificado = try JSONDecoder().decode([Carros].self, from: data)
                
                DispatchQueue.main.async {
                    self?.arrayCarros = jsonDecodificado
                }
                
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
