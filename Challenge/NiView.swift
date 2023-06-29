//
//  NiView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/27/23.
//

import Foundation
import SwiftUI

struct NiView: View {
    let gradient = Gradient(colors: [Color("color3"), Color ("color1")])
    
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                ScrollView(.vertical){
                    ZStack{
                        Text("WHAT IS THE NUTRI-9 COMPLEX?")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all, 50.0/*@END_MENU_TOKEN@*/)
                            .position(x:198, y:180)
                            .tracking(5)
                            .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        
                        Text("An ingeniously calibrated blend of nutrient-rich ingredients essential to balanced, blissful skin.")
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .position(x:198, y:340)
                            .lineSpacing(8.0)
                        
                        Text("FEATURING . . .")
                            .foregroundColor(Color("color2"))
                            .multilineTextAlignment(.center)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .position(x:135, y:450)
                            .lineSpacing(8.0)
                            .tracking(3)
                        
                        
                        Image("feat")
                            .resizable()
                            .frame(width:300, height:300)
                            .position(x:197, y:640)
                        
                        
//                        NavigationLink(destination: MainView().navigationBarHidden(true)) {
//                            Text("<")
//                                .foregroundColor(Color(red: 0.976, green: 0.706, blue: 0.769))
//                                .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 35))
//                        }.position(x:30, y:70)
                        
                        ForEach (0..<100) { _ in
                            ListItem(geometry: geometry)
                        }
                    }
                    
                }
                .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 20))
                .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct NiView_Previews: PreviewProvider {
    static var previews: some View {
        NiView()
    }
}
