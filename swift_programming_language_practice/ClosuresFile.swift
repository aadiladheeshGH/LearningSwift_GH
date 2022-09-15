//
//  ClosuresFile.swift
//  swift_programming_language_practice
//
//  Created by Aadil Adheesh on 13/09/22.
//

var addOrSubtractClosure : (Int, Int, Bool) -> Int = {Op1, Op2, choice in
    print(type(of: Op1))
    print(type(of: Op2))
    print(type(of: choice))
    return choice ? Op1 + Op2 : Op1 - Op2
}

func randomInput(Num1 : Int, Num2 : Int, Choice : Bool) -> Int {
    return Choice ? Num1 * 2 : Num2 * 100
}

var addOrSubtractClosureOptional : ((Int, Int, Bool) -> Int)? = {Op1, Op2, choice in
    print(type(of: Op1))
    print(type(of: Op2))
    print(type(of: choice))
    return choice ? Op1 + Op2 : Op1 - Op2
}
