//
//  ContentView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/29/23.
//

import Foundation
import SwiftUI


struct ContentView: View {
    let gradient = Gradient(colors: [Color("color1"),Color("color2dark")])
    @State private var fadeInOut = false
    @ObservedObject var viewModel: FinalMemoryGame
    let rows = [
           GridItem(.fixed(170), spacing:0),
           GridItem(.fixed(170), spacing:0),
           GridItem(.fixed(170), spacing:0),
           GridItem(.fixed(170), spacing:0)
       ]

    
    var body: some View {
        ScrollView {
            VStack{
                Text("MATCHING MEMORY GAME")
                    .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 30))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,5)
                    .tracking(5)
                Text("GET FAMILIAR WITH THE PRODUCTS BY MATCHING THE MODELS TO THEIR PRODUCTS")
                    .font(.custom(("AkzidenzGroteskBQ-Reg"), size: 15))
                    .font(.body)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color("color2"))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,40)
                    .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                
            }
            .position(x:214.5,y:70)
            .foregroundColor(.white)
            
            
            LazyHGrid(rows:rows, spacing:30){
                ForEach(viewModel.cards) { card in DogCard(card: card)
                        .aspectRatio(1, contentMode: .fill)
                        .frame(width:150, height: 150)
                        .onTapGesture{
                            viewModel.choose(card)
                        }
                }
            }.position(x:214.5, y:347)
        }
        .background(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
    }
}
        
struct DogCard: View {
    var card: MemoryGame.Card
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 5)
            if card.isFaceUp {
                shape.stroke(lineWidth: 0).foregroundColor(.clear)
                Image(card.content).resizable().scaledToFit()
                
            }
            else {
                shape.fill().foregroundColor(Color("colortwo2"))
            }
            
        }.animation(.easeInOut(duration: 0.5), value: card.animationAmount)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: FinalMemoryGame())
    }
}
    
