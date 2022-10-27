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


