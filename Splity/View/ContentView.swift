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
        VStack () {
            HStack {
                Image(systemName: "bell")
                Spacer()
              Image("profilepic")
                    .resizable()
                    .frame(width: 62, height: 62)
                    .cornerRadius(12)
                    .foregroundColor(.red)
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
                }
                .frame(maxWidth: .infinity)
                .background(Color.red)
            }
            //Add cost Button

            

            
            


            
            Spacer()
        } .padding(.horizontal)
        
        
        
      
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
