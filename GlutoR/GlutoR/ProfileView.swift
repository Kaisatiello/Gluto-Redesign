//
//  ProfileView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 22/11/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
            VStack{
                Text("Perosonal Info")
                Text("Know a place?")
                Text("Review Section: You wrote 1 review")
            }
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
