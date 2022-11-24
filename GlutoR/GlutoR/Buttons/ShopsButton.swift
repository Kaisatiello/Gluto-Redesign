//
//  ShopsButton.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 17/11/22.
//

import SwiftUI

struct ShopsButton: View {
    var ShopImage : String
    var ShopName : String
    var ShopType : String
    var ShopRating : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 15, height: 15))
                
                //.shadow(radius: 4, x: 2, y: 2)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("CardColor")/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top) {
                Image(ShopImage)
                    .resizable()
                    .frame(width: 150,height: 150)
                    .padding(.trailing,10)
                VStack (alignment: .leading, spacing: 3) {
                    Text(ShopName)
                        .lineSpacing(-2)
                        .font(.system( .title, design: .rounded))
                        
                        .fontWeight(.medium)
                    Text(ShopType)
                        .lineSpacing(-2)
                    (Text(Image(systemName: "star.fill"))+Text(ShopRating))
                        .accessibilityLabel("\(ShopRating) stars rating")
                        .accessibilityRemoveTraits(.isImage)
                }
                .foregroundColor(Color("TextColor"))
                
            }
            .frame(width: 290,height: 150)
        }
        .frame(width: 343, height: 208)
        .padding(.leading)
        .padding(.trailing)
    }
}

struct ShopsButton_Previews: PreviewProvider {
    static var previews: some View {
        ShopsButton(ShopImage: "TheSign1", ShopName: "The Sign miao  ",ShopType: "Burghers, sweets", ShopRating: "4,9")
    }
}
