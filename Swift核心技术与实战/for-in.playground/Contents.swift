import UIKit

//for i in 0...3{
//    print(i)
//}

//for c in "Hello,world" {
//    print(c)
//}

//let names = ["zhangsan","lisi","wangwu","zhaoliu"]
//for name in names {
//    print(name)
//}

//let numberofLegs = ["spider":8 , "ant": 6, "cat": 4]
//for t in numberofLegs {
//    print("\(t.0) has \(t.1) legs")
//}
//
//for (name, legs) in numberofLegs {
//    print("\(name) has \(legs) legs")
//}

//for i in stride(from: 0, through: 50, by: 5) {
//    print(i)
//}

//let c: Character = "z"
//switch c {
//case "c":
//    print("the first letter of alphabet")
//case "z":
//    print("the last letter of alphabet")
//default:
//    print("other")
//}

//let c2 = "a"
//switch c2 {
//case "a","e","i","o","u":
//    print("元音字母")
//case "b","c","d":
//    print("辅音字母")
//default:
//    print("其他字符")
//}

//let count = 62
//switch count {
//case 0:
//    print("none")
//case 1...5:
//    print("a few")
//case 6..<12:
//    print("several")
//case 12..<100:
//    print("dozen of")
//case 100...1000:
//    print("hundreds of")
//default:
//    print("many")
//}

//let point = (1, 1)
//switch point {
//case (0, 0):
//    print("point at origin")
//case (_, 0):
//    print("point at x-axis")
//case (0, _):
//    print("point at y-axis")
//case (-2...2, -2...2):
//    print("point in the box")
//default:
//    print("point out of the box")
//}

//switch point {
//case (let x, 0):
//    print("x is \(x) when y is 0")
//case (0, let y):
//    print("y is \(y) when x is 0")
//default:
//    print("other")
//}

//let point = (1, 2)
//switch point {
//case (let x, let y) where x == y:
//    print("ponit x = y")
//case (let x, let y) where x == -y:
//    print("ponit x = -y")
//default:
//    print("other")
//}

//let num = 5
//var description = "the number \(num) is"
//switch num {
//case 2, 3, 5,7, 11, 13, 17:
//    description += " a prime number"
//    fallthrough
//default:
//    description += " also a integer"
//}

//print(description)

//var number = 11
//whileLoop: while number > 0 {
//    switch number {
//    case 9:
//        print("9")
//    case 10:
//        var sum = 0
//        for i in 0...10 {
//            sum += i
//            if i == 9 {
//                print(sum)
//                break whileLoop
//            }
//
//        }
//    default:
//        print("default")
//    }
//    number -= 1
//}
//
//print("after while")

//func checkIPAddress(ipAddr: String) -> (Int, String){
//    let compoments = ipAddr.split(separator: ".")
//
//    if compoments.count == 4{
//        if let first = Int(compoments[0]), first >= 0 && first < 256{
//            if let second = Int(compoments[1]), second >= 0 && second < 256 {
//                if let third = Int(compoments[2]), third >= 0 && third < 256 {
//                    if let forth = Int(compoments[3]), forth >= 0 && forth < 256 {
//                        return (0,"")
//                    }else{
//                        return (4, "the forth component is wrong")
//                    }
//                }else{
//                   return (3, "the third component is wrong")
//                }
//            }else{
//                return (2, "the second component is wrong")
//            }
//        }else {
//            return (1, "the first component is wrong")
//        }
//    }else {
//        return (100, "the ip address must has four components");
//    }
//}
//
//print(checkIPAddress(ipAddr: "127.-1.0.1"))

//func checkIPAddress2(ipAddr: String) -> (Int, String){
//    let compoments = ipAddr.split(separator: ".")
//
//    guard compoments.count == 4 else {
//        return (100, "the ip address must has four components");
//    }
//
//    guard let first = Int(compoments[0]), first >= 0 && first < 256 else{
//        return (1,"the first component is wrong")
//    }
//
//    guard let second = Int(compoments[1]), second >= 0 && second < 256 else {
//        return (2, "the second component is wrong")
//    }
//
//    guard let third = Int(compoments[2]), third >= 0 && third < 256 else {
//        return (3, "the third component is wrong")
//    }
//
//    guard let forth = Int(compoments[3]), forth >= 0 && forth < 256 else {
//        return (4, "the forth component is wrong")
//
//    }
//
//    return (0,"")
//}
//
//print(checkIPAddress2(ipAddr: "127.0.283.1"))


//let someNumber: Int? = 10
//
//if case .some(let x) = someNumber{
//    print(x)
//}
//
//if case let x? = someNumber{
//    print(x)
//}

//protocol Animal {
//    var name: String { get }
//}
//
//struct Dog : Animal{
//    var name: String{
//        return "dog"
//    }
//    var runSpeed : Int
//}
//
//struct Bird : Animal {
//    var name: String{
//        return "bird"
//    }
//    var flightHeight : Int
//}
//
//struct Fish : Animal {
//    var name: String{
//        return "fish"
//    }
//    var depth : Int
//}
//
//let animals: [Any] = [Dog(runSpeed: 100),Bird(flightHeight: 500),Fish(depth: 100)]
//
//for animal in animals {
//    switch animal {
//    case let dog as Dog:
//        print("\(dog.name) run at \(dog.runSpeed)")
//    case let fish as Fish:
//        print("\(fish.name) swim in \(fish.depth)")
//    case is Bird:
//        print("bird can fly")
//    default:
//        break
//    }
//}

struct Employee {
    var salary : Int
}

func ~=(left:ClosedRange<Int>, right:Employee)-> Bool{
    return left.contains(right.salary)
}

var e: Employee = Employee(salary: 10800)

switch e {
case 0...1000:
    print("吃不饱")
case 1000...5000:
    print("勉强度日")
case 5000...10000:
    print("还不错")
default:
    print("生活美滋滋")
}
