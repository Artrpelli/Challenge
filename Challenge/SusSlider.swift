//
//  SusSlider.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/28/23.
//

import Foundation
import SwiftUI

struct SusSlider: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    
    private let images = ["c", "d", "a", "e", "b"]
    
    var body: some View {
        TabView(selection: $selection){
            ForEach(0..<5) { i in
                 Image("\(images[i])")
                    .resizable()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .onReceive(timer, perform: { _ in
            withAnimation{
                selection = selection < 5 ? selection + 1 : 0
            }
        })
        .frame(width:450, height:270)
    }
    
}

struct SusSlider_Previews: PreviewProvider {
    static var previews: some View {
        SusSlider()
    }
}
