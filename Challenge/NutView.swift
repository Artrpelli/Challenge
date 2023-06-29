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
                    .frame(width:280,height:280)
                    .position(x:198, y:270)
                
                NutSlider()
                    .position(x:198, y:650)
                
                Text("SLIDE TO FIND OUT")
                    .fontWeight(.medium)
                    .foregroundColor(Color("color2"))
                    .position(x:200, y:465)
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
