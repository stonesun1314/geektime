import UIKit

var str = "Hello, playground"

////赋值初始化
//var array = [1,2,3,4]
//print(array)
//array = []
//array.append(1)
//print(array)
//
////类型初始化
//
////使用repat初始化
//let fiveZs = Array(repeating: "Z", count: 8)
//print(fiveZs)

//var chars = Array("hello")
//print(chars)
//chars.append("w")
//print(chars)
//
//
//let numbers = Array(1...9)
//print(numbers)
//
//let persons = ["zhangsan": 13, "lisi": 80, "wangwu":18]
//let names = Array(persons.keys)
//print(names)

//===========================数组的操作
//let numbers = Array(2...7)
//numbers.forEach { (num) in
//    if num == 3 {
//        return
//    }
//    print(num);
//}

//for (index, num) in numbers.enumerated(){
//    print("the index is \(t)");
//}

//for i in 0..<numbers.count{
//    print("the index is \(i)");
//    print(numbers[i])
//}


//var it = numbers.makeIterator()
//while let num = it.next(){
//    print(num)
//}

//for i in numbers.indices {
//    print("the index is \(i)")
//    print(numbers[i])
//}

//var array = [10, 20 , 45 , 30, 98, 101, 30, 4]
//print(array.contains(30))
//print(array.contains(where: {$0 < 4}))
//print(array.allSatisfy({$0 > 1}))

//print(array.first)
//print(array.last)
//print(array.first(where: {$0 > 25}))
//print(array.last(where: {$0 > 25}))

//print(array.firstIndex(of: 9))
//print(array.firstIndex(of: 30))
//print(array.firstIndex(where: {$0 > 25}))
//print(array.lastIndex(where: {$0 > 25}))

//print(array.min())
//print(array.max())

//let errors = [(12,"b"),(23, "a"),(45, "c")]
//print(errors.min(by: { (a, b) -> Bool in
//    a.1 < b.1
//}) as Any)
//
//print(errors.max(by: { (a, b) -> Bool in
//    a.1 < b.1
//}) as Any)



//var numbers = [Int](2...7)
//numbers.append(100)
//print(numbers)
//numbers.append(contentsOf: 200...203)
//print(numbers)

//numbers.insert(-1, at: 1)
//print(numbers)
//numbers.insert(contentsOf: 100...105, at: 1)
//print(numbers)

//let removedNum = numbers.remove(at: 1)
//print(removedNum)
//print(numbers)

//let num = numbers.popLast()
//print(num)
//print(numbers)

//numbers.removeSubrange(1...3)
//print(numbers)

//numbers.removeAll(keepingCapacity: true)
//print(numbers)
//print(numbers.capacity)

//numbers.removeLast(2)
//print(numbers)

//=======数组切片 ArraySlice
//var numbers = [2, 10, 15, 25, 100, 46, 99]
//var slice = numbers.drop(while: { $0 < 12})
//var slice2 = numbers.prefix(4)
//var slice3 = numbers.prefix(upTo: 4)
//var slice4 = numbers.prefix(through: 4)
//var slice5 = numbers.prefix (while: {$0 < 12})
//
//var slice6 = numbers.suffix(5)
//var slice7 = numbers.suffix(from: 5)
//
//var slice8 = numbers[..<5]
//numbers.append(333)
////var numbers2: [Int] = slice
//print(slice)
//slice.append(555)
//print(numbers)
//print(slice)

//========数组的重拍操作
//1.shuffle 随机化
//var array = [Int](1...8)
//var array2 = array.shuffled()
//
//print(array)
//print(array2)

//2.逆序
//var array2 = array.reversed()
//print(array)
//print(array2)
//for i in array2{
//    print(i)
//}


//3.数组的分组partition
//var numbers = [10, 2, 25, 30, 46, 57, 101, 30, 70]
//let index = numbers.partition(by: { $0 > 30})
//print(index)
//let p1 = numbers[..<index]
//let p2 = numbers[index...]
//print(p1)
//print(p2)
//print(numbers)

//4.排序 sort
//var numbers = [10, 2, 25, 30, 46, 57, 101, 30, 70]
//var numbers2 = numbers.sorted()
//print(numbers)
//print(numbers2)

//swapAt
//var numbers = [10, 2, 25, 30, 46, 57, 101, 30, 70]
//numbers.swapAt(numbers.startIndex, numbers.endIndex-1)
//print(numbers)


//=======字符串数组拼接
//var array = ["Hello", "world"]
//print(array.joined())
//print(array.joined(separator: ","))

//let ranges = [0...3, 5...7, 15...16]
//for range in ranges {
//    print(range)
//}

//for i in ranges.joined(){
//    print(i)
//}

//let nestedArray = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//
//let result = nestedArray.joined(separator: [-1, -2])
//print(Array(result))

//let errors = [(1, "error1"), (2, "error2")]
//print(errors)

//======用数组实现栈和队列
//struct Stack<T> {
//    private var elements = [T]()
//    var count: Int {
//        return elements.count
//    }
//
//    var isEmpty: Bool {
//        return elements.isEmpty
//    }
//
//    mutating func push(_ element: T){
//        elements.append(element)
//    }
//
//    mutating func pop() -> T? {
//        return elements.popLast()
//    }
//}
//
//var stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(5)
//
//print(stack.count)
//print(stack.pop() ?? 0)
//print(stack.count)

