//
//  ViewController.swift
//  MultitouchDemo
//
//  Created by Yacov Uziel on 08/10/2018.
//  Copyright © 2018 Yacov Uziel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let deck = Deck()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var playingCardView: PlayingCardView! {
        didSet {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(getNextCard))
            swipe.direction = [.left, .right]
            playingCardView.addGestureRecognizer(swipe)
        }
    }
    
    @objc func getNextCard() {
        let image = UIImage(named: deck.nextCard())
        let imageView = UIImageView(image: image)
        
        self.playingCardView.layer.backgroundColor = UIColor.white.cgColor
        self.playingCardView.addSubview(imageView)
        self.playingCardView.bringSubview(toFront: imageView)
    }


}

