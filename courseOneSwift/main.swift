//
//  main.swift
//  courseOneSwift
//
//  Created by Юрий Кропотин on 16.10.2021.
//

import Foundation

enum spaceShuttleErros: Error{
    case engineIsBroken
    case oxygenIsLeaking
}
final class spaceShuttle{
    var engine: Bool
    var oxygen: Int
    init(engine: Bool, oxygen: Int){
        self.engine = engine
        self.oxygen = oxygen
    }
    func oxygenState() throws{
        if oxygen < 10{
            throw spaceShuttleErros.oxygenIsLeaking
        }
    }
    func engineState() throws{
        if engine == false{
            throw spaceShuttleErros.engineIsBroken
        }
    }
}
var discovery = spaceShuttle(engine: false, oxygen: 1)
do{
    try discovery.oxygenState()
} catch spaceShuttleErros.oxygenIsLeaking{
    print("Не хватает кислорода")
}
do{
    try discovery.engineState()
} catch spaceShuttleErros.engineIsBroken{
    print("Отказал двигатель")
}

