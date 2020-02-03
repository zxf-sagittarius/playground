import UIKit

var str = "Hello, playground"



//var a = "hello, world"
//print(a.startIndex)
//print(a.endIndex)
//a.insert("!", at: a.endIndex)
//print(a)
//a.insert(contentsOf: "life", at: a.index(before: a.endIndex))
//print(a)
//
//a.remove(at: a.index(before: a.endIndex))
//print(a)
//
//let range = a.index(a.endIndex, offsetBy: -4)..<a.endIndex
//a.removeSubrange(range)
//print(a)


struct FibsItertor: IteratorProtocol {
    let number: Int
    var index: Int = 0
    init(_ number: Int) {
        self.number = number
    }
    var state = (0,1)
    mutating func next() -> Int? {
        if index >= number {
            return nil
        }
        index += 1
        let fibNmuber = state.0
        state = (state.1, state.0 + state.1)
        return fibNmuber
    }
    typealias Element = Int
}



struct FibsSequence: Sequence {
    
    let number: Int
    init(_ number: Int) {
        self.number = number
    }
    typealias Iterator = FibsItertor
    func makeIterator() -> FibsSequence.Iterator {
        return FibsItertor(number)
    }
}

let fibs = FibsSequence(10)

//print(fibs)
//
//for fib in fibs {
//    print(fib)
//}


//
//func getSubsetsOfSet<T>(set: Set<T>) -> Array<Set<T>> {
//
//    let count = 1 << set.count
//    let elements = Array(set)
//    var subSets = Array<Set<T>>()
//    for i in 0..<count {
//        var subSet = Set<T>()
//        for j in 0...elements.count {
//            if ((i >> j) & 1) == 1 {
//                print("j=\(j)")
//                subSet.insert(elements[j])
//            }
//        }
//        print("i=====================\(i)")
//        subSets.append(subSet)
//    }
//    return subSets
//}
//
//let sets: Set = ["0","1","2"]
//
//let subSets = getSubsetsOfSet(set: sets)
//
//print(subSets)






func getSubsetsOfSet2<T>(elements: Array<T>, index: Int) -> Array<Set<T>>{
    
    var subSets = Array<Set<T>>()
    if index == 0 {
        subSets.append(Set<T>())
        var subset = Set<T>()
        subset.insert(elements[0])
        subSets.append(subset)
        print("------------------------")
        return subSets
    }
    
    subSets = getSubsetsOfSet2(elements: elements, index: index-1)
    for subset in subSets {
        var cureentSubset = subset
        print("index == \(index)")
        cureentSubset.insert(elements[index])
        subSets.append(cureentSubset)
    }
    return subSets
}

func getSubsetsOfSet3<T>(set: Set<T>) -> Array<Set<T>> {
    let array = Array(set)
    return getSubsetsOfSet2(elements: array, index: array.count-1)
}

let sets: Set = ["a","b","c"]
let subSets = getSubsetsOfSet3(set: sets)
print(subSets)




// 范式转换 -- 传统方案
// 单词频次
let NON_WORDS = ["the","and","of","to","a","i","it","in","or","is","as","so","but","be"]
func wordFre(words: String) -> [String: Int] {
    var wordDict: [String: Int] = [:]
    let wordList = words.split(separator: " ")
    for word in wordList {
        let lowerCaseWord = word.lowercased()
        if !NON_WORDS.contains(lowerCaseWord) {
            if let count = wordDict[lowerCaseWord] {
                wordDict[lowerCaseWord] = count+1;
            } else {
                wordDict[lowerCaseWord] = 1
            }
        }
    }
    return wordDict;
}

let words = """
There are moments in life when you miss someone so much
that you just want to pick them from your dreams and hug them for real
 Dream what you want to dream go where you want to go br what you want
to be because you have onle one life and one chance to do all the things
you want to
"""

print(wordFre(words: words))


func wordFreq2(words: String) -> [String: Int] {
    var wordDict:[String: Int] = [:]
    
    let wordList = words.split(separator: " ")
    wordList.map { $0.lowercased() }
        .filter{ !NON_WORDS.contains($0)}
        .forEach { (word) in
            wordDict[word] = (wordDict[word] ?? 0) + 1
    }
    
    
    
    return wordDict;
}

print(wordFreq2(words: words))

let source = "Hello,world!"
let target = ["a","e","i","o","u"]
let firstOrders = target.map { (character) -> Int? in
    let index = source.firstIndex(where: {
        String($0) == character
    })
    
    return index?.utf16Offset(in: source)
}
print(firstOrders)
print(zip(target, firstOrders.compactMap({$0 ?? -1})).map({$0}))


let target2: [Character] = ["a","e","i","o","u"]
zip(0..<source.count, source).forEach { (index, char) in
    if target2.contains(char) {
        print(char,index)
    }
}


