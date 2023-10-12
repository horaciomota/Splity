//
//  MainProfileCard.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct MainProfileCard: View {
    var body: some View {

        HStack {
                    
            Image ("profileback")
                .resizable()
                .frame(width: 52, height: 52)
                .cornerRadius(30)
          
                    Text("Horacio")
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)

                
            }
    
    }

struct MainProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        MainProfileCard()
    }
}
