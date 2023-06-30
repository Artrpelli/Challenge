//
//  FirstView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/25/23.
//

import SwiftUI
import AVKit

struct FirstView: View {
    
    @State private var player = AVPlayer()

    
    var body: some View {
        NavigationView{
            ZStack{
                
                VideoPlayer(player: player)
                    .padding(.all, -130.0)
                    .onAppear{
                          if player.currentItem == nil {
                                let item = AVPlayerItem(url: Bundle.main.url(forResource: "intro", withExtension: "mov")!)
                                player.replaceCurrentItem(with: item)
                            }
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                                player.play()
                            })
                        }

                
                NavigationLink(destination: MainView().navigationBarHidden(true)) {
                    Text("Learn more >")
                        .foregroundColor(Color(red: 0.976, green: 0.706, blue: 0.769))
                        .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 20))
                }
                .frame(width:200, height:50)
                .position(x:220, y:815)
                
                
            }
        }
        .background(Color(.black))
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
