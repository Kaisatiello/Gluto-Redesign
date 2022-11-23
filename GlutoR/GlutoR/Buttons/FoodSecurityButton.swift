//
//  FoodSecurityButton.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 23/11/22.
//

import SwiftUI

struct FoodSecurityButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(Color("CardColor"))
            Text("Certified Food Security")
                .font(.system( .caption, design: .rounded))
            
                .fontWeight(.medium)
                .foregroundColor(Color("TextColor"))
        }
        .frame(width:170,height: 28)
    }
}

struct RewievButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(Color("CardColor"))
            Text("Submit a review")
                .font(.system( .body, design: .rounded))
            
                .fontWeight(.medium)
                .foregroundColor(Color("TextColor"))
        }
        .frame(width:170,height: 38)
    }
}


struct FoodSecurityButton_Previews: PreviewProvider {
    static var previews: some View {
        FoodSecurityButton()
    }
}
