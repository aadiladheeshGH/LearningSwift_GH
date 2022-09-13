/***FUNCTIONS*/

/*
var num = 9
var num_double:Double = Double(num)
let new_num = Double.init(num)
//More examples of the functions being used as below
var str = "Hello String"
var actuallastIndex = str.index(str.endIndex, offsetBy: -1)
var str1 = "Aadil"
actuallastIndex = str1.index(str.endIndex, offsetBy: -2)
//func is the keyword defining a function
//name of the function : Index
//everything between the () is the input to the function
//anything after the "->" is the return value


//function to find the sum of the elements in an integer array
//sumOfAnArray(arr inputArray:[Int]) -> Int, is the signature of the function
//arr is formal argument name
//input array is the actual argument name
func sumOfAnArray(arr InputArray:[Int]) -> Int{
    var sum = 0
    for element in InputArray{
        sum += element
    }
    return sum
}

var int_arr = [1,2,3,4,5,6,7,8,9,10]
var answer = sumOfAnArray(arr: int_arr)
print("The sum of the array \(int_arr) is \(answer)")

var new_arr1 = [Int]()
for element in int_arr{
    var tmp = element*2
    new_arr1.append(tmp)
}
int_arr = new_arr1
new_arr1 = []
var answer1 = sumOfAnArray(arr: int_arr)
print("The sum of the array \(int_arr) is \(answer1)")

for (idx,elem) in int_arr.enumerated(){
    int_arr[idx] = elem * 2
}
var answer2 = sumOfAnArray(arr: int_arr)
print("The sum of the array \(int_arr) is \(answer2)")



for(idx,elem) in int_arr.enumerated(){
    int_arr[idx] = elem*2
}
var answer3 = sumOfAnArray(arr: int_arr)
print("The sum of the array \(int_arr) is \(answer3)")

var new_arr2 = [Int]()
for element in int_arr{
    var tmp = element*2
    new_arr2.append(tmp)
}
int_arr = new_arr2
new_arr2 = []
var answer4 = sumOfAnArray(arr: int_arr)
print("The sum of the array \(int_arr) is \(answer4)")
*/


/***Practice examples from the book*/

//Parameters = Typed values that a function takes as input(used while declaring the function)
//Return type = The output when its done
//Arguments = A functions arguments must always be provided in the same order as the functions paramter list

//Defining and calling a function
func greet(person:String) -> String
{
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "John"))
print(greet(person: "Tony"))


//Functions with no parameters
func sayHelloWorld() -> String{
    return "Hello World"
}
print(sayHelloWorld())

//Functions with multiple parameters
func greeting(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted{
        let wishes = "Hello again, " + person + "!"
        return wishes
    }
    else{
        let wishes = "Hello, " + person + "!"
        return wishes
    }

}
print(greeting(person: "Antony", alreadyGreeted: true))


//Functions without return values
func greeti(person: String){
    print( "Hello \(person)" )
}
greeti(person: "Aadil")



func printAndCount(sentence: String) -> Int{
    print(sentence)
    return sentence.count
}

func onlyPrint(sentence2: String){
    let string = printAndCount(sentence: sentence2)
    //print("returned value: \(string)")            //youi can print the count of sentence2 if the let was labelled as "string"(in this case). This happens because the function printAndCount returns the value anyways. we just have to call it
}

printAndCount(sentence: "Hello World")
onlyPrint(sentence2: "Hi there")




//Functions with Multiple return values
func minmax(Array:[Int]) -> (Min: Int, Max:Int){
    var currentMin = Array[0]
    var currentMax = Array[0]
    for element in Array[1..<Array.count]{
        if element < currentMin{
            currentMin = element
        }
        else if element > currentMax{
            currentMax = element
        }
    }
    return(currentMin, currentMax)
}

let bounds = minmax(Array: [8, 42, 58, 96, 22,7])
print("min is \(bounds.Min) and max is \(bounds.Max)")

//Optional Tuple return types
func sameFunction(array:[Int]) -> (min:Int, max:Int)?{
    if array.isEmpty{return nil}
    var currentmin = array[0]
    var currentmax = array[0]
    for value in array[0..<array.count]{
        if value < currentmin{
            currentmin = value
        }
        else if value > currentmax{
            currentmax = value
        }
    }
    return (currentmin, currentmax)
}

if let bounds1 = sameFunction(array: [11,77,55,100,88]){
    print("min is \(bounds1.min) and max is \(bounds1.max)")
}



//functions with an implicit return
func greeting(for person:String) -> String{
    "Hello" + person + "!"
}
print(greeting(for: "Boy"))

