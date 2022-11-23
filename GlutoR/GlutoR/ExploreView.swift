//
//  ExploreView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 17/11/22.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(alignment: .top){
                            CategButton(CategName: "Pasta")
                            CategButton(CategName: "Pizza")
                            CategButton(CategName: "Croissant")
                            CategButton(CategName: "Burgher")
                            CategButton(CategName: "Bread")
                            CategButton(CategName: "Gelato")
                            CategButton(CategName: "Veggies")
                            CategButton(CategName: "Sushi")
                            CategButton(CategName: "Fish")
                        }
                    }//ScrollView
                    .shadow(radius: 4, x: 2, y: 2)
                    Text("Your Favourites")
                        .font(.system( .title2, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.top,18)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 10){
                            NavigationLink(destination: RestaurantView(), label: {ShopsButton(ShopImage: "TheSign1", ShopName: "The Sign", ShopType: "Burghers,cakes", ShopRating: "4,9")
                                
                            })
                            ShopsButton(ShopImage: "Nihon", ShopName: "Nihon       ", ShopType: "Sushi, poke bowls", ShopRating: "4,7")
                        }
                    }
                    .shadow(radius: 4, x: 2, y: 2)
                    Text("Restaurants near you")
                        .font(.system( .title2, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.top,18)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 10){
                            ShopsButton(ShopImage: "Salvo", ShopName: "Pizzeria da Salvo",ShopType: "Pizza,fried food", ShopRating: "4,6")
                            ShopsButton(ShopImage: "GreenHouse", ShopName: "Green       House", ShopType: "Burghers, pasta", ShopRating: "4,9")
                            ShopsButton(ShopImage: "TuttoGelato", ShopName: "Tutto         Gelato", ShopType: "Gelato, cakes", ShopRating: "4")
                        }
                    }
                    .shadow(radius: 4, x: 2, y: 2)
                    Text("Shops near you")
                        .font(.system( .title2, design: .rounded))
                        .fontWeight(.semibold)
                        .padding(.top,18)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 10){
                            ShopsButton(ShopImage: "CeliachiaPlanet", ShopName: "Celiachia Planet",ShopType: "Fresh bread, pasta", ShopRating: "4,5")
                            ShopsButton(ShopImage: "NsenzaG", ShopName: "Napoli Gluten Free", ShopType: "Croissant,bread", ShopRating: "3,8")
                        }
                    }
                    .shadow(radius: 4, x: 2, y: 2)
                }
        
                .foregroundColor(Color("CategText"))
                .padding(.leading)
                .navigationTitle("Explore")
            }
        }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
