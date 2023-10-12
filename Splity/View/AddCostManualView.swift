//
//  AddCostManualView.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct AddCostManualView: View {

    let progress: Double = 0.6

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    //Add cost title
                    Text("Add Cost")
                        .font(.system(size: 28, weight: .bold))
                    Spacer()
                    
                    //Currency icon
                    HStack {
                        Image(systemName: "eurosign")
                            .foregroundColor(.gray.opacity(0.8))
                        Image(systemName: "chevron.down")
                            .foregroundColor(.gray.opacity(0.8))
                        
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    
                }
                .padding(.horizontal)
                
                
                //Progress Bar
                GeometryReader { geometry in
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .frame(width: geometry.size.width, height: 5)
                            .foregroundColor(.gray.opacity(0.2)) // Fundo cinza
                        
                        Rectangle()
                            .frame(width: CGFloat(self.progress) * geometry.size.width, height: 5)
                            .foregroundColor(.green) // Preenchimento verde
                    }
                }
                .frame(height: 5)
            }
            
        }
    }
}

struct AddCostManual_Previews: PreviewProvider {
    static var previews: some View {
        AddCostManualView()
    }
}
