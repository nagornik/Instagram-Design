//
//  Post.swift
//  Instagram
//
//  Created by Anton Nagornyi on 15.07.2022.
//

import SwiftUI

struct Post: View {
    
    var image: String = "profile"
    var description: String = "Old b&w picture"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0.0) {
            
            PostHeader()
            PostContent(image: image)
            
            Text("Liked by Anton Nag. and others")
                .font(.footnote)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .padding(.horizontal, 12)
            
            HStack(spacing: 7.0) {
                
                Image("profile")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())
                
                Text("Add comment")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
                
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
            
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
