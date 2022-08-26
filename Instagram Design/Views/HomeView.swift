//
//  HomeView.swift
//  Instagram
//
//  Created by Anton Nagornyi on 15.07.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            Header()
            
            ScrollView (showsIndicators: false) {
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "nusa penida", description: "Bali was awesome")
                
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
