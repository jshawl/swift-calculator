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
    
    func evaluate( sender: AnyObject){
        let result = calculator.eval( calculator.n!, operand:calculator.operand!, n2: calculator.n2! )
        numberDisplay?.text = "\(result)"
        calculator.reset()
        calculator.n = result
        calculator.operand = sender.currentTitle!!
    }
    
    @IBAction func eval(sender: AnyObject) {
        if calculator.isEvaluateable() {
          evaluate( sender )
        }
    }
    
    
    @IBOutlet weak var numberDisplay: UILabel!
    @IBAction func operand(sender: AnyObject) {
        if calculator.isEvaluateable() {
            evaluate( sender )
        }
        calculator.operand = sender.currentTitle!!
        if calculator.n? != nil {
            if calculator.n2? != nil {
                evaluate( sender )
            }
        }
    }
    @IBAction func clear(sender: AnyObject) {
        numberDisplay?.text = ""
        calculator.reset()
    }
    @IBAction func numberPress(sender: AnyObject) {
        var n = calculator.n ?? 0
        var n2 = calculator.n2 ?? 0
        if let number = sender.currentTitle!{
            
            if calculator.operand == nil {
                numberDisplay?.text = numberDisplay!.text! + number
                calculator.n = n + number.toInt()!
            } else {
                numberDisplay?.text = number
                calculator.n2 = n2 + number.toInt()!
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

