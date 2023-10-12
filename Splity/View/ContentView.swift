//
//  ContentView.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Bell icon + profile Picture
        NavigationStack() {
            VStack () {
                HStack {
                    Image(systemName: "bell")
                    Spacer()
                  Image("profilepic")
                        .resizable()
                        .frame(width: 62, height: 62)
                        .cornerRadius(12)
                }
                
                //Debt
                VStack (alignment: .leading, spacing: 15) {
                    Text("i'm owed")
                        .font(.system(size: 18, weight: .regular))
                        .padding(.horizontal)
                        .padding(.top)
                    Text("0,00")
                        .font(.system(size: 22, weight: .bold))
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.green)
                .cornerRadius(10)

                
                //Cost + Total cost
                HStack {
                    //Cost
                    VStack (alignment: .leading, spacing: 15) {
                        Text("My Costs")
                            .font(.system(size: 18, weight: .regular))
                            .padding(.horizontal)
                            .padding(.top)
                        Text("0,00")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.horizontal)
                            .padding(.bottom)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray)
                    .cornerRadius(10)

                    //Total cost
                    ZStack {
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Total Cost")
                                .font(.system(size: 18, weight: .regular))
                                .padding(.horizontal)
                                .padding(.top)

                            Text("0,00")
                                .font(.system(size: 22, weight: .bold))
                                .padding(.horizontal)
                                .padding(.bottom)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.white)
                        .border(Color.gray, width: 1)
                        .cornerRadius(8)

                    }
                    .frame(maxWidth: .infinity)

                }

                //No Costs
                Image("coindraw")
                    .resizable()
                    .frame(height:300)
                Text("Click on the button bellow and add a cost")
                    .foregroundColor(.gray)
                
                Spacer()
                
                NavigationLink(destination: AddCostView()) {
                     
                        Text("Add Costs")
                            .frame(maxWidth: .infinity)
                            .font(.system(size: 18, weight: .bold))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(10)
                }

            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
        
        
        
      
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
