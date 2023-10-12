//
//  AddCostView.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct AddCostView: View {
    let progress: Double = 0.3
    @State private var costDescription: String = ""
    @State private var costValue: String = ""
    @State private var selectedDate = Date()

    var body: some View {
    
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
            
            VStack {
                //TextField and day Picker
                TextField("Cost Description", text: $costDescription)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                TextField("Cost Value", text: $costValue)
                    .keyboardType(.decimalPad) // Define o teclado para números decimais
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                
                DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(.gray)
                
                Spacer()


            //Scan Bill Button
                Button {
                    //add action
                    print("Button Clicked")
                } label: {
                    HStack {
                        Image(systemName: "qrcode.viewfinder")
                            .foregroundColor(.black)
                            .imageScale(.medium)
                        
                        Text("Scan the Bill")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.black)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                }
            
            //Next Button
                Button {
                    //add action
                    print("Button Clicked")
                } label: {
                    Text("Next")
                        .frame(maxWidth: .infinity)
                           .font(.system(size: 18, weight: .bold))
                           .foregroundColor(.white)
                           .padding()
                           .background(Color.black)
                           .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.top, 8)

            
    
            }
        }
    }

struct AddCostView_Previews: PreviewProvider {
    static var previews: some View {
        AddCostView()
    }
}
