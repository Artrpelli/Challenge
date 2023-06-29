//
//  SustainView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/27/23.
//

import Foundation
import SwiftUI


struct SustainView: View {
    let gradient = Gradient(colors: [Color("color2"),Color("color1")])
    let gradient1 = Gradient(colors: [Color("color1"),Color(.clear)])
    let gradient2 = Gradient(colors: [Color(.clear),Color("color1")])
    
    var body: some View {
        NavigationView{
            GeometryReader { geometry in
                ScrollView(.vertical){
                    VStack{
                        Group{
                            Text("HAPPY PLANET, HAPPY SKIN")
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .position(x:196, y:140)
                                .multilineTextAlignment(.center)
                                .tracking(3)
                                .font(.title)
                            
                            Image("with")
                                .resizable()
                                .frame(width:300,height:300)
                                .position(x:195, y:310)
                            
                            Text("OUR GREEN CHEMISTRY METHODOLOGY")
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal,40.0)
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .tracking(3)
                                .position(x:194.5,y:260)
                            
                            Text("\"A proprietary data-driven approach that follows 10+ years of research and is used to examine the ingredients that go into our formulas. Each ingredient is evaluated not only against our already rigorous safety and quality standards, but also for its ecosystem and environmental profile.\"")
                                .fontWeight(.light)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal,40.0)
                                .font(.body)
                                .foregroundColor(Color.white)
                                .tracking(3)
                                .position(x:195,y:410)
                                .lineSpacing(10.0)
                            
                            Text("- Estée Lauder")
                                .fontWeight(.thin)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal,40.0)
                                .font(.body)
                                .foregroundColor(Color.white)
                                .tracking(3)
                                .position(x:280,y:280)
                                .lineSpacing(10.0)
                            
                            SusSlider()
                                .position(x:198, y:430)
                            
                            Group{
                                Text("THE NUTRITIOUS COLLECTION")
                                    .fontWeight(.semibold)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal,40.0)
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                    .tracking(5)
                                    .position(x:194.5,y:390)
                                
                                VStack(alignment: .leading){
                                    Text("♥  Responsibly sourced,")
                                        .padding(.top, 30.0)
                                    Text("     wild-harvested Sweet ")
                                    Text("     Kelp")
                                        .padding(.bottom, 15.0)
                                    Text("♥  Responsibly-sourced,")
                                    Text("     sun-fermented")
                                    Text("     Red Algae Ferment")
                                        .padding(.bottom, 15.0)
                                    Text("♥  Bio-active Coconut")
                                    Text("     Water Ferment")
                                        .padding(.bottom, 25.0)
                                    
                                    Link(destination: URL(string: "https://www.esteelauder.com/discover/sustainability")!, label: {
                                        Text("Learn more about how we source our ingredients")
                                            .underline()
                                            .fontWeight(.light)
                                            .font(.footnote)
                                            .multilineTextAlignment(.center)
                                            .padding(.horizontal, 50.0)
                                            .tracking(1)
                                            .position(x:147, y:30)
                                    })
                                    
                                }
                                .padding(.horizontal, 25.0)
                                .foregroundColor(Color.white)
                                .position(x:220, y:530)
                                .font(.title3)
                                .tracking(3)
                                .fontWeight(.light)
                            }
                            
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color.clear)
                                    .background(LinearGradient(gradient: gradient1, startPoint: .top, endPoint: .bottom))
                                    .position(x:196.5,y:570)
                                Rectangle()
                                    .foregroundColor(Color.clear)
                                    .background(LinearGradient(gradient: gradient2, startPoint: .top, endPoint: .bottom))
                                    .position(x:196.5,y:1180)
                                Group{
                                    Text("EWG VERIFIED")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .font(.title2)
                                        .foregroundColor(Color.white)
                                        .tracking(5)
                                        .position(x:197,y:500)
                                    Text("Established in 1993, the Environmental Working Group is a third-party non-profit organization making strides towards a cleaner future for both the planet and its people via research, policy reform, and advocacy.")
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal,40.0)
                                        .font(.body)
                                        .foregroundColor(Color.white)
                                        .tracking(3)
                                        .position(x:197,y:670)
                                        .lineSpacing(10.0)
                                    Text("EWG verification means that Nutritious formulas meet strict manufacturing standards, including transparency requirements and good manufacturing processes.")
                                        .fontWeight(.light)
                                        .multilineTextAlignment(.leading)
                                        .padding(.horizontal,35.0)
                                        .font(.body)
                                        .foregroundColor(Color.white)
                                        .tracking(3)
                                        .position(x:197,y:900)
                                        .lineSpacing(10.0)
                                    Image("logo")
                                        .resizable()
                                        .frame(width:250,height:250)
                                        .position(x:197,y:1150)
                                }
                                
