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
        numberDisplay?.text = "\(result)"
        calculator.reset()
        calculator.n = result
        calculator.operand = sender.currentTitle!!
    }
    
    @IBAction func eval(sender: AnyObject) {
        if calculator.n2? == nil {
            println("here d00d")
            println( numberDisplay!.text! )
            calculator.n2 = numberDisplay!.text!.toInt()!
        }
        if calculator.isEvaluateable() {
            evaluate( sender )
        }
        calculator.debug()
    }
    
    
    @IBOutlet weak var numberDisplay: UILabel!
    @IBAction func operand(sender: AnyObject) {
        if calculator.isEvaluateable() {
            evaluate( sender )
        }
        calculator.operand = sender.currentTitle!!
        if calculator.n? == nil {
            calculator.n = numberDisplay!.text!.toInt()
        } else {
            if calculator.n2? == nil {
                calculator.n2 = numberDisplay!.text!.toInt()!
            } else {
                evaluate( sender )
            }
        }
        calculator.debug()
        overWriteDisplay = true
    }
    @IBAction func clear(sender: AnyObject) {
        numberDisplay?.text = ""
        calculator.reset()
    }
    @IBAction func numberPress(sender: AnyObject) {
        var n = calculator.n ?? 0
        var n2 = calculator.n2 ?? 0
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

