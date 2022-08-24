import UIKit

// 1.Создать класс в котором будет 3 проперти мама Папа и дети . Создать subscript и упорядочить их по индексу.

class Family {
    
    let mother: String
    let father: String
    let children: [String]
    
    init(mother: String, father: String, children: [String]) {
        self.mother = mother
        self.father = father
        self.children = children
    }
    
    var count: Int {
        return 2 + children.count
    }
    
    subscript(index: Int) -> String {
        switch index {
        case 0: return mother
        case 1: return father
        case 2..<(2 + children.count): return children[index - 2]
        default: return ""
        }
    }
}

var family = Family(mother: "Olga", father: "Fedor", children: ["Bob", "Alex", "Dmitry", "Egor"])

for i in 0..<family.count {
    switch i {
    case 0:
        print("index \(i) - \(family[i]). This is mother")
    case 1:
        print("index \(i) - \(family[i]). This is father")
    default:
        print("index \(i) - \(family[i]). This is children")
    }
}

// 2.Создать Индекс который будет принимать число умножать его на 100 и делить на 2.

struct Calculation {
    subscript(index: Double) -> Double {
        index * 100 / 2
    }
}

var calcNumber = Calculation()
calcNumber[30.5423]

// 3.Создать свой subscript у которого внутри есть оператор if else.

struct Score {
    
    subscript(index: Int) -> String {
        if index == 2 {
            return "unsatisfactory"
        } else if index == 3 {
            return "satisfactory"
        } else if index == 4 {
            return "good"
        } else if index == 5 {
            return "very good"
        } else {
            return "incorrect score"
        }
    }
}

let score = Score()
score[4]

// 4.Создать класс человек и в нем 3 проперти имя , возраст пол.

class Human {
    
    enum Gender {
        case male, female
    }
    
    let name: String
    let age: Int
    var gender = Gender.male
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func info() -> String {
        return "\(name), \(age) age, \(gender) gender"
    }
}

var human = Human(name: "Felix", age: 30)

// 5.Создать ещё 2 класса которые наследуются от класса человек и переопределить методы и свойства.

class Mother: Human {
    
    override var gender: Human.Gender {
        get {
            return .female
        }
        set {
            super.gender = newValue
        }
    }
    
    override func info() -> String {
        return super.info() + ". Mother"
    }
}

var mother = Mother(name: "Luci", age: 51)

class Father: Human {
    
    override var gender: Human.Gender {
        get {
            return .male
        }
        set {
            super.gender = newValue
        }
    }
    
    override func info() -> String {
        return "Father - \(name), \(age) age"
    }
}

var father = Father(name: "Simon", age: 55)

human.info()
mother.info()
father.info()

// 6.Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка (воспользоваться enum для типов данных)

enum TypeDate {
    case string(String)
    case character(Character)
    case integer(Int)
    case double(Double)
    case float(Float)
    case bool(Bool)
}

let dictTypeDate: Dictionary <String, TypeDate> = ["String": TypeDate.string("строка"),
                                                   "Character": TypeDate.character("$"),
                                                   "Integer": TypeDate.integer(123),
                                                   "Double": TypeDate.double(44.23),
                                                   "Float": TypeDate.float(1.543267),
                                                   "bool": TypeDate.bool(true)]