                                Group{
                                    Text("SUSTAINABLE PACKAGING")
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.center)
                                        .font(.title2)
                                        .foregroundColor(Color.white)
                                        .tracking(5)
                                        .position(x:176,y:1410)
                                        .padding(.horizontal,20.0)
                                    
                                    VStack{
                                        Image("mask")
                                            .resizable()
                                            .frame(width:170,height:170)
                                            .position(x:103,y:1565)
                                        Text("NUTRITIOUS MELTING SOFT CREME/MASK 50ml")
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:-23,y:1517)
                                            .lineSpacing(7.0)
                                            .frame(width:160,height:90)
                                        Text("RECYCLABLE JAR")
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:-47,y:1472)
                                            .lineSpacing(10.0)
                                            .frame(width:130,height:10)
                                    }
                                    VStack{
                                        Image("rad")
                                            .resizable()
                                            .frame(width:170,height:170)
                                            .position(x:290,y:1565)
                                        Text("NUTRITIOUS RADIANT ESSENCE LOTION 200ml")
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:168,y:1517)
                                            .lineSpacing(7.0)
                                            .frame(width:160,height:90)
                                        Text("RECYCLABLE BOTTLE")
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:175,y:1472)
                                            .lineSpacing(10.0)
                                            .frame(width:170,height:10)
                                    }
                                    ZStack{
                                        Image("airy")
                                            .resizable()
                                            .frame(width:170,height:170)
                                            .position(x:103,y:1870)
                                        Text("NUTRITIOUS AIRY LOTION")
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:-45,y:1890)
                                            .lineSpacing(7.0)
                                            .frame(width:160,height:90)
                                        Text("RECYCLABLE BOTTLE AFTER REMOVING THE PUMP")
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:-40,y:2050)
                                            .lineSpacing(1.0)
                                            .padding(.horizontal,120.0)
                                    }
                                    ZStack{
                                        Image("foam")
                                            .resizable()
                                            .frame(width:170,height:170)
                                            .position(x:290,y:1870)
                                        Text("NUTRITIOUS 2-IN-1 FOAM CLEANSER 125ml")
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:173,y:1902)
                                            .lineSpacing(7.0)
                                            .frame(width:160,height:90)
                                        Text("CONTAINS AT LEAST 27% POST-CONSUMER RECYCLED CONTENT")
                                            .fontWeight(.light)
                                            .multilineTextAlignment(.leading)
                                            .font(.caption)
                                            .foregroundColor(Color.white)
                                            .tracking(2)
                                            .position(x:167,y:2075)
                                            .lineSpacing(1.0)
                                            .padding(.horizontal,120.0)
                                    }
                                
                                }
                            }
                        }
                       
                    }
                    ForEach (0..<134) { _ in
                        ListItem1(geometry: geometry)
                    }
                }
                .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 20))
                .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(.all)

            }
        }
    }
}


struct SustainView_Previews: PreviewProvider {
    static var previews: some View {
        SustainView()
    }
}

struct ListItem1: View {
    let geometry: GeometryProxy
    
    var body: some View {
        Text("")
    }
}

