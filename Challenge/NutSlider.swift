//
//  NutSlider.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/26/23.
//

import Foundation
import SwiftUI

struct NutSlider: View {
    
    private let images = ["a1", "a2", "a3", "a4", "a5"]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { item in
                 Image(item)
                    .resizable()
//                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(width:330,height:330)
    }
    
}

struct NutSlider_Previews: PreviewProvider {
    static var previews: some View {
        NutSlider()
    }
}
