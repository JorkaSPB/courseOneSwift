//
//  main.swift
//  courseOneSwift
//
//  Created by Юрий Кропотин on 16.10.2021.
//
import Foundation


enum Transmission: String {

    case manual = "Механическая"
    case auto = "Автоматическая"
}

enum WindowStatus: String {
    case open = "открыты"
    case close = "закрыты"
}

class Car {

  let carModel: String
  let carYear: Int
  let colorCar: String
  private let transmission: Transmission

  init(carModel: String, carYear: Int, colorCar: String, transmission: Transmission) {
       self.carModel = carModel
       self.carYear = carYear
       self.colorCar = colorCar
       self.transmission = transmission
    }

func printInfo() {
    print("Марка - \(carModel)")
    print("Год выпуска - \(carYear)")
    print("Цвет автомобиля - \(colorCar)")
    print("Коробка - \(transmission)")
    }
}

class TrunkCar: Car {
  let loadСapacity: Double
    
  init(carModel: String, carYear: Int, colorCar: String, loadСapacity: Double, transmission: Transmission) {
        self.loadСapacity = loadСapacity
        super.init(carModel: carModel, carYear: carYear, colorCar: colorCar, transmission: transmission)
    }
}

class SportCar: Car {
  let maximumSpeed: Double
    
  init(carModel: String, carYear: Int, colorCar: String, maximumSpeed: Double, transmission: Transmission) {
    self.maximumSpeed = maximumSpeed
    super.init(carModel: carModel, carYear: carYear, colorCar: colorCar, transmission: transmission)
    }
}

let sport = SportCar(carModel: "Ferrari", carYear: 2021, colorCar: "red", maximumSpeed: 300, transmission: .auto)
let truck = TrunkCar(carModel: "Man", carYear: 2020, colorCar: "white", loadСapacity: 4500, transmission: .manual)

print(sport.printInfo())
print(truck.printInfo())
