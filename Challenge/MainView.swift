//
//  Main.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/26/23.
//

import Foundation
import SwiftUI
import AVKit
import UIKit

struct MainView: View {
    let gradient = Gradient(colors: [Color("color1"), Color ("color3")])
    let gradient1 = Gradient(colors: [Color(.clear), Color ("color1")])
    let gradient2 = Gradient(colors: [Color("color3"), Color (.clear)])
    let gradient3 = Gradient(colors: [Color("color1"), Color (.clear)])
    let gradient4 = Gradient(colors: [Color("color2"), Color (.clear)])

    @State private var player = AVPlayer()
    private var numberOfImages = 6
    
    
    var body: some View { 
        NavigationView{
            GeometryReader { geometry in
                ScrollView(.vertical){
                    VStack{
                        Group{
                            Text("WELCOME TO")
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .position(x:200, y:150)
                            
                            Text("NUTRITIOUS")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .position(x:200, y:170)
                            
                            VideoPlayer(player: player)
                                .onAppear{
                                      if player.currentItem == nil {
                                            let item = AVPlayerItem(url: Bundle.main.url(forResource: "vid1", withExtension: "mp4")!)
                                            player.replaceCurrentItem(with: item)
                                        }
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                                            player.play()
                                        })
                                    }
                                .frame(width: 340.0, height: 340.0,alignment: .center)
                                .position(x:200, y:380)
                                
                            
                            VStack(alignment: .leading){
                                Text("♥  Featuring the nutrient-")
                                    .padding(.top, 30.0)
                                Text("     rich Nutri-9 complex")
                                    .padding(.bottom, 15.0)
                                Text("♥  Responsibly-sourced,")
                                Text("     skin-essential nutrients")
                                    .padding(.bottom, 15.0)
                                Text("♥  Made with 92% naturally")
                                Text("     derived ingredients")
                                    .padding(.bottom, 15.0)
                                Text("♥  Inspired by")
                                Text("     Nutrigenomics")
                            }
                            .padding(.horizontal, 25.0)
                            .foregroundColor(Color.white)
                            .position(x:200, y:400)
                            .font(.title3)
                            .tracking(3)
                            .fontWeight(.light)
                        }
                        
                        Group{
                            ZStack{
                                Rectangle()
                                    .fill(Color("color1"))
                                    .frame(width: 450, height: 350)
                                    .position(x:200,y:520)
                                
                                Text("LEARN MORE")
                                    .position(x:202, y:400)
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.heavy)
                                    .tracking(5)
                                Text("CLICK TO LEARN ABOUT . . .")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .position(x:200, y:435)
                                    .foregroundColor(Color("color2"))
                                    .tracking(3)
                                
                                HStack{
                                    VStack{
                                        NavigationLink(destination: NutView().navigationBarHidden(false)){
                                            GifImage("nutri")
                                        }
                                        .frame(width:170, height:169)
                                        .position(x:103, y:560)
                                    }
                                    VStack{
                                        NavigationLink(destination: NiView().navigationBarHidden(false)){
                                            GifImage("nine")
                                        }
                                        .frame(width:170, height:169)
                                        .position(x:90, y:560)
                                    }
                                }
                            }
                        }
                        
                        Group{
                            Text("COULD IT GET ANY BETTER?")
                                .multilineTextAlignment(.center)
                                .position(x:196, y:470)
                                .font(.title2)
                                .foregroundColor(Color.white)
                                .fontWeight(.heavy)
                                .tracking(5)
                                .lineSpacing(10.0)
                            
                            Slider()
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0.0))
                                .position(x:195, y:650)
                        }
                        
                        Group{
                            Text("With Skin-loving, skin-essential nutrition that serves your skin.")
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 35.0)
                                .position(x:199, y:815)
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .tracking(3)
                                .lineSpacing(10.0)
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color.clear)
                                    .background(LinearGradient(gradient: gradient1, startPoint: .top, endPoint: .bottom))
                                    .frame(width:400, height:200)
                                    .position(x:196.5,y:510)
                                Rectangle()
                                    .fill(Color("color2"))
                                    .frame(width: 150, height: 50)
                                    .position(x:195,y:480)
                                Text("IT CAN.")
                                    .multilineTextAlignment(.center)
                                    .position(x:197, y:480)
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.heavy)
                                    .tracking(5)
                                    .lineSpacing(10.0)
                                
                                Rectangle()
                                    .frame(width:400, height:50)
                                    .foregroundColor(.clear)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color("colortwo")]),startPoint: .trailing,endPoint: .bottom))
                                    .position(x:200,y:910)
                                Rectangle()
                                    .frame(width:400, height:50)
                                    .foregroundColor(.clear)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color("colortwo")]),startPoint: .leading,endPoint: .bottom))
                                    .position(x:200,y:1070)
                                Rectangle()
