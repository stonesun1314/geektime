
import UIKit

var str = "Hello, playground"


//============函数的定义和使用=========
//func greet(person: String) -> String {
//    "Hello," + person + "!"
//}
//
//print(greet(person: "zhangsan"))
//
//func minMax(array: [Int]) -> (min: Int, max: Int)? {
//    if array.isEmpty {
//        return nil
//    }
//
//    var minValue = array[0]
//    var maxValue = array[0]
//    for value in array {
//        if value < minValue {
//            minValue = value
//        }else if value > maxValue {
//            maxValue = value
//        }
//    }
//    return (minValue, maxValue)
//}
//
//if let minMaxValue = minMax(array: [1, 3, 2, 5, 4]){
//    print("min is \(minMaxValue.min), max is \(minMaxValue.max)")
//}

//============函数的x形式参数和返回值=========

//1.实参标签和形参名
//2.指定实际参数标签
//3.省略实际参数标签 _
//4.默认形式参数值
//5.可变形式参数
//6.输入输出形式参数

//func addTwoNumbers(nums: Int...) -> Int{
//    var sum = 0
//    for num in nums {
//        sum += num
//    }
//    return sum
//}
//
//print(addTwoNumbers(nums: 2,5,1))

var number = 10
var anotherNumber = 8
func swapValue(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}

//swapValue(&number, &anotherNumber)
//print(number)
//print(anotherNumber)

//==========函数类型和内嵌函数=========
//1、使用函数类型
//2.函数类型作为形式参数类型
//3.函数类型作为返回值
//4.内嵌函数

//let swapFunc: (inout Int,inout Int) -> () = swapValue
//swapValue(&number, &anotherNumber)
//print(number)
//print(anotherNumber)
//
//func chooseStepFunction(backward: Bool) -> (Int) -> Int {
//    func stepForward(step: Int) -> Int  { return step + 1}
//    func stepBackward(step: Int) -> Int { return step - 1}
//
//    return backward ? stepBackward : stepForward
//}
//
//var currentValue = -4
//let stepFunction = chooseStepFunction(backward: currentValue > 0)
//while currentValue != 0{
//    currentValue = stepFunction(currentValue)
//}
//
//print(currentValue)


//func addTwoNumber(num1: Int, num2: Int) -> Int{
//    return num1 + num2
//}
//
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int){
//    print(mathFunction(a, b))
//}
//
//printMathResult(addTwoNumber, 3, 5)

//===============闭包和闭包表达式===============
//闭包表达式语法版本
//从语境中推断类型
//从单表达式闭包隐式返回 {s1, s2 in s1 > s2}
//简写实际参数名 $0 $1 $2
//运算符函数 > <
//尾随闭包
//
//let names = ["zhangsan","lisi","wangwu","zhaoliu"]
//func backward(_ s1: String, _ s2: String) -> Bool{        //语法闭包
//    return s1 > s2
//}
//
//let sortedNames = names.sorted(by: backward)
//print(sortedNames)

//let sortedNames = names.sorted(by: { $0 > $1
//})
//print(sortedNames)

//let sortedNames = names.sorted(by: > )
//print(sortedNames)

//尾随闭包
//let sortedNames = names.sorted{ $0 > $1 }
//print(sortedNames)

//==========闭包捕获值============
//闭包和函数都是引用类型
//func makeIncrementer(amount: Int) -> ()-> Int {
//     var total = 0
//    func incrementer() -> Int {
//        total += amount
//        return total
//    }
//    return incrementer
//}
//
//let incrementByTen = makeIncrementer(amount: 10)
//print(incrementByTen())
//print(incrementByTen())
//print(incrementByTen())
//
//let incrementBySeven = makeIncrementer(amount: 7)
//print(incrementBySeven())
//
//let anoterIncrementByTen = incrementByTen
//print(anoterIncrementByTen())


//====================逃逸闭包和自动闭包==========
//var names = ["zhangsan", "lisi", "wangwu", "zhaoliu"]
//let customerProvider = { names.remove(at: 0) }
//print(names.count)
//print(customerProvider())
//print(names.count)
//
//
//var providers: [() -> String] = []
//func collectCustomerProviders(provider: @autoclosure @escaping () -> String){
//    providers.append(provider)
//}
//
//collectCustomerProviders(provider: names.remove(at: 0))
//collectCustomerProviders(provider: names.remove(at: 0))
//
//print(names.count)
//
//for provider in providers {
//    print(provider())
//}
//print(names.count)

//class SomeClass {
//    var x: String = "Hello"
//    func doSomething() {
//        collectCustomerProviders(provider: self.x)
//    }
//}

//============高阶函数==========
//1.map : 原始集合里的每一个元素，以变换后的元素替换之形成一个新的集合
//2.filter 对于原始集合中的每个元素，通过判定来将其丢弃或者放进新集合
//3.reduce 化约 对于原始集合中的每一个元素，作用于当前累计的结果上
//4.flatMap 对于元素是集合的集合，可以得到单级的集合
//5.compactMap 过滤空值

let numbers = [1, 2, 4, 5, 10]
print(numbers.map{$0 * 10})
print(numbers.filter{ $0 > 4})
print(numbers.reduce(100){ $0 + $1})

let arrayNumbers = [[1,2,3], [4,5,6], [7,8,9]]
print(arrayNumbers.flatMap{$0.map{ $0 * 10 }})

let names:[String?] = ["zhangsan", "lisi", nil, "wangwu", nil, "zhaoliu"]
print(names.count)

print(names.compactMap{ $0 })
print(names.compactMap{$0?.count})



