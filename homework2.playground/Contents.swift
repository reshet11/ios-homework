import UIKit

//1) По-создавайте свои типы данных через typealias

typealias NumberType = Int
typealias PosNumberType = UInt
typealias FloatType = Float
typealias DoubleType = Double
typealias TextType = String

//2) Создайте различные выражения с приведением типа

let numInt: NumberType = -11
let numUInt: PosNumberType = 15
let numFloat: FloatType = 44.12
let numDouble: DoubleType = 13.1464353
let numString: TextType = "2"

let numUIntToInt = NumberType(numUInt)
let numFloatToInt = NumberType(numFloat)
let numDoubleToInt = NumberType(numDouble)
let numStringToInt = NumberType(numString)

let numIntToDouble = DoubleType(numInt)
let numUIntToDouble = DoubleType(numUInt)
let numFloatToDouble = DoubleType(numFloat)
let numStringToDouble = DoubleType(numString)

//3) Так же как в математеке поиграйтесь с выражениями - + /

let resultSumInt = numInt + numUIntToInt + numFloatToInt + numDoubleToInt
let resultSumDouble = numDouble + numIntToDouble + numUIntToDouble + numFloatToDouble

let resultInt = numInt + numUIntToInt - numFloatToInt * numDoubleToInt / numInt
let resultDouble = numDouble + numIntToDouble - numUIntToDouble * numFloatToDouble / numDouble
