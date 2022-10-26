//Accessing Properties
print("The width of Resolution is \(someResolution.width)")
print("the wiodth of someVideoMode is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 1280
print("The width of someVideoMode now is \(someVideoMode.resolution.width)")

//Structures and enumerations are value Types
cinema.width = 2048
print("cinema is now\(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

enum CompassPoint{
    case north, south, east, west
    mutating func turnNorth() {
        self = .north
    }
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")   //The current direction is north
print("The remembered directions is \(rememberedDirection)")    //The remembered directions is west

//Classes are Reference Types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty   //30.0 framerate is referred and assigned to the tenEighty as well
alsoTenEighty.frameRate = 30.0
print("The framerate of tenEighty is \(tenEighty.frameRate)")

//Identity Operators
if tenEighty === alsoTenEighty{
    print("tenEightty and alsoTenEighty refer to the same VideoMode instance")
}
