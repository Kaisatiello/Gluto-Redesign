//
//  RestaurantView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 23/11/22.
//

import SwiftUI

struct RestaurantView: View {
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
            ScrollView{
                VStack(alignment: .leading){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: -17){
                            Image("TheSign2")
                                .resizable()
                                .frame(width: 343,height: 227)
                                .accessibilityLabel("Burghers and fries image")
                                .accessibilityRemoveTraits(.isImage)
                                .padding(.leading)
                                .padding(.trailing)
                            
                            Image("TheSign3")
                                .resizable()
                                .frame(width: 343,height: 227)
                                .accessibilityLabel("Cakes image")
                                .accessibilityRemoveTraits(.isImage)
                                .padding(.leading)
                                .padding(.trailing)
                            Image("TheSign4")
                                .resizable()
                                .frame(width: 343,height: 227)
                                .accessibilityLabel("Drink image")
                                .accessibilityRemoveTraits(.isImage)
                                .padding(.leading)
                                .padding(.trailing)
                        }
                    }
                    Text("Via Indipendenza 17, Pomigliano D'Arco, NA")
                        .font(.system( .body, design: .rounded))
                        .foregroundColor(Color("CategText"))
                        .padding(.leading)
                    HStack{
                        FiveStarView()
                            .padding(.leading)
                            .padding(.trailing,65)
                            
                        FoodSecurityButton()
                       /* Image("CertifiedSecurity")
                            .resizable()
                            .frame(width: 165, height: 26)
                            .shadow(radius: 4, x: 2, y: 2)*/
                    }
                    PickerView()
                    
                }
            }
            .navigationTitle("The Sign")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                        print("Favourite button")
                        } label: {
                        Image(systemName: "heart.fill")
                                .accessibilityLabel("Add to favourites")
                                .accessibilityAddTraits(.isButton)
                                .accessibilityRemoveTraits(.isImage)
                        }

                        Button {
                        print("Share Button")
                        } label: {
                        Image(systemName: "square.and.arrow.up")
                                .accessibilityAddTraits(.isButton)
                       }
                  }
            }
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
