//
//  main.swift
//  swift_programming_language_practice
//
//  Created by Aadil Adheesh on 21/08/22.
//

//import Darwin

//import Foundation

//print("Hello, World!")
/*
 let value = 22/7
print(value)
print(type(of: value))
*/

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
/*
typealias height = (ft: Int, inch: Int)
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
/*
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
 */



//9. Optionals & nil
/*
 let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)  //how are we declaring an optional in this example?
print(convertedNumber)
print(type(of: possibleNumber))
print(type(of: convertedNumber))



typealias name = (firstname:String, middlename: Optional<String>, lastname: String)

var myname : name
myname.firstname = "Aadil"
myname.middlename = "Adheesh"
myname.lastname = "Akbar"
print(myname)

var friendname : name
friendname.firstname = "Afro"
friendname.middlename = nil
friendname.lastname = "Jack"
print(friendname)
print(type(of: friendname.middlename))


typealias address = (Flatno : Int?, buildingName: String, pincode: Int)

var myaddr : address
myaddr.Flatno = nil
myaddr.buildingName = "Sarita Nagari Phase - II"
myaddr.pincode = 411030
print(myaddr)


//nil
var serverResponseCode : Int?
serverResponseCode = 444
print(serverResponseCode) //Output -> Optional(444)
print(serverResponseCode!) //Output -> 444
print(type(of: serverResponseCode))
*/

//Nil coelescing operator ??
/*
var new_age = Int("44.87") ?? 0
print(new_age)
print(type(of: new_age))
*/


/*
 IMPLICITLY UNWRAPPED OPTIONAL
 “An implicitly unwrapped optional is a normal optional behind the scenes, but can also be used like a non-optional value, without the need to
unwrap the optional value each time it’s accessed.”
 */

/*
var num1: Int! = 100      //using implicitly unwrapped optional here using the "!" mark
print(num1)
var num2:Int = num1
print(num2)

var num1: Int? = 100       //using optional here so we are having to unwrap the optional value every                               single time w
print(num1)
var num2:Int = num1!
var num3:Int = num1!
print(num2)
*/

/*
//examples from the book
let possibleString: String? = "An optional string"  //normal optional string
let forceString: String = possibleString!   // requires and exclamation mark to unwrap it
print(forceString)

let assumedString: String! = "An implicitly unwraped optional string"
let implicitString: String = assumedString
print(assumedString)
*/



//If Statements and forced unwrapping
/*
var convertednumber: Int? = nil
if convertednumber != nil
{
    print("converted number contains some integer value")
}
else{
    print("converted number contains nil value")
}


var ConvertedNumber: Int//? = nil
if ConvertedNumber != nil
{
    print("Converted number is \(ConvertedNumber)")
}
 */


/***STRINGS AND CHARACTERS**/

//Practice based on examples of Gaurav Sir
/*
 var name = "Aadil"
print(type(of: name))
let oneAlphabet: Character = "A"
print(type(of: oneAlphabet))
print("'This is highlighted'")

let character_count = name.coun  t
print("Total number of characters in the string is \(character_count)")

print(name.first)       // prints Optional(A)
print(name.last)        // prints Optional(l)
print("bouncer".first)  // prints Optional(b) // Used to declare a variable an print simultaneuosly

//1.
let first_index = name.startIndex
print(name[name.startIndex])

let middle_index = name.index(name.startIndex, offsetBy: 2)
print(name[middle_index])

let last_index = name.endIndex
print(name[name.index(name.endIndex, offsetBy: -1)])
//endIndex => End index is +1 from the last character position
//print(name[name.endIndex]) //Fatal error: String index is out of bounds

//2.
var animal = "Monkey"
let firstindex = animal.startIndex
print(animal[animal.startIndex])

let fourth_index = animal.index(animal.startIndex, offsetBy: 3)
print(animal[fourth_index])

let lastindex = animal.index(animal.endIndex, offsetBy: -1)
print(animal[last_index])

//3.
var fruit = "Pineapple"
let firstLetter = fruit.startIndex
print(fruit[fruit.startIndex])

let fifthLetter = fruit.index(fruit.startIndex, offsetBy: 4)
print(fruit[fifthLetter])

let lastLetter = fruit.index(fruit.endIndex, offsetBy: -1)
print(fruit[lastLetter])
*/


// STRING LITERALS
/* let sentence = "This is an example of a string literal"
print(type(of: sentence))
*/

//MULTILINE STRING LITERALS
/*
 let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
        please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on \
    till you come to the end; then stop.
"""
print(quotation)
*/

//EXTENDED STRING DELIMITERS
/*
 var example = "line1 \nline2"
print(example)
var example2 = #"line1 \nline2"#   // Writing a string between two # will remove the special effects of a character
print(example)


var threeDoubleQuoteExample = #"""
this example has three double quotes inside three double quotes : """
"""#
print(threeDoubleQuoteExample)
*/


