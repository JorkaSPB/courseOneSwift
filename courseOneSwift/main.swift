//
//  main.swift
//  courseOneSwift
//
//  Created by Юрий Кропотин on 16.10.2021.
//
//1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//
//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//
//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
//
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

import Foundation

struct Car {
    let carModel: String
    let carColor: String
    let carYear: Double
    let carTrunkVolumeFree: Double
    let carTrunkVolume: Double
    let engineStatus: String
    let windowStutus: String
}

let sportCar = Car(carModel: "Audi", carColor: "red", carYear: 2010, carTrunkVolumeFree: 450, carTrunkVolume: 78, engineStatus: "on", windowStutus: "off")

let trunkCar = Car(carModel: "Volvo", carColor: "white", carYear: 2021, carTrunkVolumeFree: 7000, carTrunkVolume: 6500, engineStatus: "off", windowStutus: "on")

print(sportCar.carModel)
print(trunkCar.carYear)


enum EngineCar: String {
    case start
    case stop
}
let engine = EngineCar.start
func choseEngineStatus(status: EngineCar) {
    switch status {
    case .start:
        print("Запустить двигатель")
    case .stop:
        print("Заглушить двигатель")
    }
}
choseEngineStatus(status: .start)


enum WindowCar: String {
    case open
    case close
}
let window = WindowCar.open
func choseWindowStatus(status: WindowCar) {
    switch status {
    case .open:
        print("Открыть окно")
    case .close:
        print("Закрыть окно")
    }
}
choseWindowStatus(status: .close)


