//
//  FiveStarView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 23/11/22.
//

import SwiftUI

struct FiveStarView: View {
    var body: some View {
        ZStack {
            HStack{
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                
            }
            .foregroundColor(.gray)
            .opacity(0.4)
            HStack{
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star.lefthalf.fill")
            }
            .foregroundColor(Color("CardColor"))
        }
    }
}
struct FiveStarView_Previews: PreviewProvider {
    static var previews: some View {
        FiveStarView()
    }
}
