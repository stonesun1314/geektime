
import UIKit

var str = "Hello, playground"

//enum CompassPoint: CaseIterable {
//    case south
//    case north
//    case east
//    case west
//}
//
//print(CompassPoint.allCases.count)
//
//let direction = CompassPoint.south
//switch direction {
//case .south:
//    print("south")
//case .north:
//    print("north")
//case .east:
//    print("east")
//case .west:
//    print("west")
//
//
//}
//
//enum ControlCharacter: String {
//    case tab = "\t"
//    case line = "\n"
//}
//print(ControlCharacter.tab.rawValue)
//
//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrcode(String)
//}
//
//var productCode = Barcode.upc(1, 2, 3, 4)
//print(productCode)
//productCode = .qrcode("abcd")
//
//switch productCode {
//case .upc(let a, let b, let c, let d):
//    print("upc-\(a)-\(b)-\(c)-\(d)")
//case .qrcode(let codeString):
//    print("qrcode-\(codeString)")
//}

//======递归枚举

//indirect enum ArithmeticExpression {
//    case number(Int)
//    case add(ArithmeticExpression, ArithmeticExpression)
//    case mutiply(ArithmeticExpression, ArithmeticExpression)
//
//
//}
//
//let firstExpression = ArithmeticExpression.number(5)
//let secondExpression = ArithmeticExpression.number(4)
//let addExpression = ArithmeticExpression.add(firstExpression, secondExpression)
//let third = ArithmeticExpression.number(2)
//let mutiplyExpression = ArithmeticExpression.mutiply(addExpression, third)
//print(mutiplyExpression)
//
//func eval(_ expression: ArithmeticExpression) -> Int {
//    switch expression {
//    case .number(let value):
//        return value
//    case .add(let first, let second):
//        return eval(first) + eval(second)
//    case .mutiply(let first, let second):
//        return eval(first) * eval(second)
//    }
//}
//
//print(eval(mutiplyExpression))

//struct Point {
//    var x: Int = 0
//    var y: Int = 0
//}
//
//struct Size {
//    var width = 0
//    var height = 0
//}
//
//struct Rect {
//    var origin : Point
//    var size: Size
//
//    var Center: Point {
//        get {
//            return Point(x: origin.x + size.width/2, y: origin.y + size.height/2)
//        }
//        set {
//            origin.x = newValue.x - size.width / 2
//            origin.y = newValue.y - size.height / 2
//        }
//    }
//}
//
//class StepCounter {
//    var totalSteps: Int = 0 {
//        willSet(newStep){
//            print("will set totalSteps to \(newStep)")
//        }
//        didSet(oldSteps){
//            print("did change totalSteps from \(oldSteps) to \(totalSteps)")
//        }
//    }
//}
//
//var counter = StepCounter()
//counter.totalSteps = 100
//counter.totalSteps = 360
//counter.totalSteps = 812


//--------------62
//struct Point {
//    var x = 0
//    var y = 0
//
////    实例方法
//    func printInfo() {
//        print("x is \(x), y is \(y)")
//    }
////    异变方法
//    mutating func moveBy(x: Int, y: Int){
//        self.x += x
//        self.y += y
//    }
////    类方法
//    static func printTypeInfo() {
//        print("A Point")
//    }
//}
//
//var p = Point(x: 2, y: 2)
//p.moveBy(x: 2, y: 5)
//p.printInfo()
//Point.printTypeInfo()


//-------62----------

//struct Matrix {
//    let rows: Int
//    let columns: Int
//    var grid: [Double]
//
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//
//        grid = Array(repeating: 0.0, count: rows*columns)
//    }
//
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            return grid[row * column + column]
//        }
//        set {
//            grid[row * column + column] = newValue
//        }
//    }
//}
//
//var matrix = Matrix(rows: 2, columns: 2)
//matrix[1, 0] = 9.9
//matrix[0, 1] = 8.8
//print(matrix.grid)
//
//print(matrix[0, 1])
//
//enum CompassPoint: Int {
//    case south = 1
//    case north
//    case east
//    case west
//
//    static subscript(index: Int) -> CompassPoint{
//        get {
//            return CompassPoint(rawValue: index)!
//        }
//    }
//}
//
//let direction = CompassPoint[2]
//print(direction)


//------------------63
//class Person {
//    var name: String
//    var age: Int
//    init?(name: String, age: Int) {
//        if age > 200 {
//            return nil
//        }
//        self.name = name
//        self.age = age
//    }
//
////    convenience init(age: Int) {
////        self.init(name:"[Unnamed]", age: age)
////    }
//}
//
//let person = Person(name: "zhangsan", age: 300)
//print(person)

//class Teacher: Person {
//    var salary: Int
//
////    required init(name: String, age: Int) {
////        self.salary = 5000
////        super.init(name: name, age: age)
////    }
//
//    init(name1: String, age: Int, salary: Int) {
//        self.salary = salary
//
//        super.init(name: name1, age: age)
//        name = name1 + "老师"
//        self.test()
//
//    }
//
//    func test() {
//        print("teacher test")
//    }
//
//    convenience init(salary: Int) {
//        self.init(name1: "zhangsan", age: 30, salary: salary)
//        self.salary = salary + 1000
//    }
//}

//let teacher = Teacher(age: 20)
//teacher.test()

//---------64------------
//class Vehicle {
//    var currentSpeed: Int = 0
//    final var desc: String {
//        return "run at speed \(currentSpeed)"
//    }
//
//    func makeNoise(){
//
//    }
//}
//
//class Car: Vehicle{
//
//    var gear: Int = 0
//
////    override var desc: String {
////        return super.desc + " at gear \(gear)"
////    }
//
//}
//
//var car = Car()
//
//car.gear = 3
//car.currentSpeed = 30
//print(car.desc)

//----------65-------------
//
//class MediaItem {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class Movie: MediaItem {
//    var director: String
//    init(name: String, director: String){
//        self.director = director
//        super.init(name: name)
//    }
//}
//
//class Song: MediaItem {
//    var artist: String
//    init(name: String, artist: String) {
//        self.artist = artist
//        super.init(name: name)
//    }
//}
//
//let array = [Movie(name: "1", director: "2"),
//            Song(name: "3", artist: "4"),
//            Movie(name: "5", director: "6")]
//
//print(type(of: array))
//
//for item in array {
//    if let realItem = item as? Movie {
//        print(realItem.director)
//    }
//}

//------------66---------------------
extension Double {
    var km: Double {
        return self / 1000.0
    }
}

//let speed: Double = 1200.0
//print(speed.km)

extension Int {
    func repeatTask(task: () -> ()){
        for i in 0..<self {
            task()
        }
    }
}
//3.repeatTask {
//    print("Hello")
//}

extension Int {
    subscript(digitIndex: Int) -> Int{
        get {
            var base = 1
            for i in 0..<digitIndex{
                base *= 10
            }
            return self / base % 10
        }
    }
}

