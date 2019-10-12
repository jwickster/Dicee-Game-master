//
//  ViewController.swift
//  Dice Game
//
//  Created by Joshua Wickster on 8/5/19.
//  Copyright © 2019 Joshua Wickster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let arrayOfDice = ["dice1","dice2","dice3", "dice4", "dice5", "dice6"]

    //Dice Image 1
    @IBOutlet weak var diceImageView1: UIImageView!
    //Dice Image 2
    @IBOutlet weak var diceImageImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }
    
    //Function that implements motion that allows user to shake phone to roll dice
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
    }
    
    //Button interaction
    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
               
               let randomDiceIndex1 = Int.random(in: 0...5)
               let randomDiceIndex2 = Int.random(in: 0...5)
        
               diceImageView1.image = UIImage(named:arrayOfDice[randomDiceIndex1])
               diceImageImage2.image = UIImage(named: arrayOfDice[randomDiceIndex2])
        
        
    }
    
    

}
