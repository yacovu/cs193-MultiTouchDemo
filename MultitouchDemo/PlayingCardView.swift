//
//  PlayingCardView.swift
//  MultitouchDemo
//
//  Created by Yacov Uziel on 08/10/2018.
//  Copyright © 2018 Yacov Uziel. All rights reserved.
//

import UIKit

class PlayingCardView: UIView {
    
    var cardImageName: String = ""

    override func draw(_ rect: CGRect) {
        let roundRect = UIBezierPath(roundedRect: bounds, cornerRadius: 16.0)
        roundRect.addClip()
        UIColor.white.setFill()
        roundRect.fill()
    }

}
