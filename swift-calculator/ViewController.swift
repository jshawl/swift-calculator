//
//  ViewController.swift
//  swift-calculator
//
//  Created by Jesse Shawl on 4/16/15.
//  Copyright (c) 2015 Jesse Shawl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var numberDisplay: UILabel!
    @IBAction func clear(sender: AnyObject) {
        numberDisplay?.text = ""
    }
    @IBAction func numberPress(sender: AnyObject) {
        if let number = sender.currentTitle!{
            numberDisplay?.text = numberDisplay!.text! + number
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