//struct Queue<T>{
//    private var elements = [T]()
//
//    var count: Int {
//        return elements.count
//    }
//
//    var isEmpty: Bool {
//        return elements.isEmpty
//    }
//
//    mutating func enqueue(_ element: T) {
//        elements.append(element)
//    }
//
//    mutating func dequeue() -> T? {
//        return isEmpty ? nil : elements.removeFirst()
//    }
//}
//
//var queue = Queue<Int>()
//queue.enqueue(5)
//queue.enqueue(7)
//queue.enqueue(8)
//
//print(queue.count)
//print(queue.dequeue() ?? 0)
//print(queue.count)
//
//let course: Set<String> = ["Math", "English", "History"]
//print(course)
//
//for c in course.sorted() {
//    print(c)
//}

//var chars = Set<Character>()
//chars.insert("a")
//print(chars)

//struct Person {
//    var name: String
//    var age: Int
//}
//
//extension Person : Hashable {
//    func hash(into hasher : inout Hasher)  {
//        hasher.combine(name)
//    }
//}
//
//extension Person : Equatable {
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.name == rhs.name
//    }
//}
//
//var personSet: Set<Person> = [Person(name: "zhangsan", age: 20), Person(name: "lisi", age: 25)]
//
//personSet.update(with: Person(name: "zhangsan", age: 35))
//personSet.update(with: Person(name: "wangwu", age: 15))
//
//
//let person = personSet.removeFirst()
//print(person)
//print(personSet)
//
//print(personSet.filter({ $0.age > 20})

//========Set计算和判断

//let a : Set<Character> = ["A" , "B" , "C"]
//let b : Set<Character> = ["B" , "E" , "F", "G"]
//print(a.intersection(b))
//print(a.union(b))
//print(b.symmetricDifference(a))
//print(a.subtracting(b))
//print(b.subtracting(a))

//let a : Set<Character> = ["A" , "B" , "C"]
//let b : Set<Character> = ["A" ]
////print(a.isSubset(of: b))
////print(a.isStrictSubset(of: b))
//print(a.isDisjoint(with: b))


//=========实现自己集合的算法

//func getSubsets<T>(_ set: Set<T>) -> Array<Set<T>>{
//    let count = 1 << set.count
//    let elements = Array(set)
//    var subsets = [Set<T>]()
//
//    for i in 0..<count {
//        var subset = Set<T>()
//        for j in 0..<elements.count {
//            if ((i >> j) & 1) == 1 {
//                subset.insert(elements[j])
//            }
//        }
//        subsets.append(subset)
//    }
//    return subsets
//}

//let set: Set = ["A", "B", "C"]
//let subsets = getSubsets(set)
//
//for subset in subsets {
//    print(subset)
//}

//递归方法获得子集
//func getSubsets2<T>(_ set: Set<T>) -> Array<Set<T>> {
//    let elements = Array(set)
//    return getSubsets3(elements, index: elements.count - 1, count: elements.count)
//}
//
//func getSubsets3<T>(_ elements: Array<T>, index: Int, count: Int)-> Array<Set<T>>  {
//    var subsets = Array<Set<T>>()
//    if index == 0 {
//        subsets.append(Set<T>())
//        var subset = Set<T>()
//        subset.insert(elements[0])
//        subsets.append(subset)
//        return subsets
//    }
//
//    subsets = getSubsets3(elements, index: index - 1, count: count)
//    for subset in subsets {
//        var subsetWithCurrent = Set(subset)
//        subsetWithCurrent.insert(elements[index])
//        subsets.append(subsetWithCurrent)
//    }
//    return subsets
//
//}
//
//let set: Set = ["A", "B", "C", "D"]
//let subsets = getSubsets2(set)
//
//for subset in subsets {
//    print(subset)
//}

//===========字典的常用操作
//var personDict = ["zhangsan": 18, "lisi": 19, "wangwu": 20]
//personDict["zhangsan"] = nil
//print(personDict)

//struct Person {
//    var name: String
//    var age: Int
//}
//
//extension Person : Hashable {
//    func hash(into hasher : inout Hasher)  {
//        hasher.combine(name)
//    }
//}
//
//extension Person : Equatable {
//    static func == (lhs: Person, rhs: Person) -> Bool {
//        return lhs.name == rhs.name
//    }
//}
//
//var personDict = [Person(name: "zhangsan", age: 10):3000, Person(name: "lisi", age: 25):8000]
//
//print(personDict)
//personDict.updateValue(5000, forKey: Person(name: "zhangsan", age: 21))

var dict = ["a" : 1, "b": 2]
//print(dict.merge(["a": 2, "c": 5], uniquingKeysWith: {(current , _) -> Int in
//    current
//}))
//print(dict)

//print(dict.merge(["a": 10, "d": 11], uniquingKeysWith: {(_ , new) -> Int in
//    new
//}))
//print(dict)

let index = dict.firstIndex{(_, value) -> Bool in
    value == 1
}
print(index)

dict["c"] = 6
//dict["d"] = 6
//dict["e"] = 6
//dict["f"] = 6
//dict["g"] = 6

if let i = index  {
    print(dict[i].value)
}

let kvs: KeyValuePairs = ["a": 1, "b": 2, "c": 3]
print(kvs)













