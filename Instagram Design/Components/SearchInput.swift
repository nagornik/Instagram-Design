//
//  SearchInput.swift
//  Instagram
//
//  Created by Anton Nagornyi on 16.07.2022.
//

import SwiftUI

struct SearchInput: View {
    
    @State var text: String
    
    var body: some View {
        
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            TextField("Search", text: $text)
            
            if text != "" {
                Image(systemName: "xmark.circle.fill")
                    .onTapGesture {
                        text = ""
                }
            }
            
        }
        .padding(10)
        .background(Color("searchBackground"))
        .cornerRadius(10.0)
        
        
    }
}

struct SearchInput_Previews: PreviewProvider {
    static var previews: some View {
        SearchInput(text: "my custom search")
//            .preferredColorScheme(.dark)
    }
}
