//
//  Desafio_03.swift
//  UnifesspaDesafio01
//
//  Created by Turma01-4 on 19/01/24.
//

import SwiftUI


struct Desafio_03: View {
    @State private var altura: Float = 0
    @State private var peso: Float = 0
    @State private var imc: Float = 0
    @State private var background: String = " "
    @State private var resultado: String = " "
   
    
    var body: some View {
        ZStack{
            Color(background).ignoresSafeArea()
            VStack {
                Text("Calculadora de IMC")
                    .dynamicTypeSize(.accessibility1)
                
                TextField("Digite o seu peso", value: $peso, formatter: NumberFormatter())
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                TextField("Digite sua altura", value: $altura, formatter: NumberFormatter())
                            .textFieldStyle(.roundedBorder)
                            .padding()
                
                Button("Calcular"){
                    imc = peso / ((altura * altura)/10000)
                    
                    if (imc <= 18.5){
                        background = "baixopeso"
                        resultado = "Baixo peso"
                    } else if (imc > 18.5 && imc <= 24.99){
                        background = "lightgreen"
                        resultado = "Normal"
                    } else if(imc >= 25 && imc <= 29.99){
                        background = "laranja"
                        resultado = "Sobrepeso"
                    } else if (imc >= 30 ){
                        background = "laranjaescuro"
                        resultado = "Obesidade"
                    }
                }
                .padding()
                .background(Color .blue)
                    .foregroundColor(Color .white)
                    .cornerRadius(15)
                Spacer()
                TextField(" ", text: $resultado)
                    .multilineTextAlignment(.center)
                    .dynamicTypeSize(.xxLarge)
                Spacer()
                Image("tabela-IMC")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400)

                    }
        }
       
    }
    
            
       

}


struct Desafio_03_Previews: PreviewProvider {
    static var previews: some View {
        Desafio_03()
    }
}

