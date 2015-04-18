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
    
    var n:Int?
    var n2:Int?
    var operand:String?
    
    func eval( n: Int, operand:String, n2:Int ) -> Int {
        if operand == "+"{
            return n + n2
        }
        if operand == "-"{
            return n - n2
        }
        return n
    }
    
    func add(n:Int, n2:Int) -> Int{
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
    
}

