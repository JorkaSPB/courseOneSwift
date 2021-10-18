//
//  main.swift
//  courseOneSwift
//
//  Created by Юрий Кропотин on 16.10.2021.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет
var numberArray = [65, 92, 99, 51, 46, 93, 58, 59]
for sorting in numberArray{
    if sorting % 2 == 0 {
        print("\(sorting) четное число")
    } else {
        print("\(sorting) нечетное число")
    }
}

//2. Написать функцию, которая определит делится ли число без остатка на 3.
for sortingTwo in numberArray{
    if sortingTwo % 3 == 0 {
        print("\(sortingTwo) делится на 3 без остатка")
    } else {
        print("\(sortingTwo) делится на 3 с остатком")
    }
}

//3. Создать возврастающий массив из 100 чисел.
var oneHundred: Array<Int> = []
for i in 1...100{
    oneHundred.append(i)
}
print(oneHundred)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
var toDelete = oneHundred.filter {$0 % 2 != 0 && $0 % 3 == 0}
   print(toDelete)

