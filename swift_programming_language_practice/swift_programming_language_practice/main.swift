//CLOSURES



print(addOrSubtractClosure(1,2,true))
addOrSubtractClosure = randomInput  //addOrSubtractClosure is now pointing towards randomInput function
print(addOrSubtractClosure(1,2,false))

print((addOrSubtractClosureOptional!(4,8,true)))

//if addOrSubtractClosureOptional != nil{
//    print(addOrSubtractClosureOptional(1,2,true))
//} else {
//    print (nil)
//}

///closures and collections
var numArray = [100, 55, 77, 22, 98, 4444, 324]
print("Array before sorting \(numArray)")
numArray.sort()
print("Array after sorting\(numArray)")
for element in numArray{        //in the array print all the elements which are a multiple of 2
    if element % 2 == 0{
        print(element)
    }
}

//Closure Expression Syntax
func multiplesof2(element: Int) throws-> Bool{          //declared a function seperately
    element % 2 == 0
}
let result = try? numArray.filter(multiplesof2(element:))       //called that function here
print(result)


let newResult = numArray.filter { num in        //instead of writing a function seperately and calling it inside, we can write the fuinction body directly in the oplace where it is called. i.e closure
    num % 2 == 0
}
print(newResult)

var arrOfClosure = [String]()
arrOfClosure.append("Hello")
print(arrOfClosure)


//sorted method
//let names = ["Alex","Bob","Catherine","Daniella","Ewa"]

//func backward{_ s1: String, _ s2: String} -> Bool {
//    return s1 > s2
//}
//
//var reversednames = names.sorted(by: backward)

//var reversednames = names.sorted(by: { (s1: String, s2: String) ->
//    Bool in
//    return s1 > s2
//})
//print(reversednames)



var externalVal = 45
var externalVal1 = 45333
var externalVal2 = 45444
simpleClosure()
externalVal = 4545
externalVal1 = 45555
externalVal2 = 45666
simpleClosure()

trailingclosureExample(arg1: externalVal1, arg2: externalVal2, trailClosureArg: simpleClosure)
trailingclosureExample(arg1: externalVal, arg2: externalVal1) {
    print("This line is being called from the trailing closure syntax ")
}


//print(reversednames.sorted { $0 > $1})

let digitnames = [1:"One", 2: "Two", 3:"Three", 4:"Four", 5:"Five", 6:"Six", 7:"Seven", 8:"Eight", 9:"Nine", 0:"Zero"]

let numbers = [16, 58, 510]


let strings1 = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitnames[number % 10]! + output
        number /= 10
    } while number > 0
    print("\(output)")
    return output
}

print(strings1)




//Practice during the gap
let actualNumber = "123"

if let possibleNumber = Int(actualNumber){
    print("The actual number is \(actualNumber)")
} else {
    print("The actual number does not contain an int value")
}

//functions with multiple return
func minmax(array: [Int]) -> (min: Int, max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin{
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minmax(array: [8,4,2,9,5])
print("Min is \(bounds.min) and max is \(bounds.max)")

//Functions: Inout paramters  
func swap(a : inout Int, b : inout Int){
    let temporaryA = a
    a = b
    b = temporaryA
}
var oneInt = 4
var anotherInt = 9
swap( &oneInt,  &anotherInt)
print("Swapped value of oneInt is \(oneInt) and anotherInt is \(anotherInt)")


//Closures
let names = ["Alex","Bob","Catherine","Daniella","Ewa"]

func backward(_ s1: String, _ s2: String) -> Bool{
    s1 > s2
}

var reversedNames = names.sorted(by: backward(_:_:))
print (reversedNames)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 < s2
})
print(reversedNames)

reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
print(reversedNames)


let  team = ["Tiffany", "Suzzane", "Alex", "Gloria", "Piper", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1:String, name2: String)-> Bool{
    if name1 == "Suzzane"{
        return true
    } else if name2 == "Suzzane"{
        return false
    }
return name1 < name2
}

//let CaptiainFirstTeam = team.sorted(by: captainFirstSorted)
//print(CaptiainFirstTeam)

let CaptainFirstteam = team.sorted(by: {(name1:String, name2: String)-> Bool in
    if name1 == "Suzzane"{
        return true
    } else if name2 == "Suzzane"{
        return false
    }
return name1 < name2
})
print(CaptainFirstteam)
