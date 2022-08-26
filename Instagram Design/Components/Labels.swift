//
//  Labels.swift
//  Instagram
//
//  Created by Anton Nagornyi on 16.07.2022.
//

import SwiftUI

struct Labels: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 8.0) {
                
                Label(text: "SwiftUI")
                Label(text: "Code")
                Label(text: "Design")
                Label(text: "UI")
                Label(text: "Dog")
                Label(text: "Travel")
                Label(text: "Food")
                
            }
            .padding(.horizontal, 16)
            .frame(maxWidth: .infinity)
            .frame(height: 38)
        }
        
    }
}

struct Labels_Previews: PreviewProvider {
    static var previews: some View {
        Labels()
    }
}
