import UIKit

// 1. Сделать класс Люди, проперти класса будут родственники, соседи и тд (всё опционально).
// 2. Создать нужно более 25 человек.

class People {
    var relatives: Relatives? = Relatives()
    var friend: Friend? = Friend()
    var neighbours: Neighbours? = Neighbours()
}

class Relatives {
    var mother: Mother? = Mother()
    var father: Father? = Father()
    var sister: Sister? = Sister()
}

class Mother {
    let name: String? = "Galina"
    var mother: GrendmotherMom? = GrendmotherMom()
    var father: GrendfatherMom? = GrendfatherMom()
    var sister: SisterMom? = SisterMom()
    var brother: BrotherMom? = BrotherMom()
}

class Father {
    let name: String? = "Victor"
    var mother: GrendmotherDad? = GrendmotherDad()
    var father: GrendfatherDad? = GrendfatherDad()
    var sister: SisterDad? = SisterDad()
    var brotherOne: BrotherDadOne? = BrotherDadOne()
    var brotherTwo: BrotherDadTwo? = BrotherDadTwo()
}

class Sister {
    let name: String? = "Elena"
    var childOne: NephewOne? = NephewOne()
    var childTwo: NephewTwo? = NephewTwo()
}

class GrendmotherMom {
    let name: String? = "Zoya"
}

class GrendfatherMom {
    let name: String? = "Nikolay"
}

class GrendmotherDad {
    let name: String? = "Raya"
}

class GrendfatherDad {
    let name: String? = "Prokop"
}

class NephewOne {
    let name: String? = "Ilya"
}

class NephewTwo {
    let name: String? = "Vadim"
}

class SisterMom {
    let name: String? = "Lyubov"
    var childBoy: CousinBroSisterMom? = CousinBroSisterMom()
    var childGirl: CousinSisSisterMom? = CousinSisSisterMom()
}

class BrotherMom {
    let name: String? = "Sergey"
    var childBoy: CousinBroBrotherMom? = CousinBroBrotherMom()
    var childGirl: CousinSisBrotherMom? = CousinSisBrotherMom()
}

class SisterDad {
    let name: String? = "Ludmila"
    var childGirl: CousinSisSisterDad? = CousinSisSisterDad()
}

class BrotherDadOne {
    let name: String? = "Alexander"
}

class BrotherDadTwo {
    let name: String? = "Michael"
    var childGirl: CousinSisBrotherDad? = CousinSisBrotherDad()
    var childBoy: CousinBroBrotherDad? = CousinBroBrotherDad()
}

class CousinBroSisterMom {
    let name: String? = "Nikolay"
}

class CousinSisSisterMom {
    let name: String? = "Julia"
}

class CousinBroBrotherMom {
    let name: String? = "Alexyi"
}

class CousinSisBrotherMom {
    let name: String? = "Victoria"
}

class CousinSisSisterDad {
    let name: String? = "Natalia"
}

class CousinSisBrotherDad {
    let name: String? = "Ekaterina"
}

class CousinBroBrotherDad {
    let name: String? = "Jan"
}

class Friend {
    let firstFriend: String? = "Andrey"
    let secondFriend: String? = "Sergey"
    let thirdFriend: String? = "Nikita"
}

class Neighbours {
    let neighborOne: String? = "Beknur"
    let neighborTwo: String? = "Ilya"
    let neighborThree: String? = "Artem"
    let neighborFour: String? = "Dmitry"
    let neighborFive: String? = "Evgeniy"
}

let human = People()

// 3. Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее

let native = [human.relatives?.mother?.name,
              human.relatives?.father?.name,
              human.relatives?.sister?.name]

let nephews = [human.relatives?.sister?.childOne?.name,
               human.relatives?.sister?.childTwo?.name]

let grandmothers = [human.relatives?.mother?.mother?.name,
                    human.relatives?.father?.mother?.name]

let grandfathers = [human.relatives?.mother?.father?.name,
                    human.relatives?.father?.father?.name]

let cousinBrothers = [human.relatives?.mother?.sister?.childBoy?.name,
                      human.relatives?.mother?.brother?.childBoy?.name,
                      human.relatives?.father?.brotherTwo?.childBoy?.name]

let cousinSisters = [human.relatives?.mother?.sister?.childGirl?.name,
                     human.relatives?.mother?.brother?.childGirl?.name,
                     human.relatives?.father?.sister?.childGirl?.name,
                     human.relatives?.father?.brotherTwo?.childGirl?.name]

