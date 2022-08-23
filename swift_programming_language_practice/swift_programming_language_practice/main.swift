//
//  main.swift
//  swift_programming_language_practice
//
//  Created by Aadil Adheesh on 21/08/22.
//

//import Foundation

//print("Hello, World!")



//CHAPTER ONE: THE BASICS
/*
print("Hello, World!")
 
 
//1. Constants and Variables
  

var age = 56        //age is of type int and is a variable | This is the 1st way to declare and define a vaurable with an initial state
var myAge:Int = 44 //This is my 2nd way where data typeis explicitly "annotated" is called type annotation and assigning an intital value
var newAge:Int    //This is 3rd way, current line is declaration
newAge = 56      //current line is definition/assignment operation
print(type(of: age))
print(type(of: myAge))
print(type(of: newAge))

 
//2. Integer Bounds
print(Int.max)
print(Int.min)

print(UInt8.max)
print(UInt8.min)


print(Int8.max)
print(Int8.min)
print(Int16.max)
print(Int16.min)
print(Int32.max)
print(Int32.min)
print(Int64.max)
print(Int64.min)


 
//3. Floating Point and Double numbers
var ht = 175.6
var height_f:Float = 178.667857647564654
var height_d:Double
height_d = 174.54567476453356
print(height_f)
print(height_d)
print(type(of: ht))
print(type(of: height_f))
print(type(of: height_d))

print(Double.max)
print(Float.max)

let capitalOfIndia = "Delhi" //capitalOfIndia is of a type string and is a constant
print(type(of: capitalOfIndia))
*/

//4. Numeric Literals
/*
 let decimalnumber = 17
print(type(of: decimalnumber))

let binarynumber = 0b01001
print(type(of: binarynumber))

let octalnumber = 0o7272
print(type(of: octalnumber))

let hexadecimalnumber = 0x73468
print(type(of: hexadecimalnumber))
let hexadecimal_double = 0xC.3p0
print(type(of: hexadecimal_double))

let exponent_double = 1.21875e1
print(type(of: exponent_double))

let onemillion = 1_000_000
print(type(of: onemillion))
*/

//5. Integer Type Conversion
/*
 let three = 3
let pointdecimals=0.14159
let pi = Double(three) + pointdecimals
print(pi)

let integerPi = Int(pi)
print(integerPi)
 */



//6. TYPE ALIASES
/*typealias height = (ft: Int, inch: Int)
var myht:height
myht.ft = 5
myht.inch = 9
print(myht)
print(type(of: myht))
print(myht.ft)
print(type(of: myht.ft))
*/

//7. Booleans
/*
 let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious{
    print("Very tasty!")
}

else {
    print("eww, turnips are disgusting")
}
print(type(of: orangesAreOrange))

let i=1
if i==1
{ print("working fine")
}
*/


//8. Tuples
let http404error = (404,"Page not found")
print(type(of: http404error))

let(statusCode,errorMessage) = http404error
print(statusCode)
print("The error message is \(errorMessage)")


let (justTheStatusCode,_) = http404error
print(justTheStatusCode)

print("The error code is \(http404error.0)")
print("The error message is \(http404error.1)")

let https200code = ( code:200, message: "Ok")
print("The status code is\(https200code.code)")
print("The message is \(https200code.message)")

