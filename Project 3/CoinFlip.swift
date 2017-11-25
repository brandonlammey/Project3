//
//  CoinFlip.swift
//  Project 3
//
//  Created by James Glass on 11/16/17.
//  Copyright © 2017 Memory Leeks. All rights reserved.
//

import Foundation
import UIKit

///Class that contains the coin flip screen.
class CoinFlip: UIViewController {
    
    ///Image used for the coin. Either Heads or Tails
    @IBOutlet weak var coinImage: UIImageView!
    ///Label used for indicating which player starts based of the coin flip
    @IBOutlet weak var playerStartText: UILabel!
    ///Button that hides the flip coin button
    @IBOutlet weak var flipVisibility: UIButton!
    ///Button that shows the next button
    @IBOutlet weak var nextVisibility: UIButton!
    //nextVisibility.isHidden = true;
    
    /// Function that flips a coin
    ///
    /// - Parameter sender: Player pressing button
    @IBAction func flipCoin(_ sender: Any) {
        let coinFlip = Int(arc4random_uniform(2))
        //print ("Coin Result: \(coinFlip)")
        
        if(coinFlip == 1)
        {
            coinImage.image = UIImage(named: "Heads");
            playerStartText.text="Player 2 Starts!"; //changed this from 1. Player 1 starts the game but Player 2 starts the card draft
            flipVisibility.isHidden = true;
            nextVisibility.isHidden = false;
            playerStart = 1;
        }
        else
        {
            coinImage.image = UIImage(named: "Tails");
            playerStartText.text="Player 1 Starts!"; //changed this from 2. Player 2 starts the game but Player 1 starts the card draft
            flipVisibility.isHidden = true;
            nextVisibility.isHidden = false;
            playerStart = 2;
        }
        
    }
}