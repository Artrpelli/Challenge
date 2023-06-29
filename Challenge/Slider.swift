//
//  Slider.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/26/23.
//

import Foundation
import SwiftUI

struct Slider: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    
    private let images = ["1", "2", "3", "4", "5", "6"]
    
    var body: some View {
        TabView(selection: $selection){
            ForEach(0..<6) { i in
                 Image("\(images[i])")
                    .resizable()
//                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer, perform: { _ in
            withAnimation{
                selection = selection < 6 ? selection + 1 : 0
            }
        })
        .frame(width:350, height:350)
    }
    
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        Slider()
    }
}
