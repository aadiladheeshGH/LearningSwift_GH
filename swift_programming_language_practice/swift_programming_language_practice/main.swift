/***COLLECTION TYPES*/

//ARRAYS
//1.
var someInts:[Int] = []
print("someInts is of type [Int] and has \(someInts.count) elements")

someInts.append(3)
print(someInts)     // prints [3]
someInts=[]
print(someInts)     //prints []

var threedoubles = Array(repeating: 0.0, count: 3)
print(threedoubles)         //prints [0.0, 0.0, 0.0]

var anotherdoubles = Array(repeating: 2.5, count: 3)
print(anotherdoubles)   //prints [2.5, 2.5, 2.5]

var sixdoubles = threedoubles + anotherdoubles
print(sixdoubles)   //prints [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]



//2.
var shoppinglist: [String] = ["Eggs", "Milk"]
print("The shopping list contains \(shoppinglist.count) items") //prints The shopping list contains 2 items
if shoppinglist.isEmpty{            //boolean isEmpty property
    print("The list is empty")
}
else{
    print("The shopping list is not empty")
}


shoppinglist.append("Flour")        //append
print(shoppinglist)

shoppinglist += ["Baking powder"]
print(shoppinglist)     //["Eggs", "Milk", "Flour", "Baking powder"]
shoppinglist += ["Cheese","Chocolate spread","Butter"]
print(shoppinglist)     //["Eggs", "Milk", "Flour", "Baking powder", "Cheese", "Chocolate spread", "Butter"]

var firstitem = shoppinglist[0]     //retrieving an item
print(firstitem)

shoppinglist[0] = "Six eggs"        //to change the element at a given index
print(shoppinglist)

shoppinglist[4...6] = ["Banana","Apples"]       //replacing a set of values using range
print(shoppinglist)
print(shoppinglist.count)       //prints 6

shoppinglist.insert("Maple Syrup", at: 0)       //to insert item at a specific index
print(shoppinglist)
print(shoppinglist.count)       //prints 7

let Mapple = shoppinglist.remove(at: 0)         //remove(at:) is used to remove and the removed value is stored in the new variable Mapple
print(shoppinglist)
print(Mapple)

shoppinglist.removeLast()       //removes the last element
print(shoppinglist)

for items in shoppinglist{      //print all the elements in the array using for loop
    print(items)
}

for (idx,item) in shoppinglist.enumerated(){        //to print the item no using enumerated
    print("Item \(idx): \(item)")
}



//DICTIONARIES
//1.
var namesofintegers:[Int:String] = [:]
print(namesofintegers)  //prints [:]

namesofintegers[16] = "Sixteen"
print(namesofintegers)      //prints [16: "Sixteen"]
namesofintegers = [:]
print(namesofintegers)    //prints [:]


//Two ways of declaring it
var airports:[String:String] = ["YYZ":"Torronto Pearson","DUB":"Dublin"]        //Full hand form
print(airports)
var Airports = ["YYZ":"Torronto Pearson","DUB":"Dublin"]        //Short hand form
print(Airports)

print("The airports dictionaries contain \(airports.count) items")

if airports.isEmpty{
    print("No elements in dictionary")
}
else{
    print("There are elements in the dictionary")
}

airports["LHR"] = "London"      //Added this new key value pair to the dictionary
print(airports)

airports["LHR"] = "London Heathrow"        //Can also change the value of the element of a particular key
print(airports)

if let oldValueAirport = airports.updateValue("Dublin Airport", forKey: "DUB"){         //to update a value of the key
    print("The old value of DUB is \(oldValueAirport)")
}
print(airports)

if let airportsName = airports["DUB"]{
    print("The name of the airport is \(airportsName)")
}
else{
    print("There isnt a key value pair with that key")
}

airports["APL"] = "Apple International"     //introducing a fake entry
print(airports)
airports["APL"] = nil       //method to remove a key-value pair
print(airports) //prints ["LHR": "London Heathrow", "DUB": "Dublin Airport", "YYZ": "Torronto Pearson"]

if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The removed airport is \(removedValue)")
}
else{
    print("There isnt a key value pair with that key")
}
print(airports)// prints ["LHR": "London Heathrow", "YYZ": "Torronto Pearson"]

for (airportCode, airportName) in airports{
    print("\(airportCode):\(airportName)")
}
//prints LHR:London Heathrow
//YYZ:Torronto Pearson

for airportCode in airports.keys{           //Access the all keys in the dictionary using the for loop
    print("Airport code is \(airportCode)")
}
for airportName in airports.values{         //Access the all keys in the dictionary using the for loop
    print("Airport name is\(airportName)")
}

let AirportCode = [String](airports.keys)       //Code to just take the keys and store them in the form of an array
print(AirportCode)

let AirportName = [String](airports.values)      //Code to just take the values and store them in the form of an array
print(AirportName)
