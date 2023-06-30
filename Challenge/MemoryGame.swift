//
//  MatchView.swift
//  Challenge
//
//  Created by Angela Hernandez on 6/29/23.
//

import Foundation
import SwiftUI


struct MemoryGame {
    private(set) var cards: [Card]
    private(set) var numberOfPairs: Int
    private(set) var upCards: [Int]
    private(set) var matches: Int
    private(set) var lost: Bool
    
    struct Card: Identifiable {
        var content: String
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var id: Int
        var animationAmount = 0.0
    }
    
    func cardsMatch(card1: Card, card2: Card) -> Bool {
        switch (card1.content, card2.content) {
        case ("radmod", "radinfo"), ("radinfo", "radmod"):
            return true
        case ("airymod", "airyinfo"), ("airyinfo", "airymod"):
            return true
        case ("maskmod", "maskinfo"), ("maskinfo", "maskmod"):
            return true
        case ("foammod", "foaminfo"), ("foaminfo", "foammod"):
            return true
        case let (a, b):
            return a == b
        }
    }
    
    mutating func chooseCard(_ card: Card) {
        if lost {
            return
        }
        for index in cards.indices {
            if cards[index].id == card.id {
                cards[index].animationAmount += 180
                if cards[index].isFaceUp {
                    return
                }
                //If 2+ cards are picked, they get faced down
                else if upCards[0] != -1 && upCards[1] != -1 {
                    cards[upCards[0]].isFaceUp.toggle()
                    cards[upCards[1]].isFaceUp.toggle()
                    cards[index].isFaceUp.toggle()
                    upCards[0] = index
                    upCards[1] = -1
                }
                else if upCards[0] != -1 {
                    cards[index].isFaceUp.toggle()
                    if cardsMatch(card1: cards[index], card2: cards[upCards[0]]) {
                        cards[index].isMatched.toggle()
                        cards[upCards[0]].isMatched.toggle()
                        matches += 1
                        upCards[0] = -1
                    }
                    else{
                        upCards[1] = index
                    }
                }
                else{
                    cards[index].isFaceUp.toggle()
                    upCards[0] = index
                }
                
            }
        }
    }
    
    init(numberOfPairsOfCards: Int, contentFactory: (Int) -> String){
        cards = []
        numberOfPairs = numberOfPairsOfCards
        upCards = [-1, -1]
        matches = 0
        lost = false
        
        for index in 0..<numberOfPairsOfCards {
            let content = contentFactory(index)
            cards.append(Card(content: content, id: index * 2 + 1))
        }
        
        cards.shuffle()
    }
}

