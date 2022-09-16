import UIKit

// Почитать про copy on write и понять что это такое - https://www.youtube.com/watch?v=66g_pD3s7TY
// Пока значение не меняется, оба объекта ссылаются на один и тот же адрес памяти

// 1. Реализовать структуру IOSCollection и создать в ней copy on write по типу - https://www.youtube.com/watch?v=QsoqHGgX2rE&t=594s
// тяжелая штука для понимания конечно....

func address(off value: AnyObject) -> String {
    return "\(Unmanaged.passUnretained(value).toOpaque())"
}

struct IOSCollection {
    var name = "Andrey"
}

class Ref<T> {
    var value: T
    init(value: T) {
        self.value = value
    }
}

struct Container<T> {
    var ref: Ref<T>
    init(value: T) {
        self.ref = Ref(value: value)
    }
    
    var value: T {
        get {
            ref.value
        }
        set {
            guard (isKnownUniquelyReferenced(&ref)) else {
                ref = Ref(value: newValue)
                return
            }
            ref.value = newValue
        }
    }
}

var name = IOSCollection()
var conteiner1 = Container(value: name)
var conteiner2 = conteiner1

address(off: conteiner1.ref)
address(off: conteiner2.ref)

conteiner2.value.name = "Tom"

address(off: conteiner1.ref)
address(off: conteiner2.ref)

// 2. Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол

protocol Hotel {
    init(roomCount: Int)
}

class HotelAlfa: Hotel {
    var roomCount: Int
    
    required init(roomCount: Int) {
        self.roomCount = roomCount
    }
}

let hotel = HotelAlfa(roomCount: 3)
hotel.roomCount

// 3. Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"

protocol GameDice {
    var numberDice: Int { get }
}

extension Int: GameDice {
    var numberDice: Int {
        print("Выпало \(self) на кубике")
        return self
    }
}

let diceCoub = 4
diceCoub.numberDice

// 4. Создать протокол с одним методом и 2 мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство

@objc protocol ProtocolOne {
    var firstName: String { get }
    func printHello()
    // опциональные требования протокола (@objc + optional у проперти или метода)
    @objc optional var lastName: String { get set }
}

class Human: ProtocolOne {
    var firstName: String
    func printHello() {
        print("Hello \(firstName)")
    }
    
    init(firstName:String) {
        self.firstName = firstName
    }
}

let human = Human(firstName: "Grisha")
human.printHello()
