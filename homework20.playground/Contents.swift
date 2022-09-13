import UIKit

// 1. Расширить String, чтобы принимал сабскрипт вида s[0..<3] и мог также устанавливать значения используя его

extension String {
    subscript(value: Range<Int>) -> String {
        if value.lowerBound < self.count && value.upperBound - 1 < self.count {
            let start = self.index(self.startIndex, offsetBy: value.lowerBound)
            let end = self.index(start, offsetBy: value.upperBound)
            return String(self[start..<end])
        } else {
            return "error"
        }
    }
}

let name = "Andrey"
name[2..<4]
name[10..<12]

// 2. Расширить Int и добавить 3 метода возведение в квадрат, куб, степень

extension Int {
    func squared() -> Int {
        self * self
    }
    
    func cube() -> Int {
        self * self * self
    }
    
    func exponent(degree: Double) -> Double {
        pow(Double(self), degree)
    }
}

let number = 2
number.squared()
number.cube()
number.exponent(degree: 4)

// 3. Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано
// 3.1. Определяет число четное или нет

extension Int {
    func evenOrOdd() {
        self % 2 == 0 ? print("number is even"): print("number is odd")
    }
}

let age = 22
age.evenOrOdd()

// 3.2. Конвертация рублей к другим валютам

extension Double {
    var rub: Double {
        self
    }
    var dollar: Double {
        self * 0.017
    }
    var euro: Double {
        self * 0.016
    }
}

100.9.dollar
100.9.euro

// 3.3. Расширение структуры без изменения самой структуры

struct Human {
    func sayHello() {
        print("Hello")
    }
}

extension Human {
    func sayHelloName(_ name: String) {
        print("Hello \(name)")
    }
}

let human = Human()
human.sayHello()
human.sayHelloName("Alex")

// 4. Добавьте проперти, которое возвращает количество символов в числе

extension Int {
    var count: Int {
        let strNumCount = String(self).count
        return strNumCount
    }
}

let num = 3456357453
num.count

// 5. Добавить метод который говорит число положительное или отрицательное

extension Int {
    func positOrNegat() {
        self >= 0 ? print("positive"): print("negative")
    }
}

let result = 35644
result.positOrNegat()
