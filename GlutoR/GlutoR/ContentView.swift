//
//  ContentView.swift
//  GlutoR
//
//  Created by Eleonora Ballarini on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        var titleFont = UIFont.preferredFont(forTextStyle: .largeTitle)
                titleFont = UIFont(
                    descriptor:
                        titleFont.fontDescriptor
                        .withDesign(.rounded)?
                        .withSymbolicTraits(.traitBold)
                        ??
                        titleFont.fontDescriptor,
                    size: titleFont.pointSize)
        
               let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color("CategText")), .font: titleFont]
               navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color("CategText")), /*.font: titleFont*/]
        UITabBar.appearance().barTintColor = UIColor(named: "BgColor")
        //UITabBar.appearance().tintColor = UIColor(named: "TBItemColor")
             }
           
    var body: some View {
        TabView {
            NavigationStack{
                ExploreView()
            }
            .tabItem {
                Label("Explore", systemImage: "frying.pan.fill")
            }
            NavigationStack{
               MapView()
            }
            .tabItem {
                Label("Map", systemImage: "map.fill")
            }
            NavigationStack{
                SearchView()
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
            NavigationStack{
               ProfileView()
            }
            .tabItem {
                Label("Profile", systemImage: "person.circle.fill")
            }
            
        }//TabView
        .accentColor(Color("TBItemColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.dark)
    }
}