// STRING MUTABILITY
/*
 var variableString = "horse"
variableString += " and carriage"
print(variableString)

let variableString2 = "horse"   //Error : Left side of mutating operator isn't mutable: 'variableString2' is a 'let' constant
variableString2 += " and carriage"
//print(variableString2)
 */

/*      //example for adding two string || example for using the append keyword
 var word1 = "good"
var word2 = " dog"
var word3 = word1 + word2
print(word3)    //prints good dog
let exclamationmark: Character = "!"
word3.append(exclamationmark)
print(word3)    //prints good dog!
 */

/*let badstart = """
one
two
"""

let end = """
three
"""

print(badstart + end)

let goodstart = """
one
two

"""

print(goodstart + end)
*/




//STRING INDICES
/*
let greeting = "good morning"
print(greeting[greeting.startIndex])        //prints g
print(greeting[greeting.index(after: greeting.startIndex)])     //prints o
print(greeting[greeting.index(before: greeting.endIndex)])      //prints g
let letterofSecondword = greeting.index(greeting.startIndex, offsetBy: 5)
print(greeting[letterofSecondword])                                //prints m
*/

/*for index in greeting.indices {                            /*** Rectify Error in these 3 lines of code*/
    print(("\(greeting[index])", terminator : "")
    }
*/
//Inserting and removing
/*
 var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)
print(welcome)              //prints Hello!
welcome.insert(contentsOf: " There", at: welcome.index(before: welcome.endIndex))
print(welcome)              //prints Hello There!
*/
// TO REMOVE AT A PARTICULAR INDICE                                             /*** red flagged in book*/
//welcome.remove(at: welcome.Index(String.Index, offsetBy: -1))
//print(welcome)
//let range = welcome.Index(welcome.index, offsetBy: -6) ..< welcome.endIndex
//welcome.removeSubrange(range)
//print(welcome)




//COMPARING STRINGS
//1. String and character equality
/*
 let sentence1 = "I am a good person"
let sentence2 = "I am a good person"
if sentence1 == sentence2{
    print("Sentence1 and sentence2 are the same")
}

let eAcuteQuestion = "caf\u{E9}"
let combinedeAcuteQuestion = "caf\u{65}\u{301}"

if eAcuteQuestion == combinedeAcuteQuestion{
    print("Both strings w diff unicode characters are equal")
}

let latinCapitalLetterA = "\u{41}"
let RussianCApitalLetterA = "\u{0410}"

if latinCapitalLetterA == RussianCApitalLetterA{
    print("They are equal")
}
else{
    print("They are not equal")
}
*/

//2. Prefix and Suffix Equality
/*
 let name_1 = "Aadil"
let name_2 = "Aadil Adheesh"
print(name_1.hasSuffix(name_2))     //prints false
print(name_2.hasPrefix(name_1))     //prints true
*/

/*
 let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var sceneCount = 0
for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1"){
        sceneCount += 1
    }
}
print("Total number of scenes in Act 1 is \(sceneCount)")

var CapuletsMansion = 0
var LawrenceCell = 0

for scene in romeoAndJuliet{
    if scene.hasSuffix("Capulet's mansion"){
        CapuletsMansion += 1
    }
    
    if scene.hasSuffix("Friar Lawrence's cell"){
        LawrenceCell += 1
    }
}
print("\(CapuletsMansion) Mansion scenes & \(LawrenceCell) Lawrence cell scenes")
*/


//RANDOM EXAMPLE
/*
 var s = String(repeating: "ab", count: 10)
print(s)            //prints abababababababababab
s += "gg"
print(s)            //prints ababababababababababgg
s.append("z")       //appends z
s.insert("q", at: s.index(s.startIndex, offsetBy: 3))       //inserts q at specified value
print(s)
*/






/***CONTROL FLOW***/

//FOR-IN LOOPS

/*
 let names = ["Alex", "Jack", "Ryan", "Moby"]
for name in names{
    print("Hello \(name)")
}
*/

/*let numberoflegs = ["spider":8, "ant":6, "cow":4]
for (animalname,legs) in numberoflegs{
    print("Animal \(animalname) has \(legs) number of legs")
}
*/

/*
 for index in 1...5{
    print("index\(index) times 5 is \(index*5)")
}
*/

//IF Statement
/*
 var temperatureinfahrenheit = 48
if temperatureinfahrenheit <= 38{
    print("It's very cold outside")
}
else if temperatureinfahrenheit >= 86{
    print("It's very hot, wear a sunscreen")
}
else{
    print("It's not that cold, wear a t-shirt")
}
*/
