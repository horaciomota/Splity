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
        VStack {
            HStack {
                Image(systemName: "bell")

                
                Spacer()
                
              Image("profilepic")
                    .resizable()
                    .frame(width: 62, height: 62)
                    .cornerRadius(12)
                    .foregroundColor(.red)
                    
            }
            
            Spacer()
        } .padding(.horizontal)
        
        //Debt + Cost + Total cost
        
        //Add cost Button
        
      
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
