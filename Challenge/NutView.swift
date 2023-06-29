//
//  NutView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/26/23.
//

import Foundation
import SwiftUI

struct NutView: View {
    let gradient = Gradient(colors: [Color("color3"), Color ("color1")])
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("q")
                    .resizable()
                    .frame(width:330,height:330)
                    .position(x:212, y:270)
                
                NutSlider()
                    .position(x:213, y:700)
                
                Text("SLIDE TO FIND OUT")
                    .fontWeight(.medium)
                    .foregroundColor(Color("color2"))
                    .position(x:213, y:485)
                    .tracking(3)
                    .font(.title3)
                
//                NavigationLink(destination: MainView().navigationBarHidden(true)) {
//                    Text("<")
//                        .foregroundColor(Color(red: 0.976, green: 0.706, blue: 0.769))
//                        .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 35))
//                }.position(x:30, y:70)
                
            }
            .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct NutView_Previews: PreviewProvider {
    static var previews: some View {
        NutView()
    }
}
