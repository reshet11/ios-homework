import UIKit

// 1.Описать несколько структур – любой легковой автомобиль и любой грузовик.
// 2.Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
// 3.Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
// 4.Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

enum Actions {
    case onEngine
    case offEngine
    case openWindows
    case closedWindows
    case loadTrunk
    case unloadTrunk
}

struct Car: Hashable {
    var brand: String
    var productionYear: Int
    var trunk: Int
    var engineRun: Bool
    var windowsOpen: Bool
    var trunkFull: Bool
    
    mutating func action(_ action: Actions) {
        switch action {
        case .onEngine:
            engineRun = true
        case .offEngine:
            engineRun = false
        case .openWindows:
            windowsOpen = true
        case .closedWindows:
            windowsOpen = false
        case .loadTrunk:
            trunkFull = true
        case .unloadTrunk:
            trunkFull = false
        }
    }
}

struct Truck: Hashable {
    var brand: String
    var productionYear: Int
    var trunk: Int
    var engineRun: Bool
    var windowsOpen: Bool
    var trunkFull: Bool
    
    mutating func action(_ action: Actions) {
        switch action {
        case .onEngine:
            engineRun = true
        case .offEngine:
            engineRun = false
        case .openWindows:
            windowsOpen = true
        case .closedWindows:
            windowsOpen = false
        case .loadTrunk:
            trunkFull = true
        case .unloadTrunk:
            trunkFull = false
        }
    }
}

// 5.Инициализировать несколько экземпляров структур. Применить к ним различные действия.

var car = Car(brand: "Audi", productionYear: 2017, trunk: 230, engineRun: false, windowsOpen: false, trunkFull: true)
var truck = Truck(brand: "Man", productionYear: 2003, trunk: 1000, engineRun: true, windowsOpen: true, trunkFull: false)
car.action(.unloadTrunk)
truck.action(.offEngine)
truck.action(.closedWindows)

// 6.Положить объекты структур в словарь как ключи! а их названия как строки например var dict = [structCar: "structCar"]
// значение объекта в ключ не положить, так как они могут повторяться и перезатрут уже существующие, ну или я не так понял задание...

//var dict = [String: Any]()
//
//dict["brand"] = car.brand
//dict["productionYear"] = car.productionYear
//dict["trunk"] = car.trunk
//dict["engineRun"] = car.engineRun
//dict["windowsOpen"] = car.windowsOpen
//dict["trunkFull"] = car.trunkFull
//
//for (key, value) in dict {
//    print("key:\(key), value:\(value)")
//}

var dict = [AnyHashable: String]()

dict[car] = "car"
dict[truck] = "truck"

// 7.Почитать о Capture List (см ссылку ниже) - и описать своими словами и сделать скрин своего примера и объяснения https://www.hackingwithswift.com/articles/179/capture..

// если явно не указать способ захвата, по умолчанию будет использован сильный захват.
// слабый захват (weak) не удерживается замыканием и значение может быть освобождено и усталовлено в nil. Поэтому слабо захваченные значения будут опциональными.
// бесхозный захват (unowned) тоже самое что и слабый захват, за исключение того, что значение не может быть установлено в nil

class Human {
    func say() {
        print("Hello")
    }
}

func shows() -> () -> Void {
    let man = Human()
    
    let say = { [weak man] in // пример списка слабого захвата
        man?.say()
        return
    }
    return say
}

let showsFunc = shows()
showsFunc()

// 8 Набрать код который на белом скрине понять в чем там проблема и решить эту проблему

class CarOne {
    weak var driver: Man? // необходимо ослабить одну из сильных ссылок
    
    deinit {
        print("Машина удалена из памяти")
    }
}

class Man {
    var myCar: CarOne?
    
    deinit {
        print("Мужчина удален из памяти")
    }
}

var carOne: CarOne? = CarOne()
var man: Man? = Man()

carOne?.driver = man
man?.myCar = carOne

carOne = nil
man = nil

// 9.У нас есть класс мужчины и его паспорта. Мужчина может родиться и не иметь паспорта,
//но паспорт выдается конкретному мужчине и не может выдаваться без указания владельца. Чтобы
//разрешить эту проблему, ссылку на паспорт у мужчины сделаем обычной опциональной, а ссылку на
//владельца у паспорта – константой. Также добавим паспорту конструктор, чтобы сразу
//определить его владельца. Таким образом, человек сможет существовать без паспорта, сможет его
//поменять или выкинуть, но паспорт может быть создан только с конкретным владельцем и никогда не
//может его сменить. Повторить все что на черном скрине и решить проблему соблюдая все правила!

class Woman {
    var passport: Passport?
    
    deinit {
        print("Женщина удалена из памяти")
    }
}

class Passport {
    unowned let woman: Woman // решение тут, тоже нужно ослабить ссылку
    
    init(woman: Woman) {
        self.woman = woman
    }
    
    deinit {
        print("Паспорт удален из памяти")
    }
}

var woman: Woman? = Woman()
var passport: Passport? = Passport(woman: woman!)

woman?.passport = passport

passport = nil
woman = nil
