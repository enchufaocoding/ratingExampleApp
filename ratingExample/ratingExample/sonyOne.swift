//
//  sonyOne.swift
//  ratingExample
//
//  Created by Jose Alberto Rosario Castillo on 7/10/24.
//

import SwiftUI

struct sonyOne: View {
    var body: some View {
        ZStack {
            Color ("AzulSonyOne")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("sonyOne")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()
                      //  .shadow(radius: 20)
                    
                    Rectangle()
                        .frame(width: 2, height: 100)
                        .foregroundColor(.white)
                    
                    Text("series thriller".uppercased())
                        .font(.system(size: 36))
                        .foregroundStyle(.white)
                        .bold()
                }

                Text("00:04")
                    .font(.system(size: 25))
                    .foregroundStyle(.white)
                Text("volvemos enseguida".uppercased())
                    .font(.system(size: 25))
                    .foregroundStyle(.white)
                   // .bold()
            }
        }
    }
}

#Preview {
    sonyOne()
}
