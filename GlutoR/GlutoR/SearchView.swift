//
//  SearchView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 22/11/22.
//

import SwiftUI

struct SearchView: View {
   
    var body: some View {
        ZStack {
            Color("BgColor")
                .ignoresSafeArea()
        }
        .navigationTitle("Search")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
