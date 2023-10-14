//
//  AddMembers.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct AddMembers: View {

    let progress: Double = 0.6
    
    @State private var costDescription: String = ""

    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    //Add cost title
                    Text("Who we split among?")
                        .font(.system(size: 22, weight: .bold))
                    Spacer()
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
                
                VStack (alignment: .leading) {
                    //Group Name DROPDOWN
                    TextField("Create a group name", text: $costDescription)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    Text("Members")
                        .font(.system(size: 18, weight: .bold))
                    
                    //MainProfile card
                    MainProfileCard()
                    //AddNewMember view
                    AddNewMemberCardView()
                    
                    }
                    Spacer()
                    
                    HStack {
                        //Back Button
                        NavigationLink(destination: AddCostView()) {
                            HStack {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.black)
                                    .imageScale(.medium)
                                
                                Text("Back")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.black)
                                
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                        
                        
                        //Next Button
//                        NavigationLink(destination: AddMembers()) {
                            Text("Next")
                                .frame(maxWidth: .infinity)
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.black)
                                .cornerRadius(10)
//                        }
                        
                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 8)

            }
            
        } //End of navigation
    }


struct AddMembers_Previews: PreviewProvider {
    static var previews: some View {
        AddMembers()
    }
}
