//
//  AirTravelprotocol.swift
//  swift_programming_language_practice
//
//  Created by Aadil Adheesh on 25/10/22.
//

import Foundation


enum IDType{
    case Aadhar
    case Pancard
    case DL
    case Passport
    case DigiLocker
}
enum TravelType{
    case Rail, Air, Ship, Road
}

struct JourneyTime{
    let departureTime: Date
    let arrivalTime: Date
    let forTravelType: TravelType
    
    func detailDepartureTime()->Date{
        //YYMonDD
        //logic to generate the date in the above format
        //and then return the departureTime in the new format
        return Date()
    }
}

let railJourneyTime: JourneyTime = .init(departureTime: Date(), arrivalTime: Date(timeIntervalSinceNow: 3600), forTravelType: .Rail)








enum OfficialTravelDocType{
    case BoardingPass
    case Ticket
    case Unknown
}

protocol TravelDocProtocol{
    var PassengerName:String { get set }
    var flightPNR: String { get set }
    var SeatNo: String { get set }
    var flightTime: JourneyTime { get set }
    var travelDocType: OfficialTravelDocType{get}
}

struct sBaseTravelDoc: TravelDocProtocol{
    var PassengerName: String
    var flightPNR: String
    var SeatNo: String
    var flightTime: JourneyTime
    var travelDocType: OfficialTravelDocType{.Unknown}
}

struct sBoardingPass:TravelDocProtocol{
    var PassengerName: String = ""
    var flightPNR: String = ""
    var SeatNo: String = ""
    var travelDocType: OfficialTravelDocType{.BoardingPass}
    var flightTime: JourneyTime = .init(departureTime: Date(), arrivalTime: Date(), forTravelType: .Air)
}

struct sTicket:TravelDocProtocol{
    var PassengerName: String = ""
    var flightPNR: String = ""
    var SeatNo: String = ""
    var travelDocType: OfficialTravelDocType{.Ticket}
    var flightTime: JourneyTime = .init(departureTime: Date(), arrivalTime: Date(), forTravelType: .Air)
}

//var new_sBoardingPass = sBoardingPass(PassengerName: "aaa", flightPNR: "aa", SeatNo: "4c", flightTime: <#T##JourneyTime#>)
//No need to provide an initializer for structures
//It Shows init parameters automatically. This feature is called as MEMBER WISE INITIALIIZER


class cBaseTravelDoc: TravelDocProtocol{
    var PassengerName: String
    var flightPNR: String
    var SeatNo: String
    var flightTime: JourneyTime
    var travelDocType: OfficialTravelDocType{.Unknown}
//We must create an initializer for classes
    init(PassengerName: String, flightPNR: String, SeatNo: String, flightTime: JourneyTime) {   //We must create an initializer for class
        self.PassengerName = PassengerName
        self.flightPNR = flightPNR
        self.SeatNo = SeatNo
        self.flightTime = flightTime
    }
}

class cBoardingPass: cBaseTravelDoc{
    override var travelDocType: OfficialTravelDocType{.BoardingPass}
}

class cTicket: cBaseTravelDoc{
    override var travelDocType: OfficialTravelDocType{.Ticket}
}

//var baseDoc = cBaseTravelDoc.init(PassengerName: <#T##String#>, flightPNR: <#T##String#>, SeatNo: <#T##String#>, flightTime: <#T##JourneyTime#>)
//had to create an initializer for swift to prompt parameters

//var new_cBoardingPass = cBoardingPass.init(PassengerName: <#T##String#>, flightPNR: <#T##String#>, SeatNo: <#T##String#>, flightTime: <#T##JourneyTime#>)
//Variable new_cBoardingPass inherited intitalizers from parent class i.e cBaseTravelDoc

protocol AirtravelProtocol{
    var ticket: String {get set}
    var ID: IDType {get}
    var boardingPass: sBoardingPass? {get set}
    func bookAticket()-> String
    func commuteToAirport()-> Bool
    func baggageCheckin()-> Bool
    func boarding()-> Bool
    func deboarding()-> Bool
    func baggageCheckout()->Bool
}


//class CommuteA: AirtravelProtocol{
//    var ticket: String
//
//    var ID: IDType
//
//    var boardingPass: sBoardingPass?
//
//    init(ticket: String, ID: IDType) {
//
//    }
//
//    func bookAticket() -> String {
//        <#code#>
//    }
//
//    func commuteToAirport() -> Bool {
//        <#code#>
//    }
//
//    func baggageCheckin() -> Bool {
//        <#code#>
//    }
//
//    func boarding() -> Bool {
//        <#code#>
//    }
//
//    func deboarding() -> Bool {
//        <#code#>
//    }
//
//    func baggageCheckout() -> Bool {
//        <#code#>
//    }
//}





//EXAMPLES FROM THE BOOK
struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name : String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

//print("The width of Resolution is \(someResolution.width)")

//memberwise Initializers for Structure Types
let vga = Resolution.init(width: 640, height: 480)

//Structures and enumerations are value Types
let hd = Resolution(width: 1080, height: 1920)
var cinema = hd

// just a practice change for git

