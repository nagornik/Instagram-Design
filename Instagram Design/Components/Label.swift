//
//  Label.swift
//  Instagram
//
//  Created by Anton Nagornyi on 16.07.2022.
//

import SwiftUI

struct Label: View {
    
    var text: String = "Design"
    
    var body: some View {
        
        Text(text)
            .font(.caption)
            .fontWeight(.bold)
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.secondary, lineWidth: 1)
            }
        
    }
}

struct Label_Previews: PreviewProvider {
    static var previews: some View {
        Label()
    }
}
