//
//  FinalMemoryGame.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/29/23.
//

import Foundation
import SwiftUI

class FinalMemoryGame: ObservableObject {
    
    @Published private var model: MemoryGame = CreateMemoryGame()
    
    static func CreateMemoryGame() -> MemoryGame {
        return MemoryGame(numberOfPairsOfCards: 8, contentFactory: makeContent)
    }
    
    static func makeContent(index: Int)->String {
        let images = ["radmod", "foammod", "maskmod", "airymod","radinfo", "foaminfo", "maskinfo", "airyinfo"]
        
        return images[index]
    }
    
    var cards: Array<MemoryGame.Card> {
        model.cards
    }
    
    var pairs: Int{
        model.numberOfPairs
    }
    
    func choose(_ card: MemoryGame.Card){
        model.chooseCard(card)
    }
    
    var matches: Int{
        model.matches
    }
}