//                                    .fill(Color("color2"))
                                    .frame(width:400, height:50)
                                    .foregroundColor(.clear)
                                    .background(LinearGradient(gradient: Gradient(colors: [Color.clear, Color("colortwo")]),startPoint: .trailing,endPoint: .bottom))
                                    .position(x:200,y:1218)
                                
                                GifImage("oil")
                                    .frame(width:170, height:168)
                                    .position(x:155, y:910)
                                GifImage("redness")
                                    .frame(width:170, height:168)
                                    .position(x:270, y:1070)
                                GifImage("poremin")
                                    .frame(width:170, height:168)
                                    .position(x:130, y:1220)
                            }
                        }
                        
                        Group{
                            Text("And Responsibly-sourced, 92% naturally derived ingredients.")
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal, 35.0)
                                .position(x:200, y:1245)
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .fontWeight(.light)
                                .tracking(3)
                                .lineSpacing(10.0)
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color.clear)
                                    .background(LinearGradient(gradient: gradient2, startPoint: .top, endPoint: .bottom))
                                    .position(x:196.5,y:1360)
                                    .frame(width:400,height:300)
                                Text("NUTRICIOUS IS MADE WITHOUT:")
                                    .multilineTextAlignment(.leading)
                                    .position(x:70, y:1320)
                                    .font(.body)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.heavy)
                                    .tracking(3)
                                    .lineSpacing(10.0)
                                    .padding(.leading, 50.0)
                                VStack(){
                                    Text("X ANIMAL-DERIVED")
                                    Text("  INGREDIENTS")
                                        .padding(.bottom,15)
                                    Text("X FRAGRANCE")
                                        .padding(.bottom,15)
                                    Text("X SILICONE")
                                        .padding(.bottom,15)
                                    Text("X SYNTHETIC COLORS")
                                        .padding(.bottom,15)
                                    Text("X MINERAL OIL")
                                        .padding(.bottom,15)
                                    Text("X SULFATES")
                                        .padding(.bottom,15)
                                    Text("X SULFITE")
                                        .padding(.bottom,15)
                                    Text("X DRYING ALCOHOL")
                                }
                                .tracking(3)
                                .position(x:198, y:1570)
                                .foregroundColor(Color.white)
                            }
                            
                            Group{
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color.clear)
                                        .background(LinearGradient(gradient: gradient3, startPoint: .top, endPoint: .bottom))
                                        .position(x:196.5,y:1525)
                                        .frame(width:400,height:200)
                                    
                                    Text("NUTRICIOUS IS MADE WITH:")
                                        .multilineTextAlignment(.leading)
                                        .position(x:15, y:1505)
                                        .font(.body)
                                        .foregroundColor(Color.white)
                                        .fontWeight(.heavy)
                                        .tracking(3)
                                        .lineSpacing(10.0)
                                        .padding(.leading, 100.0)
                                    
                                    ZStack{
//                                        Rectangle()
//                                            .foregroundColor(Color.clear)
//                                            .background(LinearGradient(gradient: gradient1, startPoint: .top, endPoint: .bottom))
//                                            .position(x:196.5,y:2047)
//                                            .frame(width:400,height:200)
                                        
                                        NavigationLink(destination: SustainView()) {Text("Learn more about our commitment to sustainability >")
                                                .font(.body)
                                                .fontWeight(.light)
                                                .foregroundColor(Color.white)
                                                .multilineTextAlignment(.trailing)
                                                .lineLimit(2)
                                                .tracking(1)
                                                .padding(.horizontal, 60.0)
                                                .underline()
                                        }.position(x:227, y:2090)
                                        
                                        GifImage("kelp")
                                            .frame(width:150, height:146)
                                            .position(x:110, y:1630)
                                        GifImage("redalg")
                                            .frame(width:150, height:146)
                                            .position(x:283, y:1800)
                                        GifImage("coco")
                                            .frame(width:150, height:145)
                                            .position(x:110, y:1970)
                                        
                                        Image("ewg")
                                            .resizable()
                                            .frame(width:150, height:146)
                                            .position(x:283, y:1630)
                                        Image("sust")
                                            .resizable()
                                            .frame(width:150, height:146)
                                            .position(x:110, y:1800)
                                        Image("future")
                                            .resizable()
                                            .frame(width:150, height:146)
                                            .position(x:283, y:1970)
                                    }
                                }
                            }
                        }
                        
                        Group{
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color.clear)
                                    .background(LinearGradient(gradient: gradient4, startPoint: .bottom, endPoint: .top))
                                    .position(x:196.5,y:2295)
                                    .frame(width:400,height:250)
                                Text("START YOUR NUTRITIOUS JOURNEY")
                                    .position(x:177, y:2030)
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                    .fontWeight(.heavy)
                                    .multilineTextAlignment(.center)
                                    .tracking(5)
                                    .padding(.horizontal, 20.0)
                                HStack{
                                    Image("shop1")
                                        .resizable()
                                        .frame(width:220,height:228)
                                        .position(x:277,y:2230)
                                    ZStack{
                                        Rectangle()
                                            .fill(.pink)
                                            .frame(width: 150,height:230)
                                            .position(x:-120,y:2231)
                                        Link("SHOP NOW", destination: URL(string: "https://www.esteelauder.com/products/26393/product-catalog/skin-care/skin-care-collections/nutritious?gclid=Cj0KCQjwtO-kBhDIARIsAL6LoreKKIlvN5hqg97NVhKu0ncLYv-vpIek09HLA37fYfb_jmSn6IXXqgsaAhgMEALw_wcB&gclsrc=aw.ds")!)
                                            .position(x:-121, y:2230)
                                            .font(.largeTitle)
                                            .foregroundColor(Color.white)
                                            .fontWeight(.heavy)
                                            .tracking(5)
                                            .padding(.trailing,50.0)
                                    }
                                }
                            }
                        }
                    }
                    
                    ForEach (0..<155) { _ in
                        ListItem(geometry: geometry)
                    }
                    
                }
                .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 20))
                .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                .edgesIgnoringSafeArea(.all)
                .tracking(8)
                
            }
        }
    }
}
    


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct ListItem: View {
    let geometry: GeometryProxy
    
    var body: some View {
        Text("")
    }
}
