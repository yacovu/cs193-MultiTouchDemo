//
//  Deck.swift
//  MultitouchDemo
//
//  Created by Yacov Uziel on 08/10/2018.
//  Copyright © 2018 Yacov Uziel. All rights reserved.
//

import Foundation

class Deck {
    
    private let shapes = ["hearts", "diamonds", "clubs", "spades"]
    private var num = 1
    private var shapeIndex = 0

    
    func nextCard() -> String {
        let cardName = getCardNum() + "_of_" + shapes[shapeIndex]
        shapeIndex = (shapeIndex + 1) % 4
        num = (num + 1) % 13
        return cardName
    }
    
    func getCardNum() -> String {
        switch num {
        case 0, 1: return "2"
        case 10: return "jack"
        case 11: return "king"
        case 12: return "ace"
        default: return String(num)
        }        
    }
}
