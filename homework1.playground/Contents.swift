import UIKit

//1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.

let numInt: Int = -10
let numUInt: UInt = 18
let numFloat: Float = 3.13134812
let numDouble: Double = 63.937254224
let firstString: String = "Hello"

var numberInt = 15
var numberDouble = 22.2324425
var secondString = "Text2"

let minInt = Int.min
let maxInt = Int.max

let minUInt = UInt.min
let maxUInt = UInt.max

let minInt8 = Int8.min
let maxInt8 = Int8.max

let minInt16 = Int16.min
let maxInt16 = Int16.max

let minInt32 = Int32.min
let maxInt32 = Int32.max

let minInt64 = Int64.min
let maxInt64 = Int64.max

let minUInt8 = UInt8.min
let maxUInt8 = UInt8.max

let minUInt16 = UInt16.min
let maxUInt16 = UInt16.max

let minUInt32 = UInt32.min
let maxUInt32 = UInt32.max

let minUInt64 = UInt64.min
let maxUInt64 = UInt64.max

let minFloat = -Float.greatestFiniteMagnitude
let maxFloat = Float.greatestFiniteMagnitude

let minDouble = -Double.greatestFiniteMagnitude
let maxDouble = Double.greatestFiniteMagnitude

//2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.

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

//3) Напишите различные выражения с приведением типа.

let sumInt: Int = 71
let sumUInt: UInt = 84
let sumFloat: Float = 14.234121
let sumDouble: Double = 33.333333333

let sumIntToString = String(sumInt)
let sumUIntToString = String(sumUInt)
let sumFloatToString = String(sumFloat)
let sumDoubleToString = String(sumDouble)

let sumIntToDouble = Double(sumInt)
let sumUIntToDouble = Double(sumUInt)
let sumFloatToDouble = Double(sumFloat)

let sumIntToFloat = Float(sumInt)
let sumUIntToFloat = Float(sumUInt)
let sumDoubleToFloat = Float(sumDouble)

let sumIntToUInt = UInt(sumInt)
let sumFloatToUInt = UInt(sumFloat)
let sumDoubleToUInt = UInt(sumDouble)

let sumUIntToInt = Int(sumUInt)
let sumFloatToInt = Int(sumFloat)
let sumDoubleToInt = Int(sumDouble)

//4) Посоздавайте свои переменные и константы. Имена, возраст, отчества и тд.

let name1 = "Ivan"
var name = name1
var age = 33
let surname = "Ivanov"
var weight = 73.12
let growth = 180
let dateOfBirth = "12.03.1990"
