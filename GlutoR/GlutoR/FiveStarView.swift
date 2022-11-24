//
//  FiveStarView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 23/11/22.
//

import SwiftUI

struct FiveStarView: View {
    var body: some View {
       
                (Text(Image(systemName: "star.fill")) + Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.lefthalf.fill")))
                    .accessibilityRemoveTraits(.isStaticText)
                    .accessibilityLabel("4.5 out of 5 stars rating")
                    .font(.headline)
                .foregroundColor(Color("CardColor"))
        
    }
}
struct FiveStarView_Previews: PreviewProvider {
    static var previews: some View {
        FiveStarView()
    }
}
