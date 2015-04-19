//
//  Calculator.swift
//  swift-calculator
//
//  Created by Jesse Shawl on 4/18/15.
//  Copyright (c) 2015 Jesse Shawl. All rights reserved.
//

import Foundation



class Calculator {
    
    init(){
        
    }
    
    var n:Double?
    var n2:Double?
    var operand:String?
    
    func eval( n: Double, operand:String, n2:Double ) -> Double {
        if operand == "+"{
            return n + n2
        }
        if operand == "-"{
            return n - n2
        }
        if operand == "✕"{
            return n * n2
        }
        if operand == "÷"{
            return n / n2
        }
        
        return n
    }
    
    func add(n:Double, n2:Double) -> Double{
        return n + n2
    }
    
    func reset(){
        n = nil
        n2 = nil
        operand = nil    
    }
    
    func isEvaluateable() -> Bool {
        let n = self.n != nil
        let n2 = self.n2 != nil
        let operand = self.operand != nil
        return n && n2 && operand
    }
    
    func debug(){
        println("n: \(self.n?)")
        println("n2: \(self.n2?)")
        println("operand: \(self.operand?)")
    }
    
}

