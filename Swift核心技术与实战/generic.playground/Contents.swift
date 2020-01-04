import UIKit

//var str = "Hello, playground"
//
//func firstIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//
//let names = ["zhangsan","lisi","wangwu"]
//print(firstIndex(of: "lisi", in: names))
//
//let nums = [3, 5, 7]
//print(firstIndex(of: 7, in: nums))
//
protocol Container {        //协议只能用关联类型，不能用泛型
    associatedtype ItemType

    mutating func append(_ item: ItemType)
    var count: Int { get }
    subscript(i: Int) -> ItemType { get }
    
    associatedtype Iterator: IteratorProtocol where Iterator.Element == ItemType
    func makeIterator() -> Iterator

}

protocol SuffixableContainer: Container {
    associatedtype Suffix: SuffixableContainer where Suffix.ItemType == ItemType
}

struct IntStack: Container {
    var items = [Int]()

    typealias ItemType = Int

    mutating func append(_ item: Int) {
        items.append(item)
    }

    var count: Int {
        return items.count
    }

    subscript(i: Int) -> Int {
        return items[i]
    }

}
//
//var intStack = IntStack()
//intStack.append(1)
//intStack.append(2)
//print(intStack.count)
//print(intStack[0])
//
//


func allItemsMatch<C1: Container, C2: Container>(container: C1, anotherContainer: C2)-> Bool where C1.ItemType == C2.ItemType, C1.ItemType:Equatable{
    if container.count != anotherContainer {
        return false
    }
    
    for i in 0..<container.count {
        if container[i] != anotherContainer{
            return false
        }
    }
    
}

