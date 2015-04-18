//
//  ViewController.swift
//  swift-calculator
//
//  Created by Jesse Shawl on 4/16/15.
//  Copyright (c) 2015 Jesse Shawl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calculator = Calculator()
    @IBOutlet weak var numberDisplay: UILabel!
    @IBAction func operand(sender: AnyObject) {
        calculator.operand = sender.currentTitle!!
        numberDisplay?.text = numberDisplay!.text! + calculator.operand!
        if calculator.n? != nil {
            if calculator.n2? != nil {
                let result = calculator.eval( calculator.n!, operand:calculator.operand!, n2: calculator.n2! )
                numberDisplay?.text = "\(result)"
                calculator = Calculator()
            }
        }
    }
    @IBAction func clear(sender: AnyObject) {
        numberDisplay?.text = ""
    }
    @IBAction func numberPress(sender: AnyObject) {
        var n = calculator.n ?? 0
        if let number = sender.currentTitle!{
            numberDisplay?.text = numberDisplay!.text! + number
            if calculator.operand == nil {
                calculator.n = n + number.toInt()!
            } else {
                calculator.n2 = n + number.toInt()!
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

