//
//  MemberCardView.swift
//  Splity
//
//  Created by Horacio Mota on 12/10/2023.
//

import SwiftUI

struct AddNewMemberCardView: View {
    var body: some View {
        HStack {
            
            Image (systemName: "person")
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(30)
                .foregroundColor(.gray)
          
            Text("Add new member")
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.gray.opacity(0.1))
        .cornerRadius(10)

        
    }
}

struct AddNewMemberCardView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewMemberCardView()
    }
}
