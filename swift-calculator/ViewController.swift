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
    var overWriteDisplay:Bool = true
    
    func evaluate( sender: AnyObject){
        let result = calculator.eval( calculator.n!, operand:calculator.operand!, n2: calculator.n2! )
        let replaced = "\(result)".stringByReplacingOccurrencesOfString(".0", withString: "", options: nil, range: nil)
        numberDisplay.text = replaced
        calculator.reset()
        calculator.n = result
    }
    
    @IBAction func eval(sender: AnyObject) {
        if calculator.n2? == nil {
            calculator.n2 = NSString(string: numberDisplay!.text!).doubleValue
        }
        if calculator.isEvaluateable() {
            evaluate( sender )
        }
    }
    
    @IBOutlet weak var numberDisplay: UILabel!
    @IBAction func operand(sender: AnyObject) {
        if calculator.n? == nil {
            calculator.n = NSString(string:  numberDisplay!.text! ).doubleValue
        } else {
            if calculator.n2? == nil {
                calculator.n2 = NSString(string: numberDisplay!.text! ).doubleValue
            }
        }
        if calculator.isEvaluateable() {
            evaluate( sender )
        }
        calculator.operand = sender.currentTitle!!
        overWriteDisplay = true
    }
    @IBAction func clear(sender: AnyObject) {
        numberDisplay?.text = ""
        calculator.reset()
    }
    @IBAction func numberPress(sender: AnyObject) {
        if let number = sender.currentTitle!{
            if overWriteDisplay == true {
                numberDisplay?.text = number
                overWriteDisplay = false
            } else {
                numberDisplay?.text = numberDisplay!.text! + number
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

