//
//  Grid.swift
//  Instagram
//
//  Created by Anton Nagornyi on 16.07.2022.
//

import SwiftUI

struct Grid: View {
    
    var images: [String] = ["profile","profile2","profile3","profile4","profile5","profile6","profile7","profile8"]
    var columnGrid: [GridItem] = [GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0), GridItem(.flexible(), spacing: 0)]
    
    @State var imgName = ""
    
    var body: some View {
        
        ZStack {
            
            if imgName != "" {
                
                ZStack {
                    Image(imgName)
                        .resizable()
                        .transition(.scale)
                        .scaledToFit()
                        .onTapGesture {
                            withAnimation(.spring()) {
                                imgName = ""
                            }
                    }
                }
                .transition(.scale)
                
            } else {
                
                LazyVGrid(columns: columnGrid, spacing: 3) {
                    
                    ForEach((0..<45), id:\.self) { image in
                        Image(images[image % images.count])
                            .resizable()
                            .scaledToFill()
                            .frame(width: (UIScreen.main.bounds.width / 3) - 3, height: (UIScreen.main.bounds.width / 3) - 3)
                            .clipped()
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    imgName = images[image % images.count]
                                }
                            }
                    }
                    
                }
                
            }
            
        }
        .transition(.scale)
        
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
