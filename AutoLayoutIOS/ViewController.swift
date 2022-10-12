//
//  ViewController.swift
//  AutoLayoutIOS
//
//  Created by shegz on 11/10/2022.
//

import UIKit

class ViewController: UIViewController {
    var rightDiceNumber = 0
    var leftDiceNumber = 0
    let diceImages =  ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func roleButtonPressed(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        diceImageViewRight.image = UIImage(named: diceImages[rightDiceNumber])
        diceImageViewLeft.image = UIImage(named: diceImages[leftDiceNumber])
        
    }
}
