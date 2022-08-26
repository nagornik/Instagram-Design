//
//  Header.swift
//  Instagram
//
//  Created by Anton Nagornyi on 15.07.2022.
//

import SwiftUI

struct Header: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            Image("logo")
                .brightness(colorScheme == .dark ? 1 : 0)
            Spacer()
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
            .brightness(colorScheme == .dark ? 1 : 0)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
            .preferredColorScheme(.dark)
    }
}
