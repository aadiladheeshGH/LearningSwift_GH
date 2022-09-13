//
//  FunctionsFile.swift
//  swift_programming_language_practice
//
//  Created by Aadil Adheesh on 13/09/22.
//

import Foundation


//Inout parameter
func inout_swap(param1:inout Int, param2:inout Int){
    let tmp = param1
    param1 = param2
    param2 = tmp
}


func swap(param1: Int, param2: Int) -> (Int,Int){   //Same example but without using IN Out parameters
    return (param2, param1)
}