let employee = ["neal","s","stu","j","rich","bob","aiden","j","alex","jenall","zxfei","nake"]
func clearNames(names: Array<String>) -> String{
    var cleanedNames = ""
    for name in names {
        if name.count > 1 {
            cleanedNames += name.capitalized + ","
        }
    }
    cleanedNames.remove(at: cleanedNames.index(before: cleanedNames.endIndex))
    return cleanedNames
}
print(clearNames(names: employee))


let cleanedNames = employee.filter { $0.count > 1}
                            .map({$0.capitalized})
                            .joined(separator: ",")
print("cleanedNames:",cleanedNames)


extension Array where Element: Any {
    func pralkekMap<T>(_ transform: (Element) -> T) -> [T] {
        let n = self.count
        if n == 0 {
            return []
        }
        
        var result = ContiguousArray<T>()
        result.reserveCapacity(n)
        
        DispatchQueue.concurrentPerform(iterations: n) { (i) in
            result.append(transform(self[i]))
        }
        return Array<T>(result)
    }
}

let cleanedNames2 = employee.filter({$0.count > 1}).pralkekMap({$0.capitalized}).joined(separator: ",")
print("cleanedNames2 = ",cleanedNames2)

enum CompassPoint: CaseIterable {
    case north
    case sourth
    case east
    case west
}

let numberOfDirections = CompassPoint.allCases.count
print("\(numberOfDirections) directions")

for direction in CompassPoint.allCases {
    print(direction)
}

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85, 51226, 3)
print(productBarcode)

productBarcode = .qrCode("ABCSAFEFEFAHKO")
print(productBarcode)

switch productBarcode {
case .upc(let a, let b, let c, let d):
    print("upc:\(a) \(b) \(c) \(d)")
case .qrCode(let productCode):
    print("QR code \(productCode).")
}

enum ASCIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet: Int {
    case mercury = 1,venus,earth,mars,jupiter,saturn,uranus,neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)

let possablePlanet = Planet(rawValue: 7)
let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("there isn't a planet at position \(positionToFind)")
}

indirect enum ArithmeticExpression {
    case number(Int)
    case addtion(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression,ArithmeticExpression)
}
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addtion(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addtion(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

class DataImporter {
    var fileName = "data.text"
    init() {
        print("DataImporter inits")
    }
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("some data")
manager.data.append("some more data")
print("manager.data.append finish")
print(manager.importer.fileName)


struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}


struct Size {
    var width = 0.0, height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0)



//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            let centerX = origin.x + (size.width/2);
//            let centerY = origin.y + (size.height/2);
//            return Point(x: centerX,y: centerY)
//        }
////        set(newCenter) {
////            origin.x = newCenter.x - (size.width/2);
////            origin.y = newCenter.y - (size.height/2);
////        }
//
//        set {
//            origin.x = newValue.x - size.width/2
//            origin.y = newValue.y - size.height/2
//        }
//    }
//}

//struct Rect {
//    var origin = Point()
//    var size = Size()
//    var center: Point {
//        get {
//            Point(x: origin.x + (size.width/2),y: origin.y + (size.height/2))
//        }
//        set {
//            origin.x = newValue.x - size.width/2
//            origin.y = newValue.y - size.height/2
//        }
//    }
//}


struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}


class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("about to set \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("\(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 300
stepCounter.totalSteps = 400

class SomeClass {
    static var a = "some value"
    static var b: Int {
        return 27
    }
    class var c: Int {
        return 100
    }
    class func someTypeMethod() {
        // do something
    }
}

SomeClass.someTypeMethod()



enum StateSwitch {
    case off,low,high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}


struct TimeTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimestable = TimeTable(multiplier: 3)
print("six times three is \(threeTimestable[6])")


struct Matrix {
    let rows: Int, colums: Int
    var grid: [Double]
    init(rows: Int, colums: Int) {
        self.rows = rows
        self.colums = colums
        grid = Array(repeating: 0.0, count: rows*colums)
    }
    
    func indexIsValid(row: Int, colum: Int) -> Bool {
        return row >= 0 && row < rows && colum >= 0 && colum < colums
    }
    subscript(row: Int, colum: Int) -> Double {
        get {
            assert(indexIsValid(row: row, colum: colum), "index out of range")
            return grid[(row*colums) + colum]
        }
        set {
            assert(indexIsValid(row: row, colum: colum))
            grid[(row*colums)+colum] = newValue
        }
    }
}

var matix = Matrix(rows: 2, colums: 3)
matix[0, 1] = 1.5
matix[1, 0] = 3
print(matix[0,1])

struct Fahenheit {
    var tem = 20.0
}

var f = Fahenheit()
print(f.tem)

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetQuestion = SurveyQuestion(text: "How about beets?")
beetQuestion.ask()
beetQuestion.response = "I also like beets."



class Person {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    convenience init() {
        self.init(name: "unnamed", age: 0)
    }
}

class Teacher: Person {
    var salary: Int
    init(name: String, age: Int, salary: Int) {
        self.salary = salary
        super.init(name: name, age: age)
        self.name = name + "老师"
    }
    convenience init(name: String){
        self.init(name: name, age:30, salary: 5000)
    }
    
    func showInfo() {
        print("teacher name \(name), age \(age), salary \(salary)")
    }
}

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
}

class Train: Vehicle {
    override func makeNoise() {
        print("呜呼！")
    }
}

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed/10.0) + 1
        }
    }
}

