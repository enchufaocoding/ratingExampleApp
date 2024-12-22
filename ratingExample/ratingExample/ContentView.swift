//
//  ContentView.swift
//  ratingExample
//
//  Created by Jose Alberto Rosario Castillo on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    // Declarar Variable
    @State var rating: Int = 0
    @State var ratingText: String = "No has seleccionado ninguna estrella"

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("¿Como fue la calidad de la llamada?")
                        .foregroundStyle(Color.black)
                        .font(.system(size: 20))
                        .bold()
                        .padding(.horizontal,10)
                    Button {
                        // reset values
                        rating = 0
                        ratingText = "No has seleccionado ninguna estrella"
                        
                    } label: {
                            Image(systemName: "xmark")
                                .foregroundStyle(Color.black)
                            .background(
                                Circle()
                                    .foregroundStyle(.gray.opacity(0.2))
                                    .frame(width: 30, height: 30)
                                    .bold()
                            )
                    }
                }
                
                Text("Tu respuesta es anónima. Nuestra App la usa para mejorar tue experiencia con las llamadas.")
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                .foregroundStyle(Color.gray).opacity(0.9)
                .font(.system(size: 15))
                .padding(10)
                
                HStack {
                    ForEach(1...5, id: \.self) { index in
                        Image(systemName: index <= rating ? "star.fill" : "star")
                            .font(.system(size: 40))
                            .padding(.bottom, 3)
                            .foregroundColor(index <= rating ? .green : .gray.opacity(0.3))
                            .frame(width: 40, height: 40)
                        
                        //Efect
                            .symbolEffect(.bounce, options: .repeat(index <= rating ? 1 : 0), value: rating)
                        
                        // click en estrella
                            .onTapGesture {
                                rating = index
                                print("rating Was: \(rating)")
                               
                                // switch for text rating
                                switch rating {
                                case 1:
                                    ratingText = "Muy Mala"
                                case 2:
                                    ratingText = "Mala"
                                case 3:
                                    ratingText = "Ok"
                                case 4:
                                    ratingText = "Bueno"
                                default:
                                    ratingText = "Excelente"
                                }
                            }
                    }
                }
                
                Text("\(ratingText)")
                    .foregroundStyle(Color.gray).opacity(0.9)
                    .font(.system(size: 20))
                    .frame(height: 40)
                
                HStack {
                    Spacer()
                    Button {
                        print("Hola Button Pressed")
                    } label: {
                        Text("Ahora No")
                            .foregroundStyle(.black)
                            .bold()
                            .background(
                                Color.gray.opacity(0.4)
                                    .frame(width: 140, height: 40)
                                    .cornerRadius(10)
                            )
                    }
                    Spacer()
                    
                    Button {
                        print("Enviar Button Pressed")
                    } label: {
                        Text("Enviar")
                            .foregroundStyle(.white)
                            .bold()
                            .background(
                                Color.green
                                    .frame(width: 140, height: 40)
                                    .cornerRadius(10)
                            )
                    }
                    Spacer()
   
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}


