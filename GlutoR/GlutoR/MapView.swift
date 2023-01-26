//
//  MapView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 22/11/22.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
        }
        .navigationTitle("Map")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