let automic = AutomaticCar()
automic.currentSpeed = 35.0
print("automic car :\(automic.description)")

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist;
        super.init(name: name)
    }
}
let library = [
    Movie(name: "1", director: "aaaa"),
    Song(name: "2", artist: "bbbb")
]

print(type(of: library))


for item in library {
    if let realItem = item as? Movie {
        print(realItem.director)
    }
}




let chineseNum = ["零","一","二","三","四","五","六","七","八","九"]
let uiit = ["","十","百","千","万"]
var acceptZero = false
func outputChineseNum(num: Int, index: Int) -> String {
    
    if index == 0 {
        acceptZero = false
    }
    if num == 0 {
        return ""
    }
    let last = num % 10
    let secondLast = (num / 10) % 10
    acceptZero = acceptZero ? true : (last != 0 && (num / 10 > 0))

    let unitt = (last == 0) ? "" : uiit[index]
    let number = ((last == 0 && secondLast != 0 && acceptZero) || last != 0) ? chineseNum[last] : ""
    return outputChineseNum(num: num/10, index: index+1) + number + unitt
}
print(outputChineseNum(num: 10020, index: 0))
print(outputChineseNum(num: 10101, index: 0))
print(outputChineseNum(num: 10001, index: 0))
print(outputChineseNum(num: 10000, index: 0))
print(outputChineseNum(num: 200, index: 0))


extension Double {
    var km: Double {
        return self * 1_000.0
    }
    var m: Double {
        return self
    }
    var cm: Double {
        return self / 100.0
    }
}

extension Int {
    func repetions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetions {
    print("hello!")
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

378739294[2]

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

protocol SomeProtocol {
    init()
}


class SomeSuperClass {
    init() {
        
    }
}

class MyClass: SomeSuperClass, SomeProtocol {
    required override init() {
        
    }
}

protocol SomeClassOnlyProtocol: AnyObject, SomeProtocol {
    
}




protocol FullyNamed {
    var fullName: String {get}
}

struct Student: FullyNamed {
     var fullName: String
}
let json = Student(fullName: "json")

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")


protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}


protocol Named {
    var name: String {
        get
    }
}
protocol Aged {
    var age: Int {
        get
    }
}
struct Person1: Named, Aged {
    var name: String
    var age: Int
}
func wishHappy(to celebrator: Named & Aged) {
    print("Happy birthday,\(celebrator.name), you're \(celebrator.age)")
}

let birthdayPerson = Person1(name: "Alex", age: 18)
wishHappy(to: birthdayPerson)


protocol TextRepresentable {
    var textDescription: String {
        get
    }
}

class Dice: TextRepresentable {
    var textDescription: String {
        return "A"
    }
}

extension Array: TextRepresentable where Element: TextRepresentable {

    var textDescription: String {
        let itemsAsText = self.map{ $0.textDescription }
        return "[" + itemsAsText.joined(separator: ",") + "]"
        
    }
}

let d6 = Dice();
let d12 = Dice();


let myDice = [d6, d12]
print(myDice.textDescription)

struct Hamster {
    var name: String
    var textDescription: String {
        return "A hamster name \(name)"
    }
}
// extension Hasher: TextRepresentable { }

extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return arc4random() > 3
    }
}

extension Collection where Iterator.Element: TextRepresentable {
    var textDescription: String {
        let itemsAsText = self.map({$0.textDescription})
        return "[" + itemsAsText.joined(separator: ",") + "]"
    }
}
/*
class Human {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sayHi() {
        print("say hi")
    }
}

class Athlete: Human {
    override func sayHi() {
        print("Hi, I'm \(name)")
    }
}

class Runner: Athlete {
    func run() {
        print("run")
    }
}
class Swimmer: Athlete {
    func swim() {
        print("swim")
    }
}

class Referee: Human {
    override func sayHi() {
        print("Hi,I'm \(name)")
    }
}
*/

protocol Human {
    var name: String { get set }
    var age: Int { get set }
    func sayHi()
}
protocol Runnable {
    func run()
}
protocol Swimming {
    func swim()
}

struct Runner: Human, Runnable {
    var name: String = "zhangsan"
    
    var age: Int = 20
    
    func sayHi() {
        print("Hi,I'm \(name)")
    }
    
    func run() {
        print("run")
    }
}

struct Swimmer: Human,Swimming {
    var name: String = "lisi"
    var age: Int = 18
    func sayHi() {
        print("Hi,I'm \(name)")
    }
    func swim() {
        print("swim")
    }
}
