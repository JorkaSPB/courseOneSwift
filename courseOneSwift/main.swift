//
//  main.swift
//  courseOneSwift
//
//  Created by Юрий Кропотин on 16.10.2021.
//

import Foundation

//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести сами объекты в консоль.

enum Door {
    case open
    case close
}
enum Windows {
    case open
    case close
}
enum Engine {
    case start
    case stop
}

protocol CarProtocol {
    var brand: String { get }
    var release: Int { get }
    var doorStatus: Door { get set }
    var windowStatus: Windows { get set }
    var engineStatus: Engine { get set }
}

extension CarProtocol {

    mutating func changeEngineStatus(engineStatus: Engine) {
        self.engineStatus = engineStatus
    }
    mutating func changeWindowStatus(windowStatus: Windows) {
        self.windowStatus = windowStatus
    }
    mutating func changeDoorStatus(doorStatus: Door) {
        self.doorStatus = doorStatus
    }
}

class TrunkCar: CarProtocol {
    var trailerLength: Int
    var brand: String
    var release: Int
    var doorStatus: Door
    var windowStatus: Windows
    var engineStatus: Engine

    init(trailerLength: Int,
         brand: String,
         releas: Int,
         doorStatus: Door,
         windowStatus: Windows,
         engineStatus: Engine) {

        self.trailerLength = trailerLength
        self.brand = brand
        self.release = releas
        self.doorStatus = doorStatus
        self.windowStatus = windowStatus
        self.engineStatus = engineStatus
    }
}

class SportСar: CarProtocol {
    var horsePower: Int
    var brand: String
    var release: Int
    var doorStatus: Door
    var windowStatus: Windows
    var engineStatus: Engine

    init(horsePower: Int,
         brand: String,
         releas: Int,
         doorStatus: Door,
         windowStatus: Windows,
         engineStatus: Engine) {

        self.horsePower = horsePower
        self.brand = brand
        self.release = releas
        self.doorStatus = doorStatus
        self.windowStatus = windowStatus
        self.engineStatus = engineStatus
    }
}

let audi = SportСar(horsePower: 350, brand: "Audi", releas: 2021, doorStatus: .close, windowStatus: .open, engineStatus: .stop)

let volvo = TrunkCar(trailerLength: 3400, brand: "Volvo", releas: 2019, doorStatus: .open, windowStatus: .open, engineStatus: .start)

print(" мощность \(audi.brand) \(audi.horsePower)лс ")
print("длинна прицепа \(volvo.brand) \(volvo.trailerLength)м ")
