//
//  TabBar.swift
//  Instagram
//
//  Created by Anton Nagornyi on 15.07.2022.
//

import SwiftUI

struct TabBar: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            TabView {

                HomeView()
                    .tabItem {
                        Image("home")
                    }
                
                SearchView(text: "")
                    .tabItem {
                        Image("search")
                    }
                
                Image("reels")
                    .tabItem {
                        Image("reels")
                    }
                
                Image("shop")
                    .tabItem {
                        Image("shop")
                    }
                
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .padding()
                    .tabItem {
                        Image("tab-profile")
                    }
                
            }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .preferredColorScheme(.dark)
    }
}
