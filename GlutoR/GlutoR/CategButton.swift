//
//  CategButton.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 21/11/22.
//

import SwiftUI

struct CategButton: View {
    var CategName : String
    
    var body: some View {
        Image(CategName)
            .resizable()
            .frame(width: 100,height: 100)
            .accessibilityLabel(CategName)
    }
}

struct CategButton_Previews: PreviewProvider {
    static var previews: some View {
        CategButton(CategName: "Pizza")
    }
}
