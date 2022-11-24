//
//  PickerView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 23/11/22.
//

import SwiftUI

struct PickerView: View {
    init(){
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("SegmentColor"))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color("Color1"))], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color("CategText"))], for: .normal)
    }
    @State private var restaurantPicker = 0

        var body: some View {
            VStack {
                Picker("Restaurant Picker", selection: $restaurantPicker) {
                    Text("Menu").tag(0)
                    Text("Reviews").tag(1)
                    Text("Infos").tag(2)
                }
                .pickerStyle(.segmented)
                if restaurantPicker == 0 {
                    VStack(alignment: .leading){
                        Text("Starters")
                            .fontWeight(.bold)
                            .padding(.bottom,-5)
                            .padding(.top,-3)
                        Text("Chiken pepitas:").fontWeight(.semibold) + Text(" fried chiken covered in corn flakes")
                        Text("Mortadella fries:").fontWeight(.semibold) + Text(" fries with mortadella and lime mayonese")
                        Text("Mains")
                            .fontWeight(.bold)
                            .padding(.bottom,-5)
                            .padding(.top,-3)
                        Text("Cheddar and bacon:").fontWeight(.semibold) + Text(" gluten free bread, 200g Scottona hamburgher, cheddar, bacon, lettuce, mayonese")
                        Text("Slow Food:").fontWeight(.semibold) + Text(" gluten free bread, 200g Frisona hamburgher, “Whestcombe” cheddar, bacon, tomato, caramelized onions")
                        Text("Dessert")
                            .fontWeight(.bold)
                            .padding(.bottom,-5)
                            .padding(.top,-3)
                       ( Text("Shortbread Millionaire:").fontWeight(.semibold) + Text(" cookie, caramel, Dulce de Leche, choccolate and salt"))
                            .padding(.bottom)
                    }
                    .foregroundColor(Color("CategText"))
                } else if restaurantPicker == 1 {
                    VStack(alignment: .leading){
                        HStack {
                            Text("Hanna B.")
                                .fontWeight(.bold)
                                .padding(.bottom,-5)
                                .padding(.top,-3)
                            (Text(Image(systemName: "star.fill")) + Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")))
                                .font(.footnote)
                            }
                        Text("Amazing!").fontWeight(.semibold)
                        Text("Best gluten free restaurant in town, tried out their bacon and cheddar burgher and I was not disappointed! Will come back again for sure...")
                        HStack {
                            Text("Steven H.")
                                .fontWeight(.bold)
                                .padding(.bottom,-5)
                                .padding(.top,-3)
                            (Text(Image(systemName: "star.fill")) + Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")) +  Text(Image(systemName: "star.fill")))
                                .font(.footnote)
                            }
                        Text("Great Service").fontWeight(.semibold)
                        Text("Great service, fast and efficient. Food was good, the medieval athmosphere did the rest. I suggest to try out their fries")
                    }
                    .foregroundColor(Color("CategText"))
                    RewievButton()
                        .padding(.bottom)
                } else {
                    VStack(alignment: .leading){
                        Text("Nerds for real 🤓 not for business! Come to the Dragon Inn 🐉 Fresh Cozzetiello® every day! #WeAreTheSign")
                            .padding(.top,-1)
                        Text("Contacts")
                            .fontWeight(.bold)
                            .padding(.bottom,-2)
                            .padding(.top,-3)
                        (Text(Image(systemName: "phone")) + Text(" +39 081 461 4676"))
                            .fontWeight(.bold)
                            .padding(.bottom,-2)
                        (Text(Image(systemName: "safari")) + Text("  thesign.pub"))
                            .fontWeight(.bold)
                        
                        Text("Opening Hours")
                            .fontWeight(.bold)
                            .padding(.bottom,-5)
                            .padding(.top,-3)
                        Text("open every day from 7:00 AM to 2:00AM")
                    }
                    .foregroundColor(Color("CategText"))
                }
            }//VStack
            .padding()
        }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
