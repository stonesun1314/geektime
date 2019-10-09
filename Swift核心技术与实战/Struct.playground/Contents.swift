import UIKit


struct Vector2D{
    var x = 0.0, y = 0.0
}

extension Vector2D{
    static func + (left: Vector2D, right: Vector2D) -> Vector2D{
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

//let vector = Vector2D(x: 1.0, y: 2.0)
//let anotherVector = Vector2D(x: 3.0, y: 1.0)
//let thirdVector = vector + anotherVector
//print("x  is \(thirdVector.x), y is \(thirdVector.y)")


extension Vector2D{
    static prefix func - (vector: Vector2D) -> Vector2D{
        return Vector2D(x: -vector.x, y: -vector.y)
    }
}

//let vector2 = -vector
//print("x is \(vector2.x), y is \(vector2.y)")


extension Vector2D{
    static func += (left: inout Vector2D, right: Vector2D){
        left = Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
}

var vector3 = Vector2D(x: 1.0, y: 1.0)
let vector4 = Vector2D(x: 2.0, y: 3.0)
//vector3 += vector4
//print("x is \(vector3.x), y is \(vector3.y)")

extension Vector2D: Equatable {
    static func == (left: Vector2D, right: Vector2D) -> Bool{
        return (left.x == right.x) && (left.y == right.y)
    }
}

print(vector3 == vector4)
print(vector3 != vector4)

//infix operator +-: AdditionPrecedence
//extension Vector2D {
//    static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
//        return Vector2D(x: left.x + right.x, y: left.y - right.y)
//    }
//}
//
//infix operator *^: MyPrecedence
//precedencegroup MyPrecedence {
//    associativity: left
//    lowerThan: AdditionPrecedence
//}
//
//extension Vector2D{
//    static func *^ (left: Vector2D, right: Vector2D) -> Vector2D{
//        return Vector2D(x: left.x + right.x, y: left.y * left.y + right.y * right.y)
//    }
//}
//
//var firstVector = Vector2D(x: 1.0, y: 2.0)
//var secondVector = Vector2D(x: 3.0, y: 7.0)
//var plusMinusVector = firstVector +- secondVector
//var thirdVector = Vector2D(x: 2.0, y: 2.0)
//var vector = firstVector +- secondVector *^ thirdVector
//
//print(vector.x)
//print(vector.y)

prefix operator +++

extension Vector2D {
    static prefix func +++ (vector: Vector2D) -> Vector2D{
        return Vector2D(x: vector.x + vector.x, y: vector.y + vector.y)
    }
}

let vectorTobeDoubled = Vector2D(x: 1.0, y: 3.0)
let doubleVector = +++vectorTobeDoubled
print("\(doubleVector.x) \(doubleVector.y)")







