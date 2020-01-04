import UIKit

var str = "Hello, playground"

protocol Named {
    var name: String { get }
    
}

protocol Aged {
    var age: Int { get }
}

struct Person: Named, Aged {
    var name: String
    var age: Int
}

let p = Person(name: "zhangsan", age: 20)

func wish(to: Named & Aged){
    print("name \(to.name) age \(to.age)")
}

wish(to: p)

protocol TextRepresentable {
    var desc: String { get }
}

extension Person: TextRepresentable {
    var desc: String {
        return "name \(name) age \(age)"
    }
}
print(p.desc)

extension Array: TextRepresentable where Element: TextRepresentable {
    var desc: String {
        let itemDesc = self.map{ $0.desc }
        return itemDesc.joined(separator: ",")
    }
}

let array = [Person(name: "zhangsan", age: 20), Person(name: "lisi", age: 30)]
print(array.desc)


