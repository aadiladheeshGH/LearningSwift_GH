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


//4. Numeric Literals
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
/*let three = 3
let pointdecimals=0.14159
let pi = Double(three) + pointdecimals
print(pi)

let integerPi = Int(pi)
print(integerPi)
*/


//6. TYPE ALIASES
typealias height = (ft: Int, inch: Int)
var myht:height
myht.ft = 5
myht.inch = 9
print(myht)
print(type(of: myht))
print(myht.ft)
print(type(of: myht.ft))



/***CHAPTER TWO: BASIC OPERATORS
 */
/*
//Assignment Operators
let a = 3
var b = 7 // must use var here because value used in let cannot be changed
b = a // b is now equal to 3
print(a)

let (x,y) = (9,3)
print(x)
print(y)



//Arithmetic operators
let a = 9
let b = 4
let c = a + b //Addition
let d = a - b //Subtraction
let e = a * b //Multiplication
let f = a / b //Division
let g = a % b //remainder
print(c)
print(d)
print(e)
print(f)
print(g)


var h = "Aadil "
var i = "Adheesh"
let j = h + i
print(j)




//Compund assignment operators
var a = 1
a += 2  //Signifies a = a + 2
print(a)




//ComparisonOperators
let a = "Aadil"
let b = "Aadil"
if a == b
{
    print("Hello World")
}
else
{
    print("Cannot print as a != b")
}

 


//Ternary Conditional
//example which calculates the height for a table row. The row height should be 50 points taller than the content height if the row has a header, and 20 points taller if the row doesn’t have a header:

let content_height = 40
let hasheader = false
let row_height = content_height + (hasheader ? 50 : 20)
print(row_height)

    //traditional way
let ContentHeight = 50
let HasHeader = true
let RowHeight: Int
if HasHeader
{
    RowHeight = ContentHeight + 50
}
else
{
    RowHeight = ContentHeight + 20
}
print(RowHeight)
*/


