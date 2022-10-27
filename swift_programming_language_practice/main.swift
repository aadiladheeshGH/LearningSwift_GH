//PROPERTIES


//Stored Properties

struct FixedLenghthRange{
    var firstValue: Int
    var length: Int
}
var rangeOfThreeValues = FixedLenghthRange(firstValue: 0, length: 3)
rangeOfThreeValues.firstValue = 6

let rangeofFourValues = FixedLenghthRange(firstValue: 0, length: 4)
//rangeofFourValues.firstValue = 6    //Cannot assign to property: 'rangeofFourValues' is a 'let' constant

//Lazy Stored properties

class DataImporter{
    var fileName = "data.txt"
}

class DataManager{
    lazy var Importer = DataImporter()
    var Data : [String] = []
}

let manager = DataManager()
manager.Data.append("Some data")
manager.Data.append("Some more data")
// data importer class was not called because the data manager handled the date by itself and importer was not called

print(manager.Importer.fileName)    //prints data.txt
//Here we are accesing the DataImporter class as we created the instance in by accessing the "Importer"



//Computed Properties

struct Point{
    var x = 0.0, y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct rect{
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
//        get {                                        //can declare a getter without using return in this way
//            Point(x: origin.x + (size.width/2), y: origin.y + (size.height/2))
//        }           //No need to use return here(Just like implictely returned functions) because the entire body is a single line expression
    
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
//        set{               //can also declare a setter without defining a name.. Swift provides a by default name which is 'newValue'
//            origin.x = newValue.x - (size.width/2)
//            origin.y = newValue.y - (size.height/2)
//        }
    }
}

var square = rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10, height: 10))
let initialSquareCenter = square.center
print(initialSquareCenter)

square.center = Point(x: 15, y: 15)
print("square.origin is now at \(square.origin.x) and \(square.origin.y)")

//Read-Only Computed Properties

struct Cuboid{
    var width = 0.0, length = 0.0, height = 0.0
    var volume: Double{
       return width * height * length
    }
}

let fourByFiveByTwo = Cuboid(width: 5, length: 9, height: 7)
print("The volume of Cuboid is \(fourByFiveByTwo.volume)")
