//
//  ViewController.swift
//  Dice
//
//  Created by Wang on 25/04/2019.
//  Copyright © 2019 Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollTextData: UILabel!
    let arrayRand = ["NO DRINK", "SIP", "DRINK 2 CUPS", "DRINK AT WILL","BOTTOM UP", "DRINK HALF CUP"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        rollOutDice ()
        
    }

    @IBAction func tapPressRollOut(_ sender: UILongPressGestureRecognizer) {
        
        if sender.state == .began {
            
            rollOutDice ()
            
        }
        
    }

    func rollOutDice () {
        
        let randomIndex = Int(arc4random_uniform(UInt32(arrayRand.count)))
        rollTextData.text = arrayRand[randomIndex]
        
    }
    
}

