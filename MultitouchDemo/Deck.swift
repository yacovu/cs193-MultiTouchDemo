//
//  Deck.swift
//  MultitouchDemo
//
//  Created by Yacov Uziel on 08/10/2018.
//  Copyright © 2018 Yacov Uziel. All rights reserved.
//

import Foundation

class Deck {
    private var Cards = [Card]()
    
    private let shapes = ["hearts", "diamonds", "clubs", "spades"]
    private var num = 1
    private var shapeIndex = 0

    
    func nextCard() -> String {
        let cardName = String(num) + "_of_" + shapes[shapeIndex]
        shapeIndex = (shapeIndex + 1) % 4
        num = (num + 1) % 13
        if num == 0 {
            num = 1
        }
        return cardName
    }
}
