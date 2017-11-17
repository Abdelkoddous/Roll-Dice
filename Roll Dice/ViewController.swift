//
//  ViewController.swift
//  Roll Dice
//
//  Created by Abdelkoddous Zaidi on 17.11.17.
//  Copyright © 2017 Abdelkoddous Zaidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
      
      @IBOutlet weak var label: UILabel!
      @IBOutlet weak var startBTN: UIButton!
      
      @IBOutlet weak var diceImageLeft: UIImageView!
      @IBOutlet weak var diceImageRight: UIImageView!

      var timer = Timer()
      

      override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            let randomDice1 = arc4random_uniform(5)+1
            let randomDice2 = arc4random_uniform(5)+1
            label.text = "You Need \(randomDice1) and \(randomDice2) to win"
            
      }

      override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      }
      
      
      

      @IBAction func rollTheDice(_ sender: Any) {
            
            let randomDice1 = arc4random_uniform(5)+1
            let randomDice2 = arc4random_uniform(5)+1
            
            diceImageLeft.image = UIImage(named: "Dice\(randomDice1)")
            diceImageRight.image = UIImage(named: "Dice\(randomDice2)")
            startBTN.isEnabled = false
            startBTN.alpha = 0.50
            
            timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(updateRandomDice), userInfo: nil, repeats: false)
            
            
      }
      
      
      
      @objc func updateRandomDice(){
            let randomDice1 = arc4random_uniform(5)+1
            let randomDice2 = arc4random_uniform(5)+1
            
            label.text = "You Need \(randomDice1) and \(randomDice2) to win"
            
            diceImageLeft.image = UIImage(named: "Dice1")
            diceImageRight.image = UIImage(named: "Dice1")
            startBTN.isEnabled = true
            startBTN.alpha = 1
            
      }
      
      
      
      
      
      

}





























