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