func anothergreeting(for person:String) -> String{
    return "Hello" + person + "!"
}
print(anothergreeting(for: "girl"))

//Specifying Argument Labels
func greet(person: String, from hometown: String) -> String{
    return "Hello \(person)! Glad you could return from \(hometown)"
}
//print(greet(person: "Aadil", "Chennai"))        // this will be the case if you put and _ in the place of From. Which would then become and example of Omiting Argument Labels
print(greet(person: "Aadil", from: "Pune"))



//In Out Parameters
var num1 = 4
var num2 = 2

print("before swapping \(num1) && \(num2)")
inout_swap(param1: &num1, param2: &num2)
print("After swap \(num1) && \(num2)")

print("Swap Again")                                 //Same example but without using IN Out parameters
print("before swapping \(num1) && \(num2)")
(num1, num2) = swap(param1: num1, param2: num2)
print("After swap \(num1) && \(num2)")




//MY PRACTICE
//1.
//func add(number1:Int, number2:Int) -> Int{
//    let addition = number1 + number2
//    return addition
//}
//
//var a = 22
//var b = 44
//let c = add(number1: a, number2: b)
//print("The addition of \(a) and \(b) is \(c)")

//2. write a function to display the tables
func multiplication(number1: Int, number2:Int) -> Int{
    let product = number1 * number2
    print(product)  //1.one way to print answer
    return product
}
multiplication(number1: 55, number2: 2)     //1.
//print(multiplication(number1: 55, number2: 2))    //2. other way to print answer

//3. write a function to display the table of an Integer

func table(number1: Int) -> Int{
    var answer: Int = 0
    for index in 1...10{
        answer = number1*index
        print("\(number1) times \(index) is \(answer)")
    }
    return answer
}

print(table(number1: 45))

print(table(number1: 70))


//sorting the elements of an array and return the array


//func order(arr inputArray:[Int]) -> [Int]{
//    var tempArray = [Int]()
//    var temp:Int
//    for (index, element) in inputArray.enumerated() {
//        while (index + 1) < inputArray.count {
//            if element < inputArray[index + 1] {
//                tempArray.append(inputArray[index + 1])
//            } else {
//                tempArray.append(element)
//            }
//        }
//    }
//    return tempArray
//}

//print(order(arr: [9,7,4,1,6,3]))



//var array:[Int] = [9,7,4,1,6,3]








//to check if a character is a vowel or not
func vowel(letter:String) -> Bool{
    let VowelArray:[String] = ["a", "e", "i", "o", "u"]
    for element in VowelArray{
        if letter == element {
            print("The character is a vowel")
            //return true
        } else {
            print("the character is not a vowel")
            //return false
        }
}
    return false
}
print(vowel(letter: "c"))
print(vowel(letter: "u"))

//A function to accept any value but return an Int. if not, it should returm a nil value
func acceptAny(value:Any) -> Int?{
    if let converted_value = Int(value as! String) {       //Cannot convert value of type 'Any' to expected argument type 'String'
        print("the converted number is \(converted_value)")
        return converted_value
    } else {
        return nil
    }
    return nil
}

acceptAny(value: "44.4")




//WAP containing a function which returns factorial of a given number?
//WAP containing a function accepting an [Int] and returns an [Int] with each element of the array multiplied by its position?  //enumerated
/*
WAP containing a function which will print the following pattern
 *
 * *
 * * *
 * * * *
 
hint:
for idx in stride(from: O, to: 4, by: 1){
}
*/


for idx in stride(from: 1, to: 5, by: 1){
        let star = "*"
        let repeatStr = String(repeating: star, count: idx)
        print(repeatStr)
}
  

//for _ in stride(from: 2, to:3, by: 1){
//    print("*")
//    break
//    print("\n")
//}
//print("*")


//func factorial( Number: Int ) -> Int{
//    var factorialAnswer =  Number * (Number - 1)
//    return factorialAnswer
//}
//
//print(factorial(Number: 4))


//func factorial1(Number : Int) -> Int {
//    var a:Int
//    var a = a - 1
//    for element in a{
//
//    }
//}

//func factorial1(Number : Int) -> Int{
//    for  in stride(from: 1, to: Number, by: 1){
//        var Number:Int = Number * idx
//        return Number
//    }
//    return Number
//}
//
//print(factorial1(Number: 4))


func factorial(number : Int) -> Int {
    var factorialValue = 1
    for element in 1...number {
         factorialValue *= element
        print(factorialValue)
    }
    return factorialValue
}

print(factorial(number: 4))
