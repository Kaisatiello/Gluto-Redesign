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
                        HStack{
                            Image("TheSign2")
                                .resizable()
                                .frame(width: 343,height: 227)
                            Image("TheSign3")
                                .resizable()
                                .frame(width: 343,height: 227)
                            Image("TheSign4")
                                .resizable()
                                .frame(width: 343,height: 227)
                        }
                    }
                    Text("Via Indipendenza 17, Pomigliano D'Arco, NA")
                        .font(.system( .body, design: .rounded))
                        .foregroundColor(Color("CategText"))
                    HStack{
                        FiveStarView()
                            .padding(.trailing,35)
                        FoodSecurityButton()
                       /* Image("CertifiedSecurity")
                            .resizable()
                            .frame(width: 165, height: 26)
                            .shadow(radius: 4, x: 2, y: 2)*/
                    }
                    PickerView()
                    
                }
            }
            .padding(.leading)
            .navigationTitle("The Sign")
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
