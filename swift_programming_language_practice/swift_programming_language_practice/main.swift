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
