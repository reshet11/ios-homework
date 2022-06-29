import UIKit
/*
1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.
2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.
3) Напишите различные выражения с приведением типа.
4) Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.
 */


//явно определенные константы разных типов
let a1: Int = -10
let b1: UInt = 18
let c1: Float = 3.13134812
let d1: Double = 63.937254224
let f1: String = "Text"
//неявно определенные переменные разных типов
var a2 = 15
var d2 = 22.2324425
var f2 = "Text2"
//минимум и максимум числовых типов
let minInt = Int.min
let maxInt = Int.max
let minUInt = UInt.min
let maxUInt = UInt.max
let minInt8 = Int8.min
let maxInt8 = Int8.max
//список товаров
typealias Amount = UInt
typealias Name = String
let milkAmount: Amount = 20
let milkName: Name = "Молоко"
let breadAmount: Amount = 7
let breadName: Name = "Хлеб"
let sugarAmount: Amount = 12
let sugarName: Name = "Сахар"
let waterAmount: Amount = 3
let waterName: Name = "Вода"
print("\(milkName) - \(milkAmount)",
      "\n\(breadName) - \(breadAmount)",
      "\n\(sugarName) - \(sugarAmount)",
      "\n\(waterName) - \(waterAmount)")
//выражения с приведением типа
let length: Double = 74.22
let length1 = String(length)
let number1 = 3.14
let text1 = "pi"
let text2 = "Число \(text1) = " + String(number1)
print(text2 + ", а не \(length)")

let h1 = 74.1311
let h2 = Int(h1)
