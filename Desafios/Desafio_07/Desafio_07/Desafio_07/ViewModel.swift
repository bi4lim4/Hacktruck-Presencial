//
//  ViewModel.swift
//  Desafio_07
//
//  Created by Turma01-4 on 26/01/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var arrayFiguras: [Figuras] = []
    
    func BaixarDados(){
        guard let url = URL(string: "https://emojihub.yurace.pro/api/all") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            do {
                let jsonDecodificado = try JSONDecoder().decode([Figuras].self, from: data)
                
                DispatchQueue.main.async {
                    self?.arrayFiguras = jsonDecodificado
                }
                
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}