let uncles = [human.relatives?.mother?.brother?.name,
              human.relatives?.father?.brotherOne?.name,
              human.relatives?.father?.brotherTwo?.name]

let aunts = [human.relatives?.mother?.sister?.name,
             human.relatives?.father?.sister?.name]

let friends = [human.friend?.firstFriend,
               human.friend?.secondFriend,
               human.friend?.thirdFriend]

let neighbours = [human.neighbours?.neighborOne,
                  human.neighbours?.neighborTwo,
                  human.neighbours?.neighborThree,
                  human.neighbours?.neighborFour,
                  human.neighbours?.neighborFive]

print("native: \(native.count), nephews: \(nephews.count), grandmothers: \(grandmothers.count), grandfathers: \(grandfathers.count), cousinBrothers: \(cousinBrothers.count), cousinSisters: \(cousinSisters.count), uncles: \(uncles.count), aunts: \(aunts.count), friends: \(friends.count), neighbours: \(neighbours.count)")

// 4. Создать класс животных и проперти - корова, коза, собака и тд

class Animals {
    var cow: String? = "Burenka"
    var dog: String? = "Sharik"
    var cat: String? = "Murka"
}

let animals = Animals()

// 5. Создать класс растения и проперти - трава, цветы и тд

class Plants {
    var grass: String? = "murava"
    var flowers: String? = "rose"
    var trees: String? = "pine"
}

let plants = Plants()

// 6. Положить их всех в массив и отсортировать по алфавиту и по классу - Люди - животные - растения
// Нагородил тут конечно...не придумал как проще сделать...

var arrayPeople = [String?]()
var arrayAnimals = [String?]()
var arrayPlants = [String?]()
var arrayPeopleSort = [String]()
var arrayAnimalsSort = [String]()
var arrayPlantsSort = [String]()

let array: [AnyObject] = [animals, plants, human]

for value in array {
    if let human = value as? People {
        arrayPeople.append(human.relatives?.father?.name)
        arrayPeople.append(human.relatives?.mother?.name)
        arrayPeople.append(human.relatives?.father?.name)
        arrayPeople.append(human.relatives?.sister?.name)
        arrayPeople.append(human.relatives?.sister?.childOne?.name)
        arrayPeople.append(human.relatives?.sister?.childTwo?.name)
        arrayPeople.append(human.relatives?.mother?.mother?.name)
        arrayPeople.append(human.relatives?.father?.mother?.name)
        arrayPeople.append(human.relatives?.mother?.father?.name)
        arrayPeople.append(human.relatives?.father?.father?.name)
        arrayPeople.append(human.relatives?.mother?.sister?.childBoy?.name)
        arrayPeople.append(human.relatives?.mother?.brother?.childBoy?.name)
        arrayPeople.append(human.relatives?.father?.brotherTwo?.childBoy?.name)
        arrayPeople.append(human.relatives?.mother?.sister?.childGirl?.name)
        arrayPeople.append(human.relatives?.mother?.brother?.childGirl?.name)
        arrayPeople.append(human.relatives?.father?.sister?.childGirl?.name)
        arrayPeople.append(human.relatives?.father?.brotherTwo?.childGirl?.name)
        arrayPeople.append(human.relatives?.mother?.brother?.name)
        arrayPeople.append(human.relatives?.father?.brotherOne?.name)
        arrayPeople.append(human.relatives?.father?.brotherTwo?.name)
        arrayPeople.append(human.relatives?.mother?.sister?.name)
        arrayPeople.append(human.relatives?.father?.sister?.name)
    } else if let animal = value as? Animals {
        arrayAnimals.append(animal.dog)
        arrayAnimals.append(animal.cat)
        arrayAnimals.append(animal.cow)
    } else if let plant = value as? Plants {
        arrayPlants.append(plant.trees)
        arrayPlants.append(plant.grass)
        arrayPlants.append(plant.flowers)
    }
}

for value in arrayPeople {
    if let people = value {
        arrayPeopleSort.append(people)
    }
}

for value in arrayAnimals {
    if let people = value {
        arrayAnimalsSort.append(people)
    }
}

for value in arrayPlants {
    if let people = value {
        arrayPlantsSort.append(people)
    }
}

print(arrayPeopleSort.sorted(), arrayAnimalsSort.sorted(), arrayPlantsSort.sorted())
